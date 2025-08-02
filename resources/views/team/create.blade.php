@extends('layouts.admin')
@section('pageName')
Team Member
@endsection

@section('content')
<div class="card card-primary my-2">
<div class="container my-4">

    <h1>Create New Team Member</h1>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('team.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" name="name" class="form-control" value="{{ old('name') }}" required>
        </div>

        <div class="form-group">
            <label for="about">About</label>
            <textarea name="about" class="form-control" rows="4">{{ old('about') }}</textarea>
        </div>

        <div class="form-group">
            <label for="portfolio">Portfolio</label>
            <input type="text" name="portfolio" class="form-control" value="{{ old('portfolio') }}" required>
        </div>

        <div class="form-group">
            <label for="picture">Picture</label>
            <input type="file" name="picture" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-success">Create</button>
    </form>
</div>
</div>

@section("js_app")
    <!-- Place the first <script> tag in your HTML's <head> -->
<script src="https://cdn.tiny.cloud/1/vr3y2q88fqi6tlc1njmacrchhy2lt40zklrrnv3d8im4jjab/tinymce/7/tinymce.min.js" referrerpolicy="origin"></script>

<!-- Place the following <script> and <textarea> tags your HTML's <body> -->
<script>
  tinymce.init({
    selector: 'textarea',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
  });
</script>
@endsection
@endsection
