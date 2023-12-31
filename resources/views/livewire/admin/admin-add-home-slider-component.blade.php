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
                     <span></span> Add New Slider
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
                                         Add New Slide

                                     </div>
                                     <div class="col-md-6">
                 <a href="{{ route('admin.home.slider') }}" class="btn btn-sucess float-end">View All Slides</a>
                                     </div>

                                 </div>

                                </div>
                             <div class="card-body">
                                @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <form wire:submit.prevent="addSlide">
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Top Title</label>
                                        <input type="text" class="form-control"
                                        wire:model="top_title" placeholder="Enter Slider Top Title">
                                        @error('top_title')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Title</label>
                                        <input type="text" class="form-control"
                                        wire:model="title" placeholder="Enter Slider Title">
                                        @error('title')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="sub_title" class="form-label">Sub Title</label>
                                        <input type="text" name="sub_title" wire:model="sub_title" class="form-control" placeholder="Enter Slider Sub Title">

                                        @error('sub_title')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="offer" class="form-label">Offer</label>
                                        <input type="text" name="offer" wire:model="offer" class="form-control"
                                        placeholder="Enter Offer">
                                        @error('offer')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="link" class="form-label">Link</label>
                                        <input type="text" name="link" wire:model="link" class="form-control" placeholder="Enter Link">

                                        @error('link')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>


                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Status</label>
                                        <select class="form-select" wire:model="status">
                                            <option value="">Select option</option>

                                            <option value="1">Active</option>
                                            <option value="0">InActive</option>
                                        </select>
                                        @error('status')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Image</label>
                                        <input type="file" class="form-control" wire:model="image">
                                        @if($image)
                                        <img src="{{$image->temporaryUrl()}}" width="100"/>
                                        @endif

                                        @error('image')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>

                                    <button type="submit" class="btn btn-success float-end">Create</button>
                                </form>


                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
     </main>
 </div>
