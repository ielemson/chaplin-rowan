<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Slider;
use App\Mail\ContactMail;
use App\Models\TeamMember;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Anhskohbo\NoCaptcha\Rules\Captcha;
use Illuminate\Support\Facades\Validator;



class GeneralController extends Controller
{
    public function index(){
        $teamMembers = TeamMember::all();
        $blogs = Blog::where("status",1)->get();
        $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        $sliders = Slider::where("status",1)->get();
        $portfolios = Portfolio::latest()->where('status',"published")->orderBy('id', 'DESC')->get();
        return view("welcome",compact("teamMembers","blogs","services","portfolios","sliders","policies"));
    }
    
    public function about(){
        $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("about",compact("services","policies"));
    }

    public function contact(){
         $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("contact",compact("services","policies"));
    }

    public function our_mission(){
         $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("mission",compact("services","policies"));
    }

    public function our_vision(){
          $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("visison",compact("services","policies"));
    }

    public function services(){
         $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("services",compact('services','policies'));
    }

    public function ourservice($slug){
        $ourservice = Service::where("slug",$slug)->first();
        $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("service",compact('ourservice','services','policies'));
    }
    public function ourpolicie($slug){
        $ourservice = Service::where("slug",$slug)->first();
        $services = Service::where("type","service")->get();
        $policies = Service::where("type","policy")->get();
        return view("policy",compact('ourservice','services','policies'));
    }

    public function ourblogs(){
        $blogs = Blog::where("status",1)->get();
        return view("blogs",compact("blogs"));
    }

    public function ourportfolios(){
        $portfolios = Portfolio::where("status","published")->get();
        return view("portfolios",compact("portfolios"));
    }
    public function ourportfolio($slug){
        $portfolio = Portfolio::where("slug",$slug)->first();
        $portfolios = Portfolio::latest()->where('status',"published")->orderBy('id', 'DESC')->paginate(4);
        return view("portfolio",compact("portfolio","portfolios"));
    }
    public function blog_details($slug){
        $blog = Blog::where("slug",$slug)->first();
        $blogs = Blog::where("status",1)->get();
        return view("blog_details",compact("blog","blogs"));
    }


    // public function contactSubmit(Request $request)
    // {
    //     // Validate form data
    //     $validator = Validator::make($request->all(), [
    //         'name' => 'required|string|max:255',
    //         'email' => 'required|email',
    //         'subject' => 'required|string|max:1000',
    //     ]);

    //     if ($validator->fails()) {
    //         return response()->json([
    //             'errors' => $validator->errors()
    //         ], 422);
    //     }

    //     // Handle the submission logic (like saving to DB or sending an email)
        
    //     return response()->json([
    //         'message' => 'Your message has been sent successfully!'
    //     ], 200);
    // }

        //     public function submit(Request $request)
        // {
        //     $validator = Validator::make($request->all(), [
        // 'name' => 'required|string|max:255',
        // 'email' => 'required|email',
        // 'phone' => 'required|string|max:20',
        // 'subject' => 'required|string|max:255',
        // 'message' => 'required|string',
        // 'g-recaptcha-response' => ['required', new Captcha()],
        // ]);

        //     if ($validator->fails()) {
        //         return response()->json(['message' => $validator->errors()->first()], 422);
        //     }

        //     Mail::to('info@chaplinrowanltd.com')->send(new ContactMail($request->all()));

        //     return response()->json(['message' => 'Thank you for contacting us! We’ll get back to you shortly.']);
        // }

        public function submit(Request $request)
    {
        $request->validate([
            'name'    => 'required|string|max:255',
            'email'   => 'required|email',
            'phone'   => 'required|string|max:20',
            'subject' => 'required|string',
            'message' => 'required|string',
            'captcha' => 'required|captcha'
        ]);

        Mail::to('info@chaplinrowanltd.com')->send(new ContactMail($request->all()));

        return response()->json(['message' => 'Thank you for contacting us!']);
    }
}
