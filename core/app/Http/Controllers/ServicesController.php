<?php

namespace App\Http\Controllers;

use App\Service;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $services = Service::orderBy('id', 'desc')->where('status', 1)->paginate(30);
        return view('admin.services.index', compact('services'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.services.create');
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
            'service_name' => 'required',
            'service_image' => 'required | max:500',
            'service_icon' => 'required',
            'description' => 'required'
        ]);

        //return $request->all();
        $input = $request->all();
        if($service_image = $request->file('service_image')){
            $name = time() . $service_image->getClientOriginalName();
            $destination = 'assets/uploads/services/';
            $service_image->move($destination, $name);
            $input['service_image'] = $name;
        }

        $input['description'] = trim($request->description, '<p><br></p>');
        Service::create($input);
        $request->session()->flash('alert-success', 'Service has been created successfully');
        return redirect('admin/services');
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
        $service = Service::find($id);
        return view('admin.services.show', compact('service'));
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
        $service = Service::find($id);
        return view('admin.services.edit', compact('service'));
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
        //return $request->all();
        $this->validate($request, [
            'service_name' => 'required',
            'service_image' => 'max:500',
            'service_icon' => 'required',
            'description' => 'required'
        ]);

        $service = Service::find($id);
        $input = $request->all();
        if ($request->hasFile('service_image')){
            $service_image = $request->file('service_image');
            $name = time() . $service_image->getClientOriginalName();
            $destination = 'assets/uploads/services';
            $service_image->move($destination, $name);
            $input['service_image'] = $name;
        } else{
            $input['service_image'] = $service->service_image;
        }

        $input['description'] = trim($request->description, '<p><br></p>');

        $service->update($input);
        $request->session()->flash('alert-success', 'Service details has been updated successfully');
        return redirect('admin/services');
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
        $service = Service::find($id);
        $service->delete();
        session()->flash('alert-success', 'Service has been deleted successfully');
        return redirect('admin/services');
    }
}
