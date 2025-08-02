@extends('layouts.admin')
@section('pageName')
Sliders
@endsection

@section('content')

<div class="container">
 
    <div class="card">
        <div class="card-body">
            <a href="{{ route('sliders.create') }}" class="btn btn-primary mb-2">Add Slider</a>

@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Image</th>
            <th>Header 1</th>
            <th>Header 2</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($sliders as $slider)
        <tr>
            <td><img src="{{ asset('images/sliders/' . $slider->picture) }}" width="100"/></td>
            <td>{{ $slider->header1 }}</td>
            <td>{{ $slider->header2 }}</td>
            <td>{{ $slider->status ? 'Active' : 'Inactive' }}</td>
            <td>
                <a href="{{ route('sliders.edit', $slider->id) }}" class="btn btn-warning btn-sm">Edit</a>
                <form action="{{ route('sliders.destroy', $slider->id) }}" method="POST" style="display:inline;">
                    @csrf @method('DELETE')
                    <button onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
        </div>
    </div>
</div>

@endsection


