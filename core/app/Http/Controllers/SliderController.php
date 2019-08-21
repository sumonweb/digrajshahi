<?php

namespace App\Http\Controllers;

use App\Slider;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $sliders = Slider::orderBy('id', 'desc')->paginate(30);
        return view('admin.slider.index', compact('sliders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.slider.create');
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
            'slider_image' => 'required | max:5000',
            'status' => 'required'
        ]);

        $input = $request->all();
        if($slider_image = $request->file('slider_image')){
            $name = time() . $slider_image->getClientOriginalName();
            $destination = 'assets/uploads/homeSlider/';
            $slider_image->move($destination, $name);
            $input['slider_image'] =  $name;
        }
        Slider::create($input);
        $request->session()->flash('alert-success', 'Slider has been created successfully!');
        return redirect('admin/slider');
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
        $slider = Slider::find($id);
        return view('admin.slider.edit', compact('slider'));
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
            'slider_image' => 'max:51200000',
            'status' => 'required'
        ]);

        $input = $request->all();
        if($slider_image = $request->file('slider_image')){
            $name = time() . $slider_image->getClientOriginalName();
            $destination = 'assets/uploads/homeSlider/';
            $slider_image->move($destination, $name);
            $input['slider_image'] = $name;
        }
        $slider = Slider::find($id);
        $slider->update($input);
        $request->session()->flash('alert-success', 'Slider has been updated successfully!');
        return redirect('admin/slider');
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
        $slider = Slider::find($id);
        //unlink('assets/uploads/homeSlider/' . $slider->slider_image);
        $slider->delete();
        session()->flash('alert-success', 'Slider has been deleted successfully!');
        return redirect('admin/slider');
    }
}
