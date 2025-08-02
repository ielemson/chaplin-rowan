<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    public function index()
    {
        $sliders = Slider::all();
        return view('sliders.index', compact('sliders'));
    }

    public function create()
    {
        return view('sliders.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'header1' => 'required|string|max:255',
            'header2' => 'required|string|max:255',
            'status'  => 'required|boolean',
        ]);

        $imageName = time().'.'.$request->picture->extension();
        $request->picture->move(public_path('images/sliders'), $imageName);

        Slider::create([
            'picture' => $imageName,
            'header1' => $request->header1,
            'header2' => $request->header2,
            'status' => $request->status,
        ]);

        return redirect()->route('sliders.index')->with('success', 'Slider created successfully.');
    }

    public function edit(Slider $slider)
    {
        return view('sliders.edit', compact('slider'));
    }

    public function update(Request $request, Slider $slider)
    {
        $request->validate([
            'header1' => 'required|string|max:255',
            'header2' => 'required|string|max:255',
            'status'  => 'required|boolean',
            'picture' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($request->hasFile('picture')) {
            $imageName = time().'.'.$request->picture->extension();
            $request->picture->move(public_path('images/sliders'), $imageName);
            $slider->picture = $imageName;
        }

        $slider->update([
            'header1' => $request->header1,
            'header2' => $request->header2,
            'status' => $request->status,
            'picture' => $slider->picture,
        ]);

        return redirect()->route('sliders.index')->with('success', 'Slider updated successfully.');
    }

    public function destroy(Slider $slider)
    {
        $slider->delete();
        return redirect()->route('sliders.index')->with('success', 'Slider deleted successfully.');
    }
}
