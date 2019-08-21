<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ContactsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $received_messages = Contact::orderBy('id', 'desc')->where('contact_type', 'contact')->paginate(30);
        return view('admin.contacts.index', compact('received_messages'));
    }

    public function complaints () {
        $received_complaints = Contact::orderBy('id', 'desc')->where('contact_type', 'complaint')->paginate(30);
        return view('admin.contacts.complaints', compact('received_complaints'));
    }

    public function information () {
        $received_information = Contact::orderBy('id', 'desc')->where('contact_type', 'information')->paginate(30);
        return view('admin.contacts.information', compact('received_information'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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

    }

    public function save(Request $request) {

        //return $request->all();
        if ($request->contact_type == 'complaint') {
            $this->validate($request, [
                'person_name' => 'required',
                'mobile' => 'required',
                'address' => 'required',
                'receiver' => 'required',
                'message' => 'required'
            ]);

            $input = $request->all();
            $otp  = rand(1000,9999);
            $input['otp'] = $otp;

            Contact::create($input);

            //Send SMS to user mobile

            //SMS server details
            $user = "rcs190";
            $pass = "i@49D321";
            $sid = "RajCollegiate190";
            $time = time();
            $url="http://sms.sslwireless.com/pushapi/dynamic/server.php";

            //Message and phone number
            $ms="Your OTP is ".$otp.". It is valid for only 5 minutes.";
            $phone=$request->mobile;

            $param="user=$user&pass=$pass&sms[0][0]= $phone&sms[0][1]=".urlencode($ms)."&sms[0][2]=".$time."&sid=$sid";

            $crl = curl_init();
            curl_setopt($crl,CURLOPT_SSL_VERIFYPEER,FALSE);
            curl_setopt($crl,CURLOPT_SSL_VERIFYHOST,2);
            curl_setopt($crl,CURLOPT_URL,$url);
            curl_setopt($crl,CURLOPT_HEADER,0);
            curl_setopt($crl,CURLOPT_RETURNTRANSFER,1);
            curl_setopt($crl,CURLOPT_POST,1);
            curl_setopt($crl,CURLOPT_POSTFIELDS,$param);

            $response = curl_exec($crl);
            curl_close($crl);

            return redirect('otp-submit');
        }

        if ($request->contact_type == 'contact') {
            $this->validate($request, [
                'person_name' => 'required',
                'mobile' => 'required',
                'message' => 'required'
            ]);

            Contact::create([
                'contact_type'  => $request->contact_type,
                'person_name'   => $request->person_name,
                'mobile'        => $request->mobile,
                'email'         => $request->email,
                'message'       => $request->message,
                'status'        => 1
            ]);
            $request->session()->flash('alert-success', 'Thanks for contacting us. We will get in touch with you soon.');
            return redirect('contact-us');
        }

        if ($request->contact_type == 'information') {
            $this->validate($request, [
                'person_name' => 'required',
                'mobile' => 'required',
                'address' => 'required',
                'receiver' => 'required',
                'message' => 'required'
            ]);

            $input = $request->all();
            $otp  = rand(1000,9999);
            $input['otp'] = $otp;

            Contact::create($input);
            //Send SMS to user mobile

            //SMS server details
            $user = "rcs190";
            $pass = "i@49D321";
            $sid = "RajCollegiate190";
            $time = time();
            $url="http://sms.sslwireless.com/pushapi/dynamic/server.php";

            //Message and phone number
            $ms="Your OTP is ".$otp.". It is valid for only 5 minutes.";
            $phone=$request->mobile;

            $param="user=$user&pass=$pass&sms[0][0]= $phone&sms[0][1]=".urlencode($ms)."&sms[0][2]=".$time."&sid=$sid";

            $crl = curl_init();
            curl_setopt($crl,CURLOPT_SSL_VERIFYPEER,FALSE);
            curl_setopt($crl,CURLOPT_SSL_VERIFYHOST,2);
            curl_setopt($crl,CURLOPT_URL,$url);
            curl_setopt($crl,CURLOPT_HEADER,0);
            curl_setopt($crl,CURLOPT_RETURNTRANSFER,1);
            curl_setopt($crl,CURLOPT_POST,1);
            curl_setopt($crl,CURLOPT_POSTFIELDS,$param);

            $response = curl_exec($crl);
            curl_close($crl);

            return redirect('otp-info');
        }
    }

    //Match the complaint OTP from database and user input
    public function matchOtpCom(Request $request) {
        $this->validate($request, [
            'otp' => 'required'
        ]);

        $db_otp = Contact::all();
        if ($db_otp->contains('otp', $request->otp)) {
            $contact = DB::table('contacts')->where('otp',$request->otp)->first()->id;
            DB::table('contacts')->where('id', $contact)->update(['status' => 1]);

            //Send SMS to user mobile

            //SMS server details
            $user = "rcs190";
            $pass = "i@49D321";
            $sid = "RajCollegiate190";
            $time = time();
            $url="http://sms.sslwireless.com/pushapi/dynamic/server.php";

            //Message and phone number
            $ms="We received your complaint, action will be taken soon.";
            $phone=DB::table('contacts')->where('otp',$request->otp)->first()->mobile;

            $param="user=$user&pass=$pass&sms[0][0]= $phone&sms[0][1]=".urlencode($ms)."&sms[0][2]=".$time."&sid=$sid";

            $crl = curl_init();
            curl_setopt($crl,CURLOPT_SSL_VERIFYPEER,FALSE);
            curl_setopt($crl,CURLOPT_SSL_VERIFYHOST,2);
            curl_setopt($crl,CURLOPT_URL,$url);
            curl_setopt($crl,CURLOPT_HEADER,0);
            curl_setopt($crl,CURLOPT_RETURNTRANSFER,1);
            curl_setopt($crl,CURLOPT_POST,1);
            curl_setopt($crl,CURLOPT_POSTFIELDS,$param);

            $response = curl_exec($crl);
            curl_close($crl);

            $request->session()->flash('alert-success', 'আপনার অভিযোগটি গ্রহণ করা হলো, যথাশীঘ্রই আপনাকে এই বিষয়ে জানানো হবে।');
        }
        else{
            $request->session()->flash('alert-danger', 'You have entered wrong OTP.');
        }
        return back();
    }

    //Match the information OTP from database and user input
    public function matchOtpInfo(Request $request) {
        $this->validate($request, [
            'otp' => 'required'
        ]);

        $db_otp = Contact::all();
        if ($db_otp->contains('otp', $request->otp)) {
            $contact = DB::table('contacts')->where('otp',$request->otp)->first()->id;
            DB::table('contacts')->where('id', $contact)->update(['status' => 1]);

            //Send SMS to user mobile

            //SMS server details
            $user = "rcs190";
            $pass = "i@49D321";
            $sid = "RajCollegiate190";
            $time = time();
            $url="http://sms.sslwireless.com/pushapi/dynamic/server.php";

            //Message and phone number
            $ms="Thank you for your information, action will be taken soon.";
            $phone=DB::table('contacts')->where('otp',$request->otp)->first()->mobile;

            $param="user=$user&pass=$pass&sms[0][0]= $phone&sms[0][1]=".urlencode($ms)."&sms[0][2]=".$time."&sid=$sid";

            $crl = curl_init();
            curl_setopt($crl,CURLOPT_SSL_VERIFYPEER,FALSE);
            curl_setopt($crl,CURLOPT_SSL_VERIFYHOST,2);
            curl_setopt($crl,CURLOPT_URL,$url);
            curl_setopt($crl,CURLOPT_HEADER,0);
            curl_setopt($crl,CURLOPT_RETURNTRANSFER,1);
            curl_setopt($crl,CURLOPT_POST,1);
            curl_setopt($crl,CURLOPT_POSTFIELDS,$param);

            $response = curl_exec($crl);
            curl_close($crl);

            $request->session()->flash('alert-success', 'তথ্য দেওয়ার জন্য আপনাকে ধন্যবাদ। যথাশীঘ্রই ব্যবস্থা নেওয়া হবে।');
        }
        else{
            $request->session()->flash('alert-danger', 'You have entered wrong OTP.');
        }
        return back();
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
        $show_everything = Contact::find($id);
        return view('admin.contacts.show', compact('show_everything'));
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
        $received_contact = Contact::find($id);
        $received_contact->delete();
        session()->flash('alert-success', 'Deleted successfully');
        return back();
    }
}
