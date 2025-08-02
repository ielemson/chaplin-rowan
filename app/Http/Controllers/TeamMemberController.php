<?php

namespace App\Http\Controllers;
use App\Models\TeamMember;
use Illuminate\Http\Request;

class TeamMemberController extends Controller
{
    // Display the team members
    public function index()
    {
        $teamMembers = TeamMember::all();
        return view('team.index', compact('teamMembers'));
    }

    // Show the form for creating a new team member
    public function create()
    {
        return view('team.create');
    }

    // Store a newly created team member
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'about' => 'required',
            'portfolio' => 'required',
            'picture' => 'required|image|mimes:jpg,png,jpeg|max:2048',
        ]);

        // Store the image
        $picturePath = $request->file('picture')->store('team_pictures', 'public');

        TeamMember::create([
            'name' => $request->name,
            'about' => $request->about,
            'portfolio' => $request->portfolio,
            'picture' => $picturePath,
        ]);

        return redirect()->route('team.index')->with('success', 'Team member created successfully.');
    }

    // Show the form for editing a team member
    public function edit($id)
    {
        $teamMember = TeamMember::where("id",$id)->first();
        return view('team.edit', compact('teamMember'));
    }

    // Update the team member
    public function update(Request $request, $id)
    {
        $teamMember = TeamMember::findOrFail($id);
        
        $request->validate([
            'name' => 'required',
            'about' => 'required',
            'portfolio' => 'required',
            'picture' => 'nullable|image|mimes:jpg,png,jpeg|max:2048',
        ]);

        if ($request->hasFile('picture')) {
            // Store the new image
            $picturePath = $request->file('picture')->store('team_pictures', 'public');
            $teamMember->picture = $picturePath;
        }

        $teamMember->update($request->only(['name', 'about', 'portfolio', 'picture']));

        return redirect()->route('team.index')->with('success', 'Team member updated successfully.');
    }
}