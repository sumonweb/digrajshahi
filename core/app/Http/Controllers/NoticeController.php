<?php

namespace App\Http\Controllers;

use App\Notice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $notices = Notice::orderBy('id', 'desc')->paginate(30);
        return view('admin.notice.index', compact('notices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.notice.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request, [
            'notice_type' => 'required',
            'notice_title' => 'required',
            'notice_file' => 'max:1024'
        ]);

        $input = $request->all();
        if ($notice_file = $request->file('notice_file')){
            $name = time() . $notice_file->getClientOriginalName();
            $destination = 'assets/uploads/notices/';
            $notice_file->move($destination, $name);
            $input['notice_file'] = $name;
        }

        $input['notice'] = trim($request->notice, '<p><br></p>');
        $input['created_by'] = Auth::user()->id;
        $input['jurisdiction_level_id'] = Auth::user()->jurisdiction_level_id;
        if (!empty(Auth::user()->district_id)){
            $input['district_id'] = Auth::user()->district_id;
        } else{
            $input = $request->except('district_id');
        }

        if (!empty(Auth::user()->thana_id)){
            $input['thana_id'] = Auth::user()->thana_id;
        } else{
            $input = $request->except('thana_id');
        }

        $input['creator_ip'] = request()->ip();

        Notice::create($input);
        $request->session()->flash('alert-success', 'Notice created successfully');
        return redirect('admin/notice');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $notice = Notice::find($id);
        return view('admin.notice.show', compact('notice'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $notice = Notice::find($id);
        return view('admin.notice.edit', compact('notice'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        //return $request->all();
        $this->validate($request, [
            'notice_title' => 'required',
            'notice_file' => 'max:1024'
        ]);

        $notice = Notice::find($id);
        $input = $request->all();
        if($request->hasFile('notice_file')){
            $notice_file = $request->file('notice_file');
            $name = time() . $notice_file->getClientOriginalName();
            $destination = 'assets/uploads/notices/';
            $notice_file->move($destination, $name);
            $input['notice_file'] = $name;
        } elseif (empty($notice->notice_file)){
            $input['notice_file'] = null;
        } else{
            $input['notice_file'] = $notice->notice_file;
        }

        $input['notice'] = trim($request->notice, '<p><br></p>');

        $notice->update($input);
        $request->session()->flash('alert-success', 'Notice updated successfully');
        return redirect('admin/notice');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $notice = Notice::find($id);
        $notice->delete();
        session()->flash('alert-success', 'Notice deleted successfully');
        return redirect('admin/notice');
    }

    public function publish($id)
    {
        $notice = Notice::find($id);
        $notice->update([
            'approved_by' => Auth::user()->id,
            'approval_date' => date('Y-m-d h:i'),
            'approving_ip' => request()->ip(),
            'status' => 1
        ]);
        session()->flash('alert-success', 'Notice published successfully');
        return redirect('admin/notice');
    }

    public function unpublish($id)
    {
        $notice = Notice::find($id);
        $notice->update([
            'approved_by' => Auth::user()->id,
            'approval_date' => date('Y-m-d'),
            'approving_ip' => request()->ip(),
            'status' => 0
        ]);
        session()->flash('alert-success', 'Notice unpublished successfully');
        return redirect('admin/notice');
    }
}
