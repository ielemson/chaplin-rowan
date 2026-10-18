<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use App\Models\Blog;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Slider;
use App\Models\TeamMember;
use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Mail;
use Illuminate\Validation\ValidationException;

class GeneralController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Homepage
    |--------------------------------------------------------------------------
    */

    public function index()
    {
        return view('welcome', array_merge($this->serviceData(), [
            'teamMembers' => TeamMember::all(),
            'blogs' => Blog::where('status', 1)->get(),
            'sliders' => Slider::where('status', 1)->get(),
            'portfolios' => Portfolio::where('status', 'published')
                ->latest()
                ->get(),
        ]));
    }

    /*
    |--------------------------------------------------------------------------
    | General Pages
    |--------------------------------------------------------------------------
    */

    public function about()
    {
        return view('about', $this->serviceData());
    }

    public function contact()
    {
        return view('contact', $this->serviceData());
    }

    public function our_mission()
    {
        return view('mission', $this->serviceData());
    }

    public function our_vision()
    {
        return view('visison', $this->serviceData());
    }

    /*
    |--------------------------------------------------------------------------
    | Services and Policies
    |--------------------------------------------------------------------------
    */

    public function services()
    {
        return view('services', $this->serviceData());
    }

    public function ourservice($slug)
    {
        $ourservice = Service::where('type', 'service')
            ->where('slug', $slug)
            ->firstOrFail();

        return view('service', array_merge($this->serviceData(), [
            'ourservice' => $ourservice,
        ]));
    }

    public function ourpolicie($slug)
    {
        $ourservice = Service::where('type', 'policy')
            ->where('slug', $slug)
            ->firstOrFail();

        return view('policy', array_merge($this->serviceData(), [
            'ourservice' => $ourservice,
        ]));
    }

    /*
    |--------------------------------------------------------------------------
    | Blogs
    |--------------------------------------------------------------------------
    */

    public function ourblogs()
    {
        $blogs = Blog::where('status', 1)->get();

        return view('blogs', compact('blogs'));
    }

    public function blog_details($slug)
    {
        $blog = Blog::where('status', 1)
            ->where('slug', $slug)
            ->firstOrFail();

        $blogs = Blog::where('status', 1)->get();

        return view('blog_details', compact('blog', 'blogs'));
    }

    /*
    |--------------------------------------------------------------------------
    | Portfolios
    |--------------------------------------------------------------------------
    */

    public function ourportfolios()
    {
        $portfolios = Portfolio::where('status', 'published')->get();

        return view('portfolios', compact('portfolios'));
    }

    public function ourportfolio($slug)
    {
        $portfolio = Portfolio::where('status', 'published')
            ->where('slug', $slug)
            ->firstOrFail();

        $portfolios = Portfolio::where('status', 'published')
            ->latest()
            ->paginate(4);

        return view('portfolio', compact('portfolio', 'portfolios'));
    }

    /*
    |--------------------------------------------------------------------------
    | Contact Submission
    |--------------------------------------------------------------------------
    */

    public function submit(Request $request)
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'email', 'max:255'],
            'phone' => ['required', 'string', 'max:20'],
            'subject' => ['required', 'string', 'max:255'],
            'message' => ['required', 'string', 'max:10000'],
            'cf-turnstile-response' => [
                'required',
                'string',
                'max:2048',
            ],
        ], [
            'cf-turnstile-response.required' =>
                'Please complete the security verification.',
        ]);

        $secret = config('services.turnstile.secret_key');
        $hostname = config('services.turnstile.hostname');

        if (blank($secret) || blank($hostname)) {
            return response()->json([
                'message' =>
                    'Security verification is unavailable. Please try again later.',
            ], 503);
        }

        try {
           $response = Http::asForm()
    ->timeout(10)
    ->post(
        'https://challenges.cloudflare.com/turnstile/v0/siteverify',
        [
            'secret' => $secret,
            'response' => $validated['cf-turnstile-response'],
        ]
    );
        } catch (ConnectionException $exception) {
            return response()->json([
                'message' =>
                    'Unable to complete security verification. Please try again.',
            ], 503);
        }

        $result = $response->json();

        $verified = $response->successful()
            && is_array($result)
            && ($result['success'] ?? false) === true
            && ($result['action'] ?? '') === 'contact'
            && ($result['hostname'] ?? '') === $hostname;

        if (! $verified) {
            throw ValidationException::withMessages([
                'cf-turnstile-response' =>
                    'Security verification failed. Please try again.',
            ]);
        }

        // Only contact fields are passed to the mailable.
        unset($validated['cf-turnstile-response']);

        Mail::to('info@chaplinrowanltd.com')
            ->send(new ContactMail($validated));

        return response()->json([
            'message' => 'Thank you for contacting us!',
        ]);
    }

    /*
    |--------------------------------------------------------------------------
    | Shared Services and Policies
    |--------------------------------------------------------------------------
    */

    private function serviceData(): array
    {
        return [
            'services' => Service::where('type', 'service')->get(),
            'policies' => Service::where('type', 'policy')->get(),
        ];
    }
}