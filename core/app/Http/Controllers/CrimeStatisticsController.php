<?php

namespace App\Http\Controllers;

use App\CrimeStatistics;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CrimeStatisticsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user_id = Auth::user()->id;
        $statistics = CrimeStatistics::orderBy('id', 'asc')->where('user_id', $user_id)->get();
        return view('admin.crime.index', compact('statistics'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.crime.create');
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
            'robbery'           => 'required',
            'murder'            => 'required',
            'speedy_trial'      => 'required',
            'riot'              => 'required',
            'women_child'       => 'required',
            'kidnapping'        => 'required',
            'police_assault'    => 'required',
            'burglary'          => 'required',
            'theft'             => 'required',
            'other'             => 'required',
            'total'             => 'required'
        ]);

        $input = $request->all();
        $input['user_id'] = Auth::user()->id;
        $input['district_id'] = Auth::user()->district_id;
        if (!empty(Auth::user()->thana_id)) {
            $input['thana_id'] = Auth::user()->thana_id;
        }

        CrimeStatistics::create($input);
        $request->session()->flash('alert-success', 'Crime statistics created successfully');
        return redirect('admin/crime-statistics');
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
        $statistics = CrimeStatistics::find($id);
        return view('admin.crime.edit', compact('statistics'));
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
            'robbery'           => 'required',
            'murder'            => 'required',
            'speedy_trial'      => 'required',
            'riot'              => 'required',
            'women_child'       => 'required',
            'kidnapping'        => 'required',
            'police_assault'    => 'required',
            'burglary'          => 'required',
            'theft'             => 'required',
            'other'             => 'required',
            'total'             => 'required'
        ]);

        $statistics = CrimeStatistics::find($id);
        $statistics->update($request->all());
        $request->session()->flash('alert-success', 'Crime statistics updated successfully');
        return redirect('admin/crime-statistics');
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
        $statistics = CrimeStatistics::find($id);
        $statistics->delete();
        session()->flash('alert-success', 'Crime statistics deleted successfully');
        return redirect('admin/crime-statistics');
    }
}
