<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'FrontendController@home')->name('home');
Route::get('notice', 'FrontendController@notice')->name('notice');
Route::get('office-order', 'FrontendController@officeOrder')->name('office-order');
Route::get('notice-details/{id}', 'FrontendController@noticeDetails')->name('notice-details');
Route::get('dig-message', 'FrontendController@messageFormDig')->name('dig-message');
Route::get('activities', 'FrontendController@activities')->name('activities');
Route::get('recent-photo', 'FrontendController@recentPhoto')->name('recent-photo');
Route::get('photo-gallery', 'FrontendController@photoGallery')->name('photo-gallery');

Route::get('photo-gallery/{id}', 'FrontendController@viewGallery')->name('view-gallery');

Route::get('about', 'FrontendController@about')->name('about');
Route::get('mission', 'FrontendController@mission')->name('mission');
Route::get('vision', 'FrontendController@vision')->name('vision');
Route::get('history', 'FrontendController@history')->name('history');
Route::get('organogram', 'FrontendController@organogram')->name('organogram');
Route::get('dig-list', 'FrontendController@digList')->name('dig-list');
Route::get('staff', 'FrontendController@staff')->name('staff');
Route::get('sacrifices', 'FrontendController@sacrifices')->name('sacrifices');
Route::get('crime-statistics', 'FrontendController@crimeStatistics')->name('crime-statistics');
Route::get('noc', 'FrontendController@noc')->name('noc');
Route::get('tender', 'FrontendController@tender')->name('tender');
Route::get('download', 'FrontendController@download')->name('download');
Route::get('citizen-charter', 'FrontendController@citizenCharter')->name('citizen-charter');

Route::get('sp/{id}', array('uses'=>'FrontendController@sp'))->name('district');
Route::get('pbi', 'FrontendController@pbi')->name('pbi');

//Route::get('sp-rajshahi', 'FrontendController@spRajshahi')->name('sp-rajshahi');
//Route::get('sp-chapai', 'FrontendController@spChapai')->name('sp-chapai');
//Route::get('sp-naogaon', 'FrontendController@spNaogaon')->name('sp-naogaon');
//Route::get('sp-natore', 'FrontendController@spNatore')->name('sp-natore');
//Route::get('sp-pabna', 'FrontendController@spPabna')->name('sp-pabna');
//Route::get('sp-sirajganj', 'FrontendController@spSirajganj')->name('sp-sirajganj');
//Route::get('sp-bogra', 'FrontendController@spBogra')->name('sp-bogra');
//Route::get('sp-joypurhat', 'FrontendController@spJoypurhat')->name('sp-joypurhat');
Route::get('sp-rrf', 'FrontendController@spRrf')->name('sp-rrf');
Route::get('thana/{id}', 'FrontendController@thana')->name('thana');
Route::get('contact-us', 'FrontendController@contactUs')->name('contact-us');


//Route::get('information-instruction', 'FrontendController@informationIns')->name('information-instruction');
//Route::get('informer-info', 'FrontendController@informerInfo')->name('informer-info');
Route::get('otp-info', 'FrontendController@otpInfo')->name('otp-info');
Route::get('help-with-information', 'FrontendController@informationHelp')->name('information-help');
//Route::get('/matchOtpInfo', 'OtpController@matchOtpInfo');

Route::resource('otp', 'OtpController');
//Route::get('complaint-instruction', 'FrontendController@complaintIns')->name('complaint-ins');
//Route::get('complainer-info', 'FrontendController@complainerInfo')->name('complainer-info');
Route::get('otp-submit', 'FrontendController@otpSubmit')->name('otp-submit');
Route::get('complaint-box', 'FrontendController@complaint')->name('complaint');
//Route::get('/matchOtp', 'OtpController@matchOtp');


Route::get('wanted', 'FrontendController@wanted')->name('wanted');
Route::get('useful-links', 'FrontendController@links')->name('useful-links');
Route::get('jurisdiction-map', 'FrontendController@jurisdictionMap')->name('jurisdictionMap');



//News Portal Routes
Route::get('/news', 'FrontendController@news');
Route::get('/news/{id}', 'FrontendController@view_news');
Route::get('/news/category/{id}', 'FrontendController@category_news');
Route::get('news/district/{id}', 'FrontendController@district_news');

//Backend Routes
Route::get('frontend/layouts/partial/head', 'FrontendController@test');

//Received messages route for storing messages to database
Route::post('/save', 'ContactsController@save');
Route::get('/matchOtpInfo', 'ContactsController@matchOtpInfo')->name('matchOtpInfo');
Route::get('/matchOtpCom', 'ContactsController@matchOtpCom')->name('matchOtpCom');

//Route::get('/admin', 'LoginController');
//Route::get('/admin/dashboard', 'HomeController@index')->name('dashboard');

Route::group(['middleware'=> 'auth'], function (){

    Route::get('admin/news/publish/{id}', array('uses' => 'NewsController@publishNews'));
    Route::get('admin/news/unpublish/{id}', array('uses' => 'NewsController@unpublishNews'));
    Route::get('admin/news/destroyImage/{id}', array('uses'=>'NewsController@destroyImage'));
    Route::get('admin/news/allpublishednews', array('uses'=>'NewsController@allpublishednews'))->name('all-published-news');
    Route::get('admin/news/allunpublishednews', array('uses'=>'NewsController@allunpublishednews'))->name('all-unpublished-news');

    Route::get('admin/tender/publish/{id}', array('uses' => 'TenderController@publish'));
    Route::get('admin/tender/unpublish/{id}', array('uses' => 'TenderController@unpublish'));

    Route::get('admin/notice/publish/{id}', array('uses' => 'NoticeController@publish'));
    Route::get('admin/notice/unpublish/{id}', array('uses' => 'NoticeController@unpublish'));

    Route::get('admin/gallery/destroyImage/{id}', array('uses' => 'GalleryController@destroyImage'));

    Route::get('admin/contacts/complaints', array('uses' => 'ContactsController@complaints'))->name('admin-complaint');
    Route::get('admin/contacts/info', array('uses' => 'ContactsController@information'))->name('information');

    Route::get('admin/index', array('uses' => 'DashboardController@index'))->name('dashboard');
    Route::resource('/admin/settings', 'SettingsController');
    Route::resource('admin/slider', 'SliderController');
    Route::resource('admin/users', 'UsersController');
    Route::resource('admin/roles', 'RolesController');
    Route::resource('admin/permissions', 'PermissionsController');
    Route::resource('admin/categories', 'NewsCategoryController');
    Route::resource('admin/news', 'NewsController');
    Route::resource('admin/district', 'DistrictController');
    Route::resource('admin/thana', 'ThanaController');
    Route::resource('admin/dig', 'DigController');
    Route::resource('admin/tender', 'TenderController');
    Route::resource('admin/notice', 'NoticeController');
    Route::resource('admin/noc', 'NocController');
    Route::resource('admin/services', 'ServicesController');
    Route::resource('admin/staff', 'StaffController');
    Route::resource('admin/gallery', 'GalleryController');
    Route::resource('admin/sp', 'SpController');
    Route::resource('admin/contacts', 'ContactsController');
    Route::resource('admin/jurisdictionContacts', 'JurisdictionContactsController');
    Route::resource('admin/mostWanted', 'MostWantedController');
    Route::resource('admin/downloadable', 'DownloadableController');
    Route::resource('admin/links', 'LinksController');
    Route::resource('admin/crime-statistics', 'CrimeStatisticsController');
});
Auth::routes();
