<?php

namespace App\Http\Controllers;

use App\Downloadable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DownloadableController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $downloadable = Downloadable::orderBy('id', 'desc')->paginate(30);
        return view('admin.downloadable.index', compact('downloadable'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.downloadable.create');
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
            'title' => 'required',
            'file' => 'required | max:3000'
        ]);

        $input = $request->all();
        if ($file = $request->file('file')) {
            $name = time() . $file->getClientOriginalName();
            $destination = 'assets/uploads/downloadcorner/';
            $file->move($destination, $name);
            $input['file'] = $name;
        }

        $input['created_by'] = Auth::user()->id;

        Downloadable::create($input);
        $request->session()->flash('alert-success', 'Downloadable item created successfully');
        return redirect('admin/downloadable');
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
        $downloadable = Downloadable::find($id);
        return view('admin.downloadable.edit', compact('downloadable'));
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
        $this->validate($request, [
            'title' => 'required'
        ]);

        $downloadable = Downloadable::find($id);
        $input = $request->all();
        if ($request->hasFile('file')) {
            $downloadable_file = $request->file('file');
            $name = time() . $downloadable_file->getClientOriginalName();
            $destination = 'assets/uploads/downloadcorner/';
            $downloadable_file->move($destination, $name);
            $input['file'] = $name;
        } else{
            $input['file'] = $downloadable->file;
        }

        $downloadable->update($input);
        $request->session()->flash('alert-success', 'Downloadable file has been updated');
        return redirect('admin/downloadable');
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
        $downloadable = Downloadable::find($id);
        $downloadable->delete();
        session()->flash('alert-success', 'Downloadable item deleted successfully');
        return redirect('admin/downloadable');
    }
}
