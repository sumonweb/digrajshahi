<?php

namespace App\Http\Controllers;

use App\Links;
use Composer\Package\Link;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LinksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $links = Links::orderBy('links_order', 'asc')->paginate(30);
        return view('admin.links.index', compact('links'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.links.create');
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
            'logo' => 'max:500 | mimes:jpg,jpeg,png',
            'link' => 'required',
            'links_order' => 'required'
        ]);

        $input = $request->all();
        if ($logo = $request->file('logo')) {
            $name = time() . $logo->getClientOriginalName();
            $destination = 'assets/uploads/links/';
            $logo->move($destination, $name);
            $input['logo'] = $name;
        }
        $input['created_by'] = Auth::user()->id;
        Links::create($input);
        $request->session()->flash('alert-success', 'Useful link has been created successfully');
        return redirect('admin/links');
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
        $link = Links::find($id);
        return view('admin.links.edit', compact('link'));
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
            'title' => 'required',
            'logo' => 'max:500',
            'link' => 'required',
            'links_order' => 'required'
        ]);

        $link = Links::find($id);
        $input = $request->all();
        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');
            $name = time() . $logo->getClientOriginalName();
            $destination = 'assets/uploads/links/';
            $logo->move($destination, $name);
            $input['logo'] = $name;
        } else{
            $input['logo'] = $link->logo;
        }
        $link->update($input);
        $request->session()->flash('alert-success', 'Link has been updated successfully');
        return redirect('admin/links');
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
    }
}
