<?php

namespace App\Http\Controllers;

use App\Category;
use App\News;
use App\NewsImages;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use EasyBanglaDate;

class NewsController extends Controller
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
            $all_news = News::orderBy('id', 'desc')->paginate(30);
        } else{
        $user_id = Auth::user()->id;
        $all_news = News::orderBy('id', 'desc')->where('posted_by', $user_id)->paginate(30);
        }
        return view('admin.news.index', compact('all_news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories = Category::all()->where('status', 1);
        return view('admin.news.create', compact('categories'));
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
            'title' => 'required',
            'categories' => 'required',
            'cover_image' => 'required | mimes:jpeg,jpg,png | max:1000',
            'description' => 'required'
        ]);

        $input = $request->all();
        if ($cover_image = $request->file('cover_image')){
            $cover_image_name = time() . $cover_image->getClientOriginalName();
            $destination = 'assets/uploads/news/';
            $cover_image->move($destination, $cover_image_name);
            $input['cover_image'] = $cover_image_name;
        }

        $input['news_date'] = Carbon::parse($request->news_date)->format('Y-m-d H:i:s');
        $input['description'] = trim($request->description, '<p><br></p>');
        $input['posted_by'] = Auth::user()->id;
        $input['jurisdiction_level_id'] = Auth::user()->jurisdiction_level_id;
        if (!empty(Auth::user()->district_id)){
            $input['district_id'] = Auth::user()->district_id;
        }
//        else{
//            $input = $request->except('district_id');
//        }

        if (!empty(Auth::user()->thana_id)){
            $input['thana_id'] = Auth::user()->thana_id;
        }
//        else{
//            $input = $request->except('thana_id');
//        }

        $input['posting_ip'] = request()->ip();

       // return $input;
        $news  = News::create($input);
        $news->categories()->attach($request->categories);

        if ($request->hasFile('extra_images')){

            $images = $request->file('extra_images');

            foreach ($images  as $image){
                $name = time() . $image->getClientOriginalName();
                $destination = 'assets/uploads/news/';
                $image->move($destination, $name);
                $news_image['news_image'] = $name;
                $news_image['news_id'] = $news->id;
                NewsImages::create($news_image);
            }
        }

        $request->session()->flash('alert-success', 'News has been created successfully');
        return redirect('admin/news');
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
        $news = News::find($id);
        $extra_image = NewsImages::all()->where('news_id', $news->id);
        return view('admin.news.show', compact('news', 'extra_image'));
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
        $news = News::findOrFail($id);
        $categories = Category::all()->where('status', 1);
        return view('admin.news.edit', compact('news', 'categories'));
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
            'title' => 'required',
            'categories' => 'required',
            'cover_image' => 'mimes:jpeg,jpg,png | max:1000',
            'description' => 'required'
        ]);

        //$input = $request->all();
        if ($cover_image = $request->file('cover_image')){
            $cover_image_name = time() . $cover_image->getClientOriginalName();
            $destination = 'assets/uploads/news/';
            $cover_image->move($destination, $cover_image_name);
            //$input['cover_image'] = $cover_image_name;
        }

        $date = Carbon::parse($request->news_date)->format('Y-m-d H:i:s');
        $request->description = trim($request->description, '<p><br></p>');

        if(!empty($request->video)){
            $video = $request->video;
        }

        $news  = News::find($id);
        $news->update([
            'title' => $request->title,
            'news_date' => $date,
            'cover_image' => isset($cover_image_name) ? $cover_image_name : $news->cover_image,
            'description' => $request->description,
            'video' => $request->video
        ]);
        $news->categories()->sync($request->categories);

        if ($request->hasFile('extra_images')){

            $images = $request->file('extra_images');

            foreach ($images  as $image){
                $name = time() . $image->getClientOriginalName();
                $destination = 'assets/uploads/news/';
                $image->move($destination, $name);
                $news_image['news_image'] = $name;
                $news_image['news_id'] = $news->id;
                NewsImages::create($news_image);
            }
        }

        $request->session()->flash('alert-success', 'News has been updated successfully');
        return redirect('admin/news');
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
        $news = News::find($id);

        foreach ($news->newsimages as $image){
            $image->delete();
        }

        $news->delete();
        session()->flash('alert-success', 'News has been deleted successfully');
        return redirect('admin/news');
    }

    public function unpublishNews ($id) {
        $news = News::find($id);
        $news->update([
            'status' => 0,
            'approved_by' => Auth::user()->id,
            'approval_date' => date('Y-m-d'),
            'approving_ip' => request()->ip(),
        ]);
        session()->flash('alert-success', 'News unpublished successfully');
        return redirect('admin/news');
    }

    public function publishNews ($id) {
        $news = News::find($id);
        $news->update([
            'status' => 1,
            'approved_by' => Auth::user()->id,
            'approval_date' => date('Y-m-d h:i'),
            'approving_ip' => request()->ip(),
        ]);
        session()->flash('alert-success', 'News published successfully');
        return redirect('admin/news');
    }

    public function allunpublishednews () {
        if (Auth::user()->hasRole('admin') || Auth::user()->hasRole('super-admin')){
            $allunpublishednews = News::orderBy('id', 'desc')->where('status', 0)->paginate(30);
        } else{
            $user_id = Auth::user()->id;
            $allunpublishednews = News::orderBy('id', 'desc')->where('status', 0)->where('posted_by', $user_id)->paginate(30);
        }

        return view('admin.news.allunpublishednews', compact('allunpublishednews'));
    }

    public function allpublishednews () {
        if (Auth::user()->hasRole('admin') || Auth::user()->hasRole('super-admin')){
            $allpublishednews = News::orderBy('id', 'desc')->where('status', 1)->paginate(30);
        } else{
            $user_id = Auth::user()->id;
            $allpublishednews = News::orderBy('id', 'desc')->where('status', 1)->where('posted_by', $user_id)->paginate(30);
        }

        return view('admin.news.allpublishednews', compact('allpublishednews'));
    }

    public function destroyImage ($id) {
        $image = NewsImages::findOrFail($id);
        unlink('assets/uploads/news/' . $image->news_image);
        $image->delete();
        return back();
    }
}
