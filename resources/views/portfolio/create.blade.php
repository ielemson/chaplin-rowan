@extends('layouts.admin')
@section('pageName')
    Create Portfolios
@endsection

@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Add new Portfolio</h3>
            <div class="card-tools">
                <a href="{{ route('portfolio.index') }}" class="btn btn-danger"><i class="fas fa-shield-alt"></i> See all
                    portfolios</a>
            </div>
        </div>
        <div class="card-body">
            <div class="container">

                <form action="{{ route('portfolio.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf


                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="title" class="form-label">Project Title</label>
                                <input type="text" name="title" id="title" class="form-control"
                                    value="{{ old('title') }}" required>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group mb-3">
                                <label for="staut" class="form-label">Status</label>

                                <select name="status" class="form-control">
                                    <option value="draft">Draft</option>
                                    <option value="published">Published</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group mb-3">
                                <label for="title" class="form-label">Project Date</label>
                                <input type="date" name="project_date" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="client" class="form-label">Project Client</label>
                                <input type="text" name="project_client" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="category" class="form-label">Project Category</label>
                                <input type="text" name="project_category" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group mb-3">
                                <label for="content" class="form-label">Project Description</label>
                                <textarea name="content" placeholder="Content" class="form-control">{{ old('content') }}</textarea>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="image" class="form-label">Cover Image</label>
                                <input type="file" name="cover_picture" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mb-3">
                                <label for="gallery" class="form-label">Project Gallery</label>
                                <input type="file" name="gallery[]" multiple class="form-control">
                            </div>
                        </div>

                    </div>


                    <button type="submit" class="form-control btn btn-primary">Create Portfolio</button>
                </form>
            </div>
        </div>
    </div>

@section('js_app')
    <!-- Place the first <script>
        tag in your HTML 's <head> -->
             <script src =
            "https://cdn.tiny.cloud/1/vr3y2q88fqi6tlc1njmacrchhy2lt40zklrrnv3d8im4jjab/tinymce/7/tinymce.min.js"
        referrerpolicy = "origin" >
    </script>

    <!-- Place the following <script>
        and < textarea > tags your HTML 's <body> --> 
            <script >
            tinymce.init({
                selector: 'textarea',
                plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
                toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
            });
    </script>
@endsection
@endsection
