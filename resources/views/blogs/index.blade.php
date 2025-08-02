@extends('layouts.admin')

@section('content')
<div class="container">
    <h1>All Blogs</h1>
    <a href="{{ route('blogs.create') }}" class="btn btn-primary mb-3">Create Blog</a>

    <div class="row">
        @foreach($blogs as $blog)
        <div class="col-md-4">
            <div class="card mb-4">
                <img src="{{ asset('images/' . $blog->image) }}" class="card-img-top" alt="{{ $blog->title }}" style="height: 200px; object-fit: cover;">
                <div class="card-body">
                    <h5 class="card-title">{{ $blog->title }}</h5>
                    <p class="card-text">{{ Str::limit($blog->content, 100) }}</p>
                    <a href="{{ route('blogs.edit', $blog->id) }}" class="btn btn-primary">Edit</a>
                    <form action="{{ route('blogs.destroy', $blog->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
