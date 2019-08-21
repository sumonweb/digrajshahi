<?php

namespace App\Http\Controllers;

use App\District;
use Illuminate\Http\Request;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $districts = District::all();
        return view('admin.district.index', compact('districts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        return view('admin.district.create');
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
            'name' => 'required | unique:districts',
            'name_english' => 'required',
            'cover_image' => 'required | max:2048',
            'about_district' => 'required',
            'sp_name' => 'required',
            'sp_photo' => 'required | max:500',
            'message' => 'required'
        ]);

        $input = $request->all();
        if ($cover_image = $request->file('cover_image')) {
            $name = time() . $cover_image->getClientOriginalName();
            $destination = 'assets/uploads/districtCoverImage/';
            $cover_image->move($destination, $name);
            $input['cover_image'] = $name;
        }

        if ($sp_photo = $request->file('sp_photo')) {
            $name = time() . $sp_photo->getClientOriginalName();
            $destination = 'assets/uploads/sp/';
            $sp_photo->move($destination, $name);
            $input['sp_photo'] = $name;
        }

        //$input['about_district'] = strip_tags($request->about_district);
        $input['message'] = trim($request->message, '<p><br></p>');

        District::create($input);
        $request->session()->flash('alert-success', 'District has been created successfully');
        return redirect('admin/district');
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
        $district = District::find($id);
        return view('admin.district.show', compact('district'));
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
        $district = District::find($id);
        return view('admin.district.edit', compact('district'));
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
        //return $request->all();
        //
        $this->validate($request, [
            'name' => 'required',
            'name_english' => 'required',
            'cover_image' => 'max:2048',
            'about_district' => 'required',
            'sp_name' => 'required',
            'message' => 'required'
        ]);

        $district = District::findOrFail($id);
        $input = $request->all();
        if ($request->hasFile('cover_image')) {
            $cover_image = $request->file('cover_image');
            $name = time() . $cover_image->getClientOriginalName();
            $destination = 'assets/uploads/districtCoverImage/';
            $cover_image->move($destination, $name);
            $input['cover_image'] = $name;
        }
        else{
            $input['cover_image'] = $district->cover_image;
        }

        if ($request->hasFile('sp_photo')) {
            $sp_photo = $request->file('sp_photo');
            $name = time() . $sp_photo->getClientOriginalName();
            $destination = 'assets/uploads/sp/';
            $sp_photo->move($destination, $name);
            $input['sp_photo'] = $name;
        }
        else{
            $input['sp_photo'] = $district->sp_photo;
        }

        //$input['about_district'] = strip_tags($request->about_district);
        $input['message'] = trim($request->message, '<p><br></p>');

        $district->update($input);
        $request->session()->flash('alert-success', 'District name has been updated successfully');
        return redirect('admin/district');
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
        $district = District::findOrFail($id);
        $district->delete();
        session()->flash('alert-success', 'District has been deleted successfully');
        return redirect('admin/district');
    }
}
