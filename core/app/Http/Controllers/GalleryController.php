<?php

namespace App\Http\Controllers;

use App\Gallery;
use App\GalleryImages;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $galleries = Gallery::orderBy('id', 'desc')->paginate(30);
        return view('admin.gallery.index', compact('galleries'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.gallery.create');
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
            'gallery_name' => 'required',
            'cover_img' => 'required | max:1024'
        ]);

        $input = $request->all();
        if ($cover_img = $request->file('cover_img')) {
            $cover_image_name = time() . $cover_img->getClientOriginalName();
            $destination = 'assets/uploads/gallery/';
            $cover_img->move($destination, $cover_image_name);
            $input['cover_img'] = $cover_image_name;
        }
        $input['description'] = trim($request->description, '<p><br></p>');
        $input['created_by'] = Auth::user()->id;

        $gallery = Gallery::create($input);

        if ($request->hasFile('extra_images')) {
            $images = $request->file('extra_images');

            foreach ($images as $image) {
                $name = time() . $image->getClientOriginalName();
                $destination = 'assets/uploads/gallery/';
                $image->move($destination, $name);
                $gallery_image['gallery_id'] = $gallery->id;
                $gallery_image['image_path'] = $name;
                GalleryImages::create($gallery_image);
            }
        }

        $request->session()->flash('alert-success', 'Gallery has been created successfully');
        return redirect('admin/gallery');
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
        $gallery = Gallery::find($id);
        return view('admin.gallery.show', compact('gallery'));
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
        $gallery = Gallery::find($id);
        return view('admin.gallery.edit', compact('gallery'));
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
            'gallery_name' => 'required',
            'cover_img' => 'max:1024'
        ]);

        $gallery = Gallery::find($id);
        $input = $request->all();
        if ($request->hasFile('cover_img')){
            $cover_img = $request->file('cover_img');
            $cover_img_name = time() . $cover_img->getClientOriginalName();
            $destination = 'assets/uploads/gallery/';
            $cover_img->move($destination, $cover_img_name);
            $input['cover_img'] = $cover_img_name;
        } else{
            $input['cover_img'] = $gallery->cover_img;
        }

        $gallery->update($input);

        if ($request->hasFile('extra_images')) {

            $images = $request->file('extra_images');

            foreach ($images as $image) {
                $name = time() . $image->getClientOriginalName();
                $destination = 'assets/uploads/gallery/';
                $image->move($destination, $name);
                $gallery_image['gallery_id'] = $gallery->id;
                $gallery_image['image_path'] = $name;
                GalleryImages::create($gallery_image);
            }
        }

        $request->session()->flash('alert-success', 'Gallery has been updated successfully');
        return redirect('admin/gallery');
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
        $gallery = Gallery::find($id);
        foreach ($gallery->galleryimages as $image) {
            $image->delete();
        }
        $gallery->delete();
        session()->flash('alert-success', 'Gallery has been deleted successfully');
        return redirect('admin/gallery');
    }

    public function destroyImage ($id) {
        $image = GalleryImages::find($id);
        unlink('assets/uploads/gallery/'.$image->image_path);
        $image->delete();
        return back();
    }
}
