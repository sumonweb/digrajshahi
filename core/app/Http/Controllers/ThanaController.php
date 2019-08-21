<?php

namespace App\Http\Controllers;

use App\District;
use App\Thana;
use Illuminate\Http\Request;

class ThanaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $thanas = Thana::paginate(20);
        $districts = District::all();
        return view('admin.thana.index', compact('thanas'));
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
        return view('admin.thana.create', compact('districts'));
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
            'name' => 'required | unique:thanas',
            'district_id' => 'required',
            'thana_image' => 'required | mimes:jpeg,jpg,png | max:1000'
            //'map' => 'required'
        ]);

        $input = $request->all();
        if ($thana_image = $request->file('thana_image')){
            $name = time().$thana_image->getClientOriginalName();
            $destination = 'assets/uploads/thana/';
            $thana_image->move($destination, $name);
            $input['thana_image'] = $name;
        }

        //$input['about_thana'] = strip_tags($request->about_thana);

        Thana::create($input);
        $request->session()->flash('alert-success', 'Thana has been created successfully');
        return redirect('admin/thana');
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
        $thana = Thana::find($id);
        return view('admin.thana.show', compact('thana'));
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
        $thana = Thana::findOrFail($id);
        $districts = District::all();
        return view('admin.thana.edit', compact('thana', 'districts'));
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
            'name' => 'required',
            'district_id' => 'required'
        ]);

        $input = $request->all();
        $thana = Thana::findOrFail($id);

        if ($request->hasFile('thana_image')) {
            $thana_image = $request->file('thana_image');
            $name = $thana_image->getClientOriginalName();
            $destination = 'assets/uploads/thana/';
            $thana_image->move($destination, $name);
            $input['thana_image'] = $name;
        }
        else {
            $input['thana_image'] = $thana->thana_image;
        }

        // $input['about_thana'] = strip_tags($request->about_thana);

        $thana->update($input);
        $request->session()->flash('alert-success', 'Thana details has been updated successfully');
        return redirect('admin/thana');
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
        $thana = Thana::findOrFail($id);
        $thana->delete();
        session()->flash('alert-success', 'Thana has been deleted successfully');
        return redirect('admin/thana');
    }
}
