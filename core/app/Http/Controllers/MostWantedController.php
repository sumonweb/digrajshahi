<?php

namespace App\Http\Controllers;

use App\MostWanted;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MostWantedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if (Auth::user()->hasRole('admin') || Auth::user()->hasRole('super-admin')){
            $mostWanted = MostWanted::orderBy('id', 'desc')->paginate(30);
        } else{
            $user_id = Auth::user()->id;
            $mostWanted = MostWanted::orderBy('id', 'desc')->where('created_by', $user_id)->paginate(30);
        }
        return view('admin.mostwanted.index', compact('mostWanted'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.mostwanted.create');
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
            'name' => 'required'
        ]);

        $input = $request->all();
        if ($photo = $request->file('photo')) {
            $name = time() . $photo->getClientOriginalName();
            $destination = 'assets/uploads/mostwanted/';
            $photo->move($destination, $name);
            $input['photo'] = $name;
        }
        $input['created_by'] = Auth::user()->id;
        MostWanted::create($input);
        $request->session()->flash('alert-success', 'Most wanted person added successfully');
        return redirect('admin/mostWanted');
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
        $wanted = MostWanted::find($id);
        return view('admin.mostwanted.show', compact('wanted'));
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
        $wanted = MostWanted::find($id);
        return view('admin.mostwanted.edit', compact('wanted'));
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
            'name' => 'required'
        ]);

        $wanted = MostWanted::find($id);

        $input = $request->all();
        if ($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $name = time() . $photo->getClientOriginalName();
            $destination = 'assets/uploads/mostwanted/';
            $photo->move($destination, $name);
            $input['photo'] = $name;
        } else{
            $input['photo'] = $wanted->photo;
        }

        $wanted->update($input);
        $request->session()->flash('alert-success', 'Updated successfully');
        return redirect('admin/mostWanted');
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
        $wanted = MostWanted::find($id);
        $wanted->delete();
        session()->flash('alert-success', 'Deleted successfully');
        return redirect('admin/mostWanted');
    }
}
