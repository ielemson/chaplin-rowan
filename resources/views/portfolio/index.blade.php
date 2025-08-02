@extends('layouts.admin')

@section('content')
<div class="container">
    <h1>All Porfolios</h1>
    {{-- <a href="{{ route('blogs.create') }}" class="btn btn-primary mb-3">Create Blog</a> --}}
    <a href="{{ route('portfolio.create') }}" class="btn btn-primary mb-3">Create New Portfolio Item</a>

    {{-- <div class="row">
        @foreach($portfolios as $portfolios)
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
    </div> --}}
    <table class="table">
        <thead>
            <tr>
                <th>Title</th>
                <th>Status</th>
                <th>Project Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($portfolios as $portfolio)
                <tr>
                    <td>{{ $portfolio->title }}</td>
                    <td>{{ ucfirst($portfolio->status) }}</td>
                    <td>{{ $portfolio->project_date }}</td>
                    <td>
                        <a href="{{ route('portfolio.show', $portfolio->id) }}" class="btn btn-info">View</a>
                        <a href="{{ route('portfolio.edit', $portfolio->id) }}" class="btn btn-warning">Edit</a>
                        
                        <form action="{{ route('portfolio.destroy', $portfolio->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
