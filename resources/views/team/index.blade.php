@extends('layouts.admin')

@section('content')
<div class="container">  
    <h1 class="my-4">Team Members</h1>
        <a href="{{ route('team.create') }}" class="btn btn-primary mb-4">Create New Team</a>
    <div class="row">
      
    
        @foreach ($teamMembers as $teamMember)
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="{{ asset('storage/' . $teamMember->picture) }}" class="card-img-top" alt="{{ $teamMember->name }}">
                <div class="card-body">
                    <h5 class="card-title">{{ $teamMember->name }}</h5>
                    <p class="card-text">{{ Str::limit($teamMember->about, 100) }}</p>
<div class="btn-group">
    <a href="{{ route('team.edit', $teamMember->id) }}" class="btn btn-warning">Edit</a>
    <form action="{{ route('team.destroy', $teamMember->id) }}" method="POST" >
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-danger">Delete</button>
    </form>
</div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
