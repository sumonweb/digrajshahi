<?php

namespace App\Http\Controllers;

use App\Category;
use App\CrimeStatistics;
use App\Dig;
use App\District;
use App\Downloadable;
use App\Gallery;
use App\JurisdictionContacts;
use App\Links;
use App\MostWanted;
use App\News;
use App\Noc;
use App\Notice;
use App\Service;
use App\Settings;
use App\Slider;
use App\Sp;
use App\Staff;
use App\Tender;
use App\Thana;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function home()
    {
        $ticker = News::where('status', 1)->latest()->take(5)->get();
        $sliders = Slider::orderBy('id', 'desc')->where('status', 1)->get();
        $dig = Dig::where('period_to', null)->latest()->take(1)->get();
        $services = Service::where('status', 1)->latest()->take(9)->get();
        $news = News::where('status', 1)->latest()->take(10)->get();
        $galleries = Gallery::where('status', 1)->latest()->take(10)->get();
    	return view('frontend.home', compact('ticker','sliders', 'dig', 'services', 'news', 'galleries'));
    }

    public function notice()
    {
        $notices = Notice::orderBy('id', 'desc')->where(array('status'=>1, 'jurisdiction_level_id'=>1))->paginate(40);
    	return view('frontend.notice', compact('notices'));
    }

    public function officeOrder()
    {
        $office_order = Notice::orderBy('id', 'desc')->where(array('status'=>1, 'jurisdiction_level_id'=>1, 'notice_type'=>'office_order'))->paginate(40);
        return view('frontend.officeOrder', compact('office_order'));
    }

    public function noticeDetails($id)
    {
        $notice = Notice::find($id);
    	return view('frontend.noticeDetails', compact('notice'));
    }

    public function messageFormDig()
    {
        $dig = Dig::where('status', 1)->latest()->take(1)->get();
    	return view('frontend.messageFormDig', compact('dig'));
    }

    public function activities()
    {
    	return view('frontend.activities');
    }

    public function recentPhoto()
    {
    	return view('frontend.recentPhoto');
    }

    public function photoGallery()
    {
        $galleries = Gallery::orderBy('id', 'desc')->where(array('status'=>1, 'video'=>null))->paginate(30);
    	return view('frontend.photoGallery', compact('galleries'));
    }

    public function viewGallery ($id)
    {
        $gallery = Gallery::find($id);
        return view('frontend.viewGallery', compact('gallery'));
    }

    public function about()
    {
        return view('frontend.about');
    }

    public function mission()
    {
    	return view('frontend.mission');
    }

    public function vision()
    {
    	return view('frontend.vision');
    }

    public function history()
    {
    	return view('frontend.history');
    }

    public function organogram()
    {
    	return view('frontend.organogram');
    }

    public function digList()
    {
        $digs = Dig::orderBy('id', 'desc')->paginate(30);
    	return view('frontend.digList', compact('digs'));
    }

    public function staff()
    {

        $dig_staff = Staff::where(array('status'=>1, 'designation'=>'Deputy Inspector General'))->latest()->take(1)->get();
        $addl_dig = Staff::where(array('status'=>1, 'designation'=>'Additional DIG'))->orderBy('id', 'asc')->get();
        $sop = Staff::where(array('status'=>1, 'designation'=>'Superintendent of Police'))->orderBy('id', 'asc')->get();
        $addl_sop = Staff::where(array('status'=>1, 'designation'=>'Additional SP'))->orderBy('id', 'asc')->get();
        $assistant_sp = Staff::where(array('status'=>1, 'designation'=>'Assistant Superintendent of Police'))->orderBy('id', 'asc')->get();
        $inspector = Staff::where(array('status'=>1, 'designation'=>'Inspector'))->orderBy('id', 'asc')->get();
        $sub_inspector = Staff::where(array('status'=>1, 'designation'=>'Sub Inspector'))->orderBy('id', 'asc')->get();
        $assistant_sub_inspector = Staff::where(array('status'=>1, 'designation'=>'Assistant Sub Inspector'))->orderBy('id', 'asc')->get();
        $constable = Staff::where(array('status'=>1, 'designation'=>'Constable'))->orderBy('id', 'asc')->get();

    	return view('frontend.staff', compact('dig_staff', 'addl_dig', 'sop', 'addl_sop', 'assistant_sp', 'inspector', 'sub_inspector', 'assistant_sub_inspector', 'constable'));

    }

    public function sacrifices()
    {
    	return view('frontend.sacrifices');
    }

    public function crimeStatistics()
    {
        $districts = District::all();
        foreach ($districts  as $district) {

            // calculate crimes for each district
            $district->robbery = CrimeStatistics::where('district_id',$district->id)->sum('robbery');
            $district->murder = CrimeStatistics::where('district_id',$district->id)->sum('murder');
            $district->speedy_trial = CrimeStatistics::where('district_id',$district->id)->sum('speedy_trial');
            $district->riot = CrimeStatistics::where('district_id',$district->id)->sum('riot');
            $district->women_child = CrimeStatistics::where('district_id',$district->id)->sum('women_child');
            $district->kidnapping = CrimeStatistics::where('district_id',$district->id)->sum('kidnapping');
            $district->police_assault = CrimeStatistics::where('district_id',$district->id)->sum('police_assault');
            $district->burglary = CrimeStatistics::where('district_id',$district->id)->sum('burglary');
            $district->theft = CrimeStatistics::where('district_id',$district->id)->sum('theft');
            $district->other = CrimeStatistics::where('district_id',$district->id)->sum('other');

            // get thanas by district
            $thanas = Thana::where('district_id',$district->id)->get();
            foreach ($thanas as $thana) {
                // assign crimes for each thana
                $thana->crimes = CrimeStatistics::where('thana_id',$thana->id)->get();
            }

            // assign thanas for each district
            $district->thanas = $thanas;
        }

    	return view('frontend.crimeStatistics', ['districts'=>$districts]);
    }

    public function noc()
    {
        $nocs = Noc::orderBy('id', 'desc')->paginate(20);
    	return view('frontend.noc', compact('nocs'));
    }

    public function tender()
    {
        $tenders = Tender::where('status', 1)->orderBy('id', 'desc')->paginate(40);
    	return view('frontend.tender', compact('tenders'));
    }

    public function download()
    {
        $downloadable_item = Downloadable::orderBy('id', 'desc')->where('status', 1)->paginate(30);
    	return view('frontend.download', compact('downloadable_item'));
    }

    public function citizenCharter()
    {
    	return view('frontend.citizenCharter');
    }

    public function sp($id)
    {
        $district = District::find($id);
        $nocs = Noc::where(array('district_id'=>$id))->latest()->take(10)->get();
        $notices = Notice::where(array('status'=>1, 'district_id'=>$id))->latest()->take(10)->get();
        $thanas = Thana::all()->where('district_id', $id);
        $district_news = News::where(array('status'=>1, 'district_id'=>$id))->latest()->take(10)->get();
        $district_contacts = JurisdictionContacts::orderBy('id', 'asc')->where(array('jurisdiction_level_id'=>2, 'district_id'=>$id, 'thana_id'=>null))->get();
    	return view('frontend.sp', compact('district','notices', 'nocs', 'thanas', 'district_news', 'district_contacts'));
    }

    public function pbi(){
        return view('frontend.pbi');
    }

    public function spChapai()
    {
        return view('frontend.spChapai');
    }

    public function spNaogaon()
    {
        return view('frontend.spNaogaon');
    }

    public function spNatore()
    {
        return view('frontend.spNatore');
    }

    public function spPabna()
    {
        return view('frontend.spPabna');
    }

    public function spSirajganj()
    {
        return view('frontend.spSirajganj');
    }

    public function spBogra()
    {
        return view('frontend.spBogra');
    }

    public function spJoypurhat()
    {
        return view('frontend.spJoypurhat');
    }

    public function spRrf()
    {
        return view('frontend.spRrf');
    }

    public function thana($id)
    {
        $thana_contacts = JurisdictionContacts::orderBy('id', 'asc')->where('thana_id', $id)->get();
        $thana = Thana::find($id);
        return view('frontend.thana', compact('thana_contacts', 'thana'));
    }
    
    public function contactUs()
    {
        $dig_contacts = JurisdictionContacts::orderBy('id', 'asc')->where('jurisdiction_level_id', 1)->get();
//        $sp_raj = JurisdictionContacts::where(array('district_id'=>1, 'thana_id'=>null))->get();
//        $thanas = Thana::where('district_id',1)->get();
//        foreach ($thanas as $thana) {
//            // assign crimes for each thana
//            $thana->contacts = JurisdictionContacts::where('thana_id',$thana->id)->get();
//        }

        $districts = District::all();
        foreach ($districts  as $district) {
            // calculate crimes for each district
            $district->contacts = JurisdictionContacts::where('district_id',$district->id)->get();


            // get thanas by district
            $thanas = Thana::where('district_id',$district->id)->get();
            foreach ($thanas as $thana) {
                // assign crimes for each thana
                $thana->contacts = JurisdictionContacts::where('thana_id',$thana->id)->get();
            }

            // assign thanas for each district
            $district->thanas = $thanas;
        }
//dd($districts);
        return view('frontend.contactUs', compact('dig_contacts', 'districts'));
    }

//    public function complaintIns()
//    {
//        return view('frontend.complaint-instruction');
//    }
//
//    public function complainerInfo() {
//        return view('frontend.complaint-info');
//    }

    public function otpSubmit () {
        return view('frontend.otp-submit');
    }

    public function complaint (Request $request) {
        return view('frontend.complaint');
    }

//    public function informationIns () {
//        return view('frontend.information-instruction');
//    }
//
//    public function informerInfo () {
//        return view('frontend.informer-info');
//    }

    public function otpInfo () {
        return view('frontend.otp-info');
    }

    public function informationHelp(Request $request)
    {
        return view('frontend.informationHelp');
    }

    public function wanted () {
        $most_wanted = MostWanted::orderBy('id', 'desc')->where('status', 1)->paginate(30);
        return view('frontend.wanted', compact('most_wanted'));
    }

    public function links () {
        $links = Links::orderBy('links_order', 'asc')->where('status', 1)->paginate(30);
        return view('frontend.links', compact('links'));
    }

    public function news () {
        $homepagenews1 = News::where(array('status'=>1, 'video'=>null))->latest()->take(1)->get();
        $homepagenews2 = News::where(array('status'=>1, 'video'=>null))->latest()->take(4)->skip(1)->get();
        $todaynews = News::where(array('status'=>1, 'video'=>null))->latest()->take(20)->skip(5)->get();
        $videonews = News::where('status', 1)->where('video', '<>', '', 'and')->latest()->take(20)->get();
        $safollow = Category::find(5);
        $safollowsomuho = collect($safollow->news)->sortByDesc('id')->where('status', 1)->paginate(10);

        return view('news.index', compact('homepagenews1', 'homepagenews2', 'todaynews', 'videonews', 'safollowsomuho'));
    }

    public function view_news ($id) {
        $single_news = News::findOrFail($id);
        $todaynews = News::where(array('status'=>1, 'video'=>null))->latest()->take(20)->get();

        return view('news.single', compact('single_news','todaynews'));
    }

    public function category_news ($id) {
        $category = Category::find($id);
        $category_news = collect($category->news)->sortByDesc('id')->where('status', 1)->paginate(10);

        return view('news.category', compact('category','category_news'));
    }

    public function district_news($id) {
        $district = District::find($id);
        $district_news = collect($district->news)->sortByDesc('id')->where('status', 1)->paginate(10);

        return view('news.district', compact( 'district','district_news'));
    }

    public function jurisdictionMap () {
        return view('frontend.jurisdictionMap');
    }

    public function test(){
        $settings = Settings::findOrFail(1);
        return view('frontend.layouts.partial.head', compact('settings'));
    }
}