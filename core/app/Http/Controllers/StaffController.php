<?php

namespace App\Http\Controllers;

use App\Staff;
use Illuminate\Http\Request;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $all_staff = Staff::orderBy('id', 'desc')->paginate(40);
        return view('admin.staff.index', compact('all_staff'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.staff.create');
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
            'staff_name' => 'required',
            'photo' => 'required | max:500',
            'bp_no' => 'required',
            'designation' => 'required',
            'email' => 'unique:staff',
            'mobile' => 'required | unique:staff',
            'phone' => 'unique:staff'
        ]);

        $input = $request->all();
        if ($photo = $request->file('photo')) {
            $name = time() . $photo->getClientOriginalName();
            $destination = 'assets/uploads/staff/';
            $photo->move($destination, $name);
            $input['photo'] = $name;
        }

        Staff::create($input);
        $request->session()->flash('alert-success', 'Staff has been created successfully');
        return redirect('admin/staff');
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
        $staff = Staff::find($id);
        return view('admin.staff.show', compact('staff'));
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
        $staff = Staff::find($id);
        return view('admin.staff.edit', compact('staff'));
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
            'staff_name' => 'required',
            'photo' => 'max:500',
            'bp_no' => 'required',
            'designation' => 'required',
            'mobile' => 'required',
        ]);

        $input = $request->all();
        $staff = Staff::find($id);
        if ($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $name = time() . $photo->getClientOriginalName();
            $destination = 'assets/uploads/staff/';
            $photo->move($destination, $name);
            $input['photo'] = $name;
        } else{
            $input['photo'] = $staff->photo;
        }

        $staff->update($input);
        $request->session()->flash('alert-success', 'Staff has been updated successfully');
        return redirect('admin/staff');

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
        $staff = Staff::find($id);
        $staff->delete();
        session()->flash('alert-success', 'The staff has been deleted successfully');
        return redirect('admin/staff');
    }
}
