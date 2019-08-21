<?php

namespace App\Http\Controllers;

use App\Settings;
use Hamcrest\Core\Set;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $settings = Settings::find(1);
        return view('admin.settings.settings', compact('settings'));
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
//        return $request->logo;
        //
        $this->validate($request, [
            'site_name' => 'required',
            'tagline' => 'required',
            'logo' => 'max:2048',
            'favicon' => 'max:1048',
            'cover_photo' => 'max:5120',
            'phone'=> 'required'
        ]);

        $settings = Settings::find(1);
        $input = $request->all();
        if($request->logo == null){
            $input = $request->except('logo');
        }
        if($request->favicon == null){
            $input = $request->except('favicon');
        }
        if($request->cover_photo == null){
            $input = $request->except('cover_photo');
        }
        if($logo = $request->file('logo')){
            $name = time() . $logo->getClientOriginalName();
            $destination = 'assets/uploads/';
            $logo->move($destination, $name);
            $input['logo'] = $name;
        }

        if($favicon = $request->file('favicon')){
            $name = time() . $favicon->getClientOriginalName();
            $destination = 'assets/uploads/';
            $favicon->move($destination, $name);
            $input['favicon'] = $name;
        }

        if($cover_photo = $request->file('cover_photo')){
            $name = time() . $cover_photo->getClientOriginalName();
            $destination = 'assets/uploads/';
            $cover_photo->move($destination, $name);
            $input['cover_photo'] = $name;
        }

        $settings->update($input);
        $request->session()->flash('alert-success', 'Settings has been updated successfully.');
        return redirect('admin/settings/1/edit');
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
