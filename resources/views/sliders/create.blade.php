@extends('layouts.admin')
@section('pageName')
    Create Sliders
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
                <form action="{{ route("sliders.store") }}" method="POST" enctype="multipart/form-data">
                    @csrf

                  

                   <div class="row mb-5">

                    <div class="col-md-6">
                         <div class="mb-3">
                        <label for="header1" class="form-label">Header </label>
                        <input type="text" name="header1" class="form-control" value="{{ old('header1') }}" required>
                    </div>

                    
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="header2" class="form-label">Content</label>
                        <textarea name="header2" id="" cols="10" rows="10" class="form-control"  required>{{ old('header2') }}</textarea>
                        {{-- <input type="text" name="header2" class="form-control" value="" required> --}}
                    </div></div>

                    <div class="col-md-6">
                          <div class="mb-3">
                        <label for="picture" class="form-label">Slider Image</label>
                        <input type="file" name="picture" class="form-control" required>
                    </div>
                    
                    </div>

                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="status" class="form-label">Status</label>
                        <select name="status" class="form-control" required>
                            <option value="1" selected>Active</option>
                            <option value="0">Inactive</option>
                        </select>
                    </div>
                    </div>
                   </div>

                    

                    <button type="submit" class="btn btn-primary">Create Slider</button>
                    <a href="{{ route('sliders.index') }}" class="btn btn-secondary">Back</a>
                </form>
            </div>
        </div>
    </div>
@endsection
