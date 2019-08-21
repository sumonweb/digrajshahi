<?php

namespace App\Http\Controllers;

use App\Dig;
use Illuminate\Http\Request;

class DigController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $digs = Dig::orderBy('id', 'desc')->paginate(20);
        return view('admin.dig.index', compact('digs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.dig.create');
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
            'dig_name' => 'required',
            'period_from' => 'required',
            'photo' => 'max:1024',
            'status' => 'required'
        ]);

        $input = $request->all();

        $digStatus = Dig::where('status', 1)->pluck('status')->toArray();
        if ($request->status == 1 && count($digStatus)) {
            $request->session()->flash('alert-danger', 'Before activating the New DIG please deactivate the previous DIG.');
            return redirect('admin/dig/create');
        }
        else{
        if ($dig_photo = $request->file('photo')){
            $photo_name = time() . $dig_photo->getClientOriginalName();
            $destination = 'assets/uploads/dig/';
            $dig_photo->move($destination, $photo_name);
            $input['photo'] = $photo_name;
        }

        $input['period_from'] = date('Y-m-d', strtotime($request->period_from));
        $input['message'] = trim($request->message, '<p><br></p>');

        Dig::create($input);
        $request->session()->flash('alert-success', 'New DIG details has been added successfully');
            return redirect('admin/dig');
        }
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
        $dig = Dig::find($id);
        return view('admin.dig.show', compact('dig'));
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
        $dig = Dig::find($id);
        return view('admin.dig.edit', compact('dig'));
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
            'dig_name' => 'required',
            'period_from' => 'required',
            'photo' => 'max:1024'
        ]);

        $dig = Dig::find($id);
        $input = $request->all();
        if ($request->hasFile('photo')){
            $dig_photo = $request->file('photo');
            $photo_name = time() . $dig_photo->getClientOriginalName();
            $destination = 'assets/uploads/dig/';
            $dig_photo->move($destination, $photo_name);
            $input['photo'] = $photo_name;
        } else{
            $input['photo'] = $dig->photo;
        }

        $input['period_from'] = date('Y-m-d', strtotime($request->period_from));
        if(!empty($request->period_to)){
            $input['period_to'] = date('Y-m-d', strtotime($request->period_to));
        }
        $input['message'] = trim($request->message, '<p><br></p>');

        $dig->update($input);

//        [
//            'dig_name' => $request->dig_name,
//            'period_from' => date('Y-m-d', strtotime($request->period_from)),
//            'period_to' => date('Y-m-d', strtotime($request->period_to)),
//            'photo' => isset($photo_name) ? $photo_name : '',
//            'message' => trim($request->message, '<p><br></p>')
//        ]

        $request->session()->flash('alert-success', 'Details has been updated successfully');
        return redirect('admin/dig');
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
