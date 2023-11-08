<div>
    <style>
     nav svg{
         height:20px;
     }
     nav .hidden{
         display:block;
     }
    </style>
    <main class="main">
         <div class="page-header breadcrumb-wrap">
             <div class="container">
                 <div class="breadcrumb">
                     <a href="/" rel="nofollow">Home</a>
                     <span></span>Edit Category
                 </div>
             </div>
         </div>
         <section class="mt-50 mb-50">
             <div class="container">
                 <div class="row">
                     <div class="col-md-12">
                         <div class="card">
                             <div class="card-header">
                                 <div class="row">
                                     <div class="col-md-6">
                                         Add New Category

                                     </div>
                                     <div class="col-md-6">
                 <a href="{{ route('admin.categories') }}" class="btn btn-sucess float-end">View All Categories</a>
                                     </div>

                                 </div>

                                </div>
                             <div class="card-body">
                                @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <form wire:submit.prevent="updateCategory">
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-label">Category Name</label>
                                        <input type="text" name="name" class="form-control"
                                        wire:model="name" placeholder="Enter Category Name">


                                        @error('name')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="slug" class="form-label">Slug</label>
                                        <input type="text" name="slug" wire:model="slug" wire:keyup="generateslug" class="form-control" placeholder="Enter Category Slug">

                                        @error('slug')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    {{-- <div class="mb-3 mt-3">
                                        <label for="image" class="form-label">Image</label>
                                        <input type="file" wire:model="newimage" class="form-control"/>

                                        @error('newimage')
                                        <p class="text-danger">{{$message}}</a>    @enderror
                                            @if($newimage)
                                            <img src="{{$newimage->temporaryUrl()}}" width="120" />
                                           @else
                                           <img src="{{ asset('asset/imgs/categories')}}/{{$image}}" width="120">
                                            @endif
                                    </div> --}}





                                    <div class="mb-3 mt-3">
                                        <label for="image" class="form-label">Image</label>
                                        <input type="file" wire:model="newimage" class="form-control"/>

                                        @error('newimage')
                                        <p class="text-danger">{{$message}}</a>    @enderror
                                            @if($newimage)
                                            <img src="{{$newimage->temporaryUrl()}}" width="120" />
                                           @else
                                           <img src="{{ asset('asset/imgs/categories')}}/{{$image}}" width="120">
                                            @endif
                                    </div>



















                                    <div class="mb-3 mt-3">
                                        <label for="is_popular" class="form-label">Popular</label>
<select class="form-control" name="is_popular" wire:model="is_popular">
    <option value="0">No</option>
    <option value="1">Yes</option>
</select>

                                        @error('is_popular')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                            {{-- @if($image)
                                            <img src="{{$image->temporaryUrl()}}" width="120" />
                                    @endif --}}
                                    </div>

                                    <button type="submit" class="btn btn-sucess float-end">Update</button>
                                </form>


                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
     </main>
 </div>
