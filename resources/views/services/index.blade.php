@extends('layouts.admin')
@section('pageName')
Create Roles
@endsection

@section('content')

<div class="container">
    <h1 class="my-4">Services</h1>
    <a href="{{ route('services.create') }}" class="btn btn-primary mb-4">Create New Service</a>

    @if($services->isEmpty())
        <div class="alert alert-info">No services found. Create a new one!</div>
    @else
        <div class="row">
            @foreach ($services as $service)
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        @if($service->image)
                            <img src="{{ asset("$service->image") }}" class="card-img-top" alt="{{ $service->title }}" style="max-height: 200px; object-fit: cover;">
                        @else
                            <img src="https://via.placeholder.com/400x200?text=No+Image" class="card-img-top" alt="No Image">
                        @endif
                        <div class="card-body">
                            <h5 class="card-title">{{ $service->header }}</h5>
                            <h6 class="card-subtitle text-muted">{{ $service->title }}</h6>
                            {{-- <p class="card-text mt-3">{{ Str::limit($service->content, 100) }}</p> --}}
                        </div>
                        <div class="card-footer d-flex justify-content-between">
                            <a href="#" class="btn btn-info">View</a>
                            <a href="{{ route('services.edit', $service->id) }}" class="btn btn-warning">Edit</a>
                            <form action="{{ route('services.destroy', $service->id) }}" method="POST" class="d-inline-block">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
</div>

@endsection


