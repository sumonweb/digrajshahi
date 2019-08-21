<?php

namespace App\Http\Controllers;

use App\Tender;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TenderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tenders = Tender::orderBy('id', 'desc')->paginate(30);
        return view('admin.tender.index', compact('tenders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.tender.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request->all();
        $this->validate($request, [
            'tender_title' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
            'tender_file' => 'required | max:2048'
        ]);

        $input = $request->all();
        if($tender_file = $request->file('tender_file')){
            $name = time() . $tender_file->getClientOriginalName();
            $destination = 'assets/uploads/tenders/';
            $tender_file->move($destination, $name);
            $input['tender_file'] = $name;
        }

        $input['start_date'] = date('Y-m-d', strtotime($request->start_date));
        $input['end_date'] = date('Y-m-d', strtotime($request->end_date));
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
        $input['created_by'] = Auth::user()->id;
        $input['creator_ip'] = request()->ip();

        Tender::create($input);
        $request->session()->flash('alert-success', 'Tender created successfully');
        return redirect('admin/tender');
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
        $tender = Tender::find($id);
        return view('admin.tender.show', compact('tender'));
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
        $tender = Tender::find($id);
        return view('admin.tender.edit', compact('tender'));
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
            'tender_title' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
        ]);

        $tender = Tender::find($id);
        $input = $request->all();
        if($request->hasFile('tender_file')){
            $tender_file = $request->file('tender_file');
            $name = time() . $tender_file->getClientOriginalName();
            $destination = 'assets/uploads/tenders/';
            $tender_file->move($destination, $name);
            $input['tender_file'] = $name;
        } else{
            $input['tender_file'] = $tender->tender_file;
        }

        $input['start_date'] = date('Y-m-d', strtotime($request->start_date));
        $input['end_date'] = date('Y-m-d', strtotime($request->end_date));

        $tender->update($input);
        $request->session()->flash('alert-success', 'Tender updated successfully');
        return redirect('admin/tender');
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
        $tender = Tender::find($id);
        $tender->delete();
        session()->flash('alert-success', 'Tender deleted successfully');
        return redirect('admin/tender');
    }

    public function publish($id)
    {
        $tender = Tender::find($id);
        $tender->update([
            'approved_by' => Auth::user()->id,
            'approval_date' => date('Y-m-d h:i'),
            'approving_ip' => request()->ip(),
            'status' => 1
        ]);
        session()->flash('alert-success', 'Tender published successfully');
        return redirect('admin/tender');
    }

    public function unpublish($id)
    {
        $tender = Tender::find($id);
        $tender->update([
            'approved_by' => Auth::user()->id,
            'approval_date' => date('Y-m-d'),
            'approving_ip' => request()->ip(),
            'status' => 0
        ]);
        session()->flash('alert-success', 'Tender unpublished successfully');
        return redirect('admin/tender');
    }
}
