<?php

namespace App\Http\Controllers;

use App\District;
use App\JurisdictionContacts;
use App\Jurisdictionlevel;
use App\Thana;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JurisdictionContactsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if (Auth::user()->hasRole('Admin') || Auth::user()->hasRole('super-admin')){
            $jurisdictionContacts = JurisdictionContacts::orderBy('id', 'desc')->paginate(30);
        } else{
            $user_id = Auth::user()->id;
            $jurisdictionContacts = JurisdictionContacts::orderBy('id', 'desc')->where('user_id', $user_id)->paginate(30);
        }
        return view('admin.jurisdictionContacts.index', compact('jurisdictionContacts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.jurisdictionContacts.create', compact('jurisdictionlevels', 'districts', 'thanas'));
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
            'designation' => 'required'
        ]);

        $input = $request->all();
        $input['jurisdiction_level_id'] = Auth::user()->jurisdiction_level_id;
        if (!empty(Auth::user()->district_id)) {
            $input['district_id'] = Auth::user()->district_id;
        }
        if (!empty(Auth::user()->thana_id)) {
            $input['thana_id'] = Auth::user()->thana_id;
        }
        $input['user_id'] = Auth::user()->id;
        JurisdictionContacts::create($input);
        $request->session()->flash('alert-success', 'New contact details created successfully');
        return redirect('admin/jurisdictionContacts');
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
        $contacts = JurisdictionContacts::find($id);
        return view('admin.jurisdictionContacts.show', compact('contacts'));
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
        $jurisdictioncontacts = JurisdictionContacts::find($id);
        return view('admin.jurisdictionContacts.edit', compact('jurisdictionlevels', 'districts', 'thanas', 'jurisdictioncontacts'));
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
            'designation' => 'required'
        ]);

        $jurisdictioncontacts = JurisdictionContacts::find($id);
        $jurisdictioncontacts->update($request->all());
        $request->session()->flash('alert-success', 'Contact details has been updated successfully');
        return redirect('admin/jurisdictionContacts');
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
        $jurisdictionContacts = JurisdictionContacts::find($id);
        $jurisdictionContacts->delete();
        session()->flash('alert-success', 'Contact has been deleted successfully');
        return redirect('admin/jurisdictionContacts');
    }
}
