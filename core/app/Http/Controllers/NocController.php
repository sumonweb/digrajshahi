<?php

namespace App\Http\Controllers;

use App\Noc;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NocController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $nocs = Noc::orderBy('id', 'desc')->paginate(50);
        return view('admin.noc.index', compact('nocs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.noc.create');
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
            'noc_name' => 'required',
            'noc_img' => 'required | max:512'
        ]);

        $input = $request->all();
        if($noc_img = $request->file('noc_img')){
            $name = time() . $noc_img->getClientOriginalName();
            $destination = 'assets/uploads/noc/';
            $noc_img->move($destination, $name);
            $input['noc_img'] = $name;
        }

        $input['uploaded_by'] = Auth::user()->id;
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

        Noc::create($input);
        $request->session()->flash('alert-success', 'NOC created successfully');
        return redirect('admin/noc');
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
        $noc = Noc::find($id);
        return view('admin.noc.show', compact('noc'));
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
        $noc = Noc::find($id);
        $noc->delete();
        session()->flash('alert-success', 'NOC has been deleted successfully');
        return redirect('admin/noc');
    }
}
