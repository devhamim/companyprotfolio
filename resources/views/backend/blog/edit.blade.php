@extends('backend.layouts.app')

@section('content')
<div class="dashboard-breadcrumb mb-30">
    <h2>Portfolio</h2>
</div>
<div class="row g-4">
    <div class="col-xxl-6 col-md-4 m-auto">
        <div class="panel">
            <div class="panel-header">
                <h5>Edit Portfolio</h5>
            </div>
            <div class="panel-body">
                <form action="{{ route('blog.update', $blogs->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <input type="hidden" name="id" value="{{ $blogs->id }}">
                    <div class="row g-3">
                        
                        <div class="col-12">
                            <label class="form-label">Title</label>
                            <input type="text" name="title" class="form-control form-control-sm" value="{{ $blogs->title }}">
                            
                        </div>
                            
                        <div class="col-12">
                            <div class="upload-category-thumbnail">
                                <label class="form-label" id="addCatThumb">Image</label>
                                <input type="file" name="image" class="form-control" id="thumbUpload" value="{{ $blogs->image }}">
                            </div>
                            <div class="my-3">
                                <img width="100" id="blah" src="{{ asset('uploads/blog') }}/{{ $blogs->image }}" alt="">
                            </div>
                        </div>
                        {{-- <div class="col-sm-6">
                            <label class="form-label" for="tags">Tags</label>
                            <input type="text" name="tags" id="tags" class="form-control form-control-sm @error('tags') is-invalid @enderror" value="{{ old('tags') }}">
                        </div>
                        <div id="selected-tags">
                            <!-- Existing tags will be displayed here -->
                                @foreach(explode(',', $blogs->tags) as $tag)
                                    <span class="tag bg-success text-white pb-1 px-2 rounded mx-1">{{ $tag }}</span>
                                @endforeach
                        </div> --}}
                        <div class="col-6">
                            <label class="form-label">Home Page</label>
                            <div class="form-check mb-10">
                                <input class="form-check-input" type="radio" name="define" id="gridRadios1" value="1" {{ $blogs->define == 1 ? 'checked' : '' }}>
                                <label class="form-check-label" for="gridRadios1">
                                    No
                                </label>
                            </div>
                            <div class="form-check mb-10">
                                <input class="form-check-input" type="radio" name="define" id="gridRadios1" value="2" {{ $blogs->define == 2 ? 'checked' : '' }}>
                                <label class="form-check-label" for="gridRadios1">
                                    Yes
                                </label>
                            </div>
                        </div>
                        
                        <div class="col-12">
                            <label class="form-label">Description</label>
                            <textarea rows="7" id="summernote" name="description" class="form-control form-control-sm">{!! $blogs->description !!}</textarea>
                        </div>
                        <div class="col-12">
                            <label class="form-label">Status</label>
                            <select name="status" class="form-control form-control-sm" id="">
                                <option value="1" {{ $blogs->status == 1 ? 'selected' : '' }}>Active</option>
                                <option value="2" {{ $blogs->status == 2 ? 'selected' : '' }}>Deactive</option>
                            </select>
                        </div>
                        <div class="col-12 d-flex justify-content-end">
                            <div class="btn-box">
                                <button type="submit" class="btn btn-sm btn-primary">Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</div>
@endsection

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function() {
    let selectedTags = [];

    // Add existing tags to the selectedTags array
    @foreach(explode(',', $blogs->tags) as $tag)
        selectedTags.push('{{ $tag }}');
    @endforeach

    // Function to update selected tags
    function updateSelectedTags() {
        $('#selected-tags').empty();
        selectedTags.forEach(function(tag) {
            $('#selected-tags').append('<span class="tag bg-success text-white pb-1 px-2 rounded mx-1">' + tag + '</span><a href="#" class="remove-tag" data-tag="' + tag + '">Remove</a>');
        });
    }

    // Initial update of selected tags
    updateSelectedTags();

    $('#tags').on('keydown', function(e) {
        if (e.key === 'Enter') {
            e.preventDefault(); // Prevent form submission on Enter
            const tag = $(this).val().trim();
            if (tag !== '') {
                selectedTags.push(tag);
                $(this).val('');
                updateSelectedTags();
            }
        }
    });
    
    // Handle tag removal
    $('#selected-tags').on('click', '.remove-tag', function(e) {
        e.preventDefault();
        const tagToRemove = $(this).data('tag');
        selectedTags = selectedTags.filter(tag => tag !== tagToRemove); // Reassigning is allowed now
        updateSelectedTags();
    });
});

</script>