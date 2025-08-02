@extends('layouts.admin')
@section('pageName')
    Edit Slider
@endsection

@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Add new Sliders</h3>
            <div class="card-tools">
                <a href="{{ route("sliders.index") }}" class="btn btn-danger"><i class="fas fa-shield-alt"></i> See all
                    services</a>
            </div>
        </div>
        <div class="card-body">
            <div class="container">
              @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="{{ route('sliders.update', $slider->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <div class="mb-3">
        <label for="picture" class="form-label">Current Image</label><br>
        <img src="{{ asset('images/sliders/' . $slider->picture) }}" width="150"><br><br>

        <label for="picture" class="form-label">Change Image (optional)</label>
        <input type="file" name="picture" class="form-control">
    </div>

    <div class="mb-3">
        <label for="header1" class="form-label">Header 1</label>
        <input type="text" name="header1" class="form-control" value="{{ $slider->header1 }}" required>
    </div>

    <div class="mb-3">
        <label for="header2" class="form-label">Header 2</label>
        <input type="text" name="header2" class="form-control" value="{{ $slider->header2 }}" required>
    </div>

    <div class="mb-3">
        <label for="status" class="form-label">Status</label>
        <select name="status" class="form-control" required>
            <option value="1" {{ $slider->status ? 'selected' : '' }}>Active</option>
            <option value="0" {{ !$slider->status ? 'selected' : '' }}>Inactive</option>
        </select>
    </div>

    <button type="submit" class="btn btn-success">Update Slider</button>
    <a href="{{ route('sliders.index') }}" class="btn btn-secondary">Cancel</a>
</form>
            </div>
        </div>
    </div>
@endsection
