<?php

namespace App\Http\Controllers;

use App\Otp;
use Illuminate\Http\Request;

class OtpController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $this->validate($request, [
            'nid' => 'required',
            'mobile' => 'required'
        ]);

        $input = $request->all();
        $otp  = rand(1000,9999);
        $input['otp'] = $otp;

        Otp::create($input);
        $request->session()->put('otp_key', $otp);

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

        if ($request->form_type == 'complaint') {
            return redirect('/otp-submit');
        }
        elseif ($request->form_type == 'information') {
            return redirect('/otp-info');
        }
    }

    public function matchOtp(Request $request) {
        $this->validate($request, [
           'otp' => 'required'
        ]);
        //return $request->otp;
        $input = $request->otp;
        $db_otp = Otp::all();
        //dd($db_otp);
        if ($db_otp->contains('otp', $request->otp)) {
            return redirect('complaint-box');
        }
        else{
            $request->session()->flash('alert-danger', 'You have entered wrong OTP.');
            return redirect('otp-submit');
        }

    }

    public function matchOtpInfo(Request $request) {
        $this->validate($request, [
            'otp' => 'required'
        ]);
        //return $request->otp;
        $input = $request->otp;
        $db_otp = Otp::all();
        //dd($db_otp);
        if ($db_otp->contains('otp', $request->otp)) {
            return redirect('help-with-information');
        }
        else{
            $request->session()->flash('alert-danger', 'You have entered wrong OTP.');
            return redirect('otp-info');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\otp  $otp
     * @return \Illuminate\Http\Response
     */
    public function show(otp $otp)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\otp  $otp
     * @return \Illuminate\Http\Response
     */
    public function edit(otp $otp)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\otp  $otp
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, otp $otp)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\otp  $otp
     * @return \Illuminate\Http\Response
     */
    public function destroy(otp $otp)
    {
        //
    }
}
