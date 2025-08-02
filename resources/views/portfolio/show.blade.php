@extends('layouts.admin')

@section('content')
<div class="container">
 
    <h1>{{ $portfolio->title }}</h1>
    <p>{!! $portfolio->content  !!}</p>

    <!-- Cover Picture -->
    @if ($portfolio->cover_picture)
        <div class="mb-4">
            <img src="{{ asset('storage/' . $portfolio->cover_picture) }}" alt="Cover Picture" class="img-fluid rounded">
        </div>
    @endif

    <!-- Project Details -->
    {{-- <p>Status: {{ ucfirst($portfolio->status) }}</p>
    <p>Project Date: {{ $portfolio->project_date->format('F j, Y') }}</p> --}}

    <!-- Gallery Section -->
    <h3>Project Gallery</h3>
    <div class="row">
        @if ($portfolio->gallery)
            @foreach (json_decode($portfolio->gallery) as $image)
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="{{ asset('storage/' . $image) }}" class="card-img-top" alt="Gallery Image">
                        <div class="card-body">
                            <p class="card-text">Gallery Image</p>
                        </div>
                    </div>
                </div>
            @endforeach
        @else
            <p>No images in the gallery.</p>
        @endif
    </div>
</div>
@endsection
