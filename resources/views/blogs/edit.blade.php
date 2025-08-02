@extends('layouts.admin')

@section('content')

<div class="card card-primary">
    <div class="card-header">
        <h3 class="card-title">View all Blog</h3>
        <div class="card-tools">
            <a href="{{ route("blogs.index") }}" class="btn btn-danger"><i class="fas fa-shield-alt"></i> See all blogs</a>
        </div>
    </div>
    <div class="card-body">
        <div class="container">
            <h1>Edit Blog</h1>
            <form action="{{ route('blogs.update', $blog->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                {{-- <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title" value="{{ $blog->title }}" required>
                </div> --}}

                <div class="row">
                    <div class="col-md-6"> <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" value="{{ $blog->title }}" required>
                    </div>
                </div>
                    <div class="col-md-6"> <div class="form-group">
                        <label for="title">Status</label>
                     <select name="status" id="" class="form-control">
                        <option value="1" {{ $blog->status==1?'selected':'' }}>Publish</option>
                        <option value="0" {{ $blog->status==0?'selected':'' }}>Unpublish</option>
                     </select>
                    </div>
                </div>
                   </div>
        
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea class="form-control" id="content" name="content" rows="5">{{ $blog->content }}</textarea>
                </div>
        
                <div class="form-group">
                    <label for="image">Image</label>
                    @if($blog->image)
                    <img src="{{ asset('images/' . $blog->image) }}" alt="{{ $blog->title }}" class="img-thumbnail mb-2" style="width: 150px; height: 150px;">
                    @endif
                    <input type="file" class="form-control-file" id="image" name="image">
                </div>
        
                <button type="submit" class="btn btn-success">Update</button>
            </form>
        </div>
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
