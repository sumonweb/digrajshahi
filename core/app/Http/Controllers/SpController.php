<?php

namespace App\Http\Controllers;

use App\District;
use App\Sp;
use Illuminate\Http\Request;

class SpController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $sps = Sp::orderBy('created_at', 'desc')->paginate(30);
        return view('admin.sp.index', compact('sps'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $districts = District::all();
        return view('admin.sp.create', compact('districts'));
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
        //return $request->all();
        $this->validate($request, [
            'sp_name' => 'required',
            'district_id' => 'required',
            'period_from' => 'required',
            'photo' => 'max:1024'
        ]);

        $input = $request->all();
        if ($sp_photo = $request->file('photo')){
            $photo_name = time() . $sp_photo->getClientOriginalName();
            $destination = 'assets/uploads/sp/';
            $sp_photo->move($destination, $photo_name);
            $input['photo'] = $photo_name;
        }

        $input['period_from'] = date('Y-m-d', strtotime($request->period_from));
        $input['message'] = trim($request->message, '<p><br></p>');
        Sp::create($input);
        $request->session()->flash('alert-success', 'New SP details has been added successfully');
        return redirect('admin/sp');
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
        $sp = Sp::find($id);
        return view('admin.sp.show', compact('sp'));
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
        $sp = Sp::find($id);
        $districts = District::all();
        return view('admin.sp.edit', compact('sp', 'districts'));
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
            'sp_name' => 'required',
            'period_from' => 'required',
            'photo' => 'max:1024'
        ]);

        $sp = Sp::find($id);
        $input = $request->all();
        if ($request->hasFile('photo')){
            $sp_photo = $request->file('photo');
            $photo_name = time() . $sp_photo->getClientOriginalName();
            $destination = 'assets/uploads/sp/';
            $sp_photo->move($destination, $photo_name);
            $input['photo'] = $photo_name;
        } else{
            $input['photo'] = $sp->photo;
        }

        $input['period_from'] = date('Y-m-d', strtotime($request->period_from));
        if(!empty($request->period_to)){
            $input['period_to'] = date('Y-m-d', strtotime($request->period_to));
        }
        $input['message'] = trim($request->message, '<p><br></p>');

        $sp->update($input);

        $request->session()->flash('alert-success', 'Details has been updated successfully');
        return redirect('admin/sp');
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
        $sp = Sp::find($id);
        $sp->delete();
        session()->flash('alert-success', 'SP has been deleted successfully!');
        return redirect('admin/sp');
    }
}
