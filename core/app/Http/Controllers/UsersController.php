<?php

namespace App\Http\Controllers;

use App\District;
use App\Jurisdictionlevel;
use App\Permission;
use App\Role;
use App\Thana;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $users = User::where('status', 1)->paginate(30);
        $deactivatedUsers = User::where('status', 0)->paginate(30);
        $deletedUsers = User::onlyTrashed()->get();
        return view('admin.users.index', compact('users', 'deactivatedUsers', 'deletedUsers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $roles = Role::all()->where('status', 1);
        $permissions = Permission::all()->where('status', 1);
        $districts = District::all();
        $thanas = Thana::all();
        $jurisdictionlevels = Jurisdictionlevel::all();
        return view('admin.users.create', compact('roles', 'permissions', 'districts', 'thanas', 'jurisdictionlevels'));
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
            'name' => 'required',
            'email' => 'required | unique:users',
            'password' => 'required',
            'phone' => 'required',
            'status' => 'required',
            'jurisdiction_level_id' => 'required',
            'photo' => 'max:2048'
        ]);

        $input = $request->all();
        if($photo = $request->file('photo')){
            $name = time() . $photo->getClientOriginalName();
            $destination = 'assets/uploads/users/';
            $photo->move($destination, $name);
            $input['photo'] = $name;
        }

        if($request->district_id == 'Please select'){
            $input = $request->except('district_id');
        }

        if($request->thana_id == 'Please select'){
            $input = $request->except('thana_id');
        }

        $input['password'] = bcrypt($request->password);

        $user = User::create($input);

        $user->roles()->attach($request->role);
//        $role = Role::find($request->role);
//
//        $role->attachPermissions(array($request->permission));
        $request->session()->flash('alert-success', 'User has been created successfully');
        return redirect('admin/users');
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
        $user = User::find($id);
        return view('admin.users.show', compact('user'));
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
        $user = User::find($id);
        $roles = Role::all()->where('status', 1);
        $permissions = Permission::all()->where('status', 1);
        $districts = District::all();
        $thanas = Thana::all();
        $jurisdictionlevels = Jurisdictionlevel::all();
        return view('admin.users.edit', compact('user', 'roles', 'permissions', 'districts', 'thanas', 'jurisdictionlevels'));
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
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'status' => 'required',
            'jurisdiction_level_id' => 'required',
            'photo' => 'max:2048',
            'role' => 'required',
        ]);

        $input = $request->all();
        $user = User::find($id);

        if(!empty($request->password)){
            $input['password'] = bcrypt($request->password);
        } else{
            $input['password'] = $user->password;
        }

//        if($request->district_id == 'Please select'){
//            $input = $request->except('district_id');
//        }
//
//        if($request->thana_id == 'Please select'){
//            $input = $request->except('thana_id');
//        }

        if ($photo = $request->file('photo')){
            $name = time() . $photo->getClientOriginalName();
            $destination = 'assets/uploads/users/';
            $photo->move($destination, $name);
            $input['photo'] = $name;
        }

        $user->update($input);
        if ($request->role) {
            $user->roles()->sync($request->role);
            $role = Role::find($request->role);
            //$role->perms()->sync($request->permission);
        }
        $request->session()->flash('alert-success', 'User has been updated successfully');
        if (Auth::user()->hasRole('admin') || Auth::user()->hasRole('super-admin')){
            return redirect('admin/users');
        } else{
            return back();
        }


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
        $user = User::find($id);
        $user->delete();
        session()->flash('alert-success', 'User has been deleted successfully');
        return redirect('admin/users');
    }
}
