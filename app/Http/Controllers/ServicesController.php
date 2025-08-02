<?php
namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    // Show all services
    public function index()
    {
        $services = Service::all();
        return view('services.index', compact('services'));
    }

    // Show form for creating a new service
    public function create()
    {
        return view('services.create');
    }

    public function store(Request $request)
{
    // Validate the form inputs
    $request->validate([
        'title' => 'required|string|max:255',
        'type' => 'required|string',
        'content' => 'required|string',
        'image' => 'nullable|image|max:2048', // Optional image, maximum size 2MB
    ]);

    $imagePath = null; // Initialize as null if no image is provided

    // Check if an image file is uploaded
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        
        // Get a unique filename for the image
        $imageName = time() . '_' . $image->getClientOriginalName();
        
        // Define the upload path (e.g., public/images/services)
        $uploadPath = public_path('images/services');
        
        // Move the uploaded file to the desired folder
        $image->move($uploadPath, $imageName);
        
        // Save the file path to the database (relative path)
        $imagePath = 'images/services/' . $imageName;
    }

    // Create the service with form data and image path
    $service = new Service();
    $service->slug = Str::slug($request->title);
    $service->title = $request->input('title');
    $service->type = $request->type;
    $service->content = $request->input('content');
    $service->image = $imagePath; // Store the image path
    $service->save();

    return redirect()->route('services.index')->with('success', 'Service created successfully.');
}

    // Show a single service
    public function show(Service $service)
    {
        return view('services.show', compact('service'));
    }

    // Show form to edit a service
    public function edit(Service $service)
    {
        return view('services.edit', compact('service'));
    }

    // Update the service
    public function update(Request $request, $id)
    {
        $service = Service::findOrFail($id);
    
        $request->validate([
            'title' => 'required|string|max:255',
             'type' => 'required|string',
            'content' => 'required|string',
            'image' => 'nullable|image|max:2048',
        ]);
    
        // Store the old image path
        $oldImage = $service->image;
    
        if ($request->hasFile('image')) {
            // Delete the old image if a new one is uploaded
            if ($oldImage && file_exists(public_path($oldImage))) {
                unlink(public_path($oldImage));
            }
    
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $uploadPath = public_path('images/services');
            $image->move($uploadPath, $imageName);
            $service->image = 'images/services/' . $imageName;
        }
    
        $service->slug = Str::slug($request->title);
        $service->title = $request->input('title');
        $service->type = $request->input('type');
        $service->content = $request->input('content');
        $service->save();
    
        return redirect()->route('services.index')->with('success', 'Service updated successfully.');
    }
    

    // Delete the service
    public function destroy(Service $service)
    {
        if ($service->image) {
            \Storage::delete($service->image);
        }
        $service->delete();
        return redirect()->route('services.index');
    }
}

