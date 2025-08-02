<?php

// app/Http/Controllers/PortfolioController.php

namespace App\Http\Controllers;

use App\Models\Portfolio;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
class PortfolioController extends Controller
{

    public function index()
{
    $portfolios = Portfolio::all(); // Retrieve all portfolio items
    return view('portfolio.index', compact('portfolios'));
}

    public function create()
    {
        return view('portfolio.create');
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'project_client' => 'required|string',
            'project_category' => 'required',
            'content' => 'required|string',
            'cover_picture' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'gallery.*' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'status' => 'required|string',
            'project_date' => 'required|date',
        ]);
        $data['slug'] = Str::slug($request->title);
        // Handle file uploads
        if ($request->hasFile('cover_picture')) {
            $data['cover_picture'] = $request->file('cover_picture')->store('cover_pictures', 'public');
        }

        if ($request->hasFile('gallery')) {
            $galleryPaths = [];
            foreach ($request->file('gallery') as $galleryImage) {
                $galleryPaths[] = $galleryImage->store('gallery_images', 'public');
            }
            $data['gallery'] = json_encode($galleryPaths);
        }

        Portfolio::create($data);
        return redirect()->route('portfolio.index')->with('success', 'Portfolio item created successfully!');
    }

    public function edit(Portfolio $portfolio)
    {
        return view('portfolio.edit', compact('portfolio'));
    }

    public function update(Request $request, Portfolio $portfolio)
    {
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'project_client' => 'required|string',
            'project_category' => 'required',
            'cover_picture' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'gallery.*' => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'status' => 'required|string',
            'project_date' => 'required|date',
        ]);
        
        $data['slug'] = Str::slug($request->title);
        if ($request->hasFile('cover_picture')) {
            $data['cover_picture'] = $request->file('cover_picture')->store('cover_pictures', 'public');
        }

        if ($request->hasFile('gallery')) {
            $galleryPaths = [];
            foreach ($request->file('gallery') as $galleryImage) {
                $galleryPaths[] = $galleryImage->store('gallery_images', 'public');
            }
            $data['gallery'] = json_encode($galleryPaths);
        }

        $portfolio->update($data);
        return redirect()->route('portfolio.index')->with('success', 'Portfolio item updated successfully!');
    }

    public function show(Portfolio $portfolio)
    {
        return view('portfolio.show', compact('portfolio'));
    }

    // app/Http/Controllers/PortfolioController.php


public function destroy($id)
{
    // Find the portfolio item by ID or fail with a 404 error
    $portfolio = Portfolio::findOrFail($id);

    // Delete cover picture if it exists
    if ($portfolio->cover_picture && Storage::exists($portfolio->cover_picture)) {
        Storage::delete($portfolio->cover_picture);
    }

    // Decode the gallery JSON if needed and delete each image
    $gallery = is_array($portfolio->gallery) ? $portfolio->gallery : json_decode($portfolio->gallery, true);

    if (is_array($gallery)) {
        foreach ($gallery as $image) {
            if (Storage::exists($image)) {
                Storage::delete($image);
            }
        }
    }

    // Delete the portfolio item from the database
    $portfolio->delete();

    // Redirect with a success message
    return redirect()->route('portfolio.index')->with('success', 'Portfolio item deleted successfully!');
}

}
