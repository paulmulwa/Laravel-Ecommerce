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
                     <span></span>Edit Product
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
                                         Edit Product

                                     </div>
                                     <div class="col-md-6">
                 <a href="{{ route('admin.products') }}" class="btn btn-sucess float-end">View All Products</a>
                                     </div>

                                 </div>

                                </div>
                             <div class="card-body">
                                @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <form wire:submit.prevent="updateProduct">
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-label">Name</label>
                                        <input type="text" name="name" class="form-control" wire:model="name" wire:keyup="generateslug" placeholder="Enter Product Name">

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

                                    <div class="mb-3 mt-3">
                                        <label for="short_description" class="form-label">Short Description</label>
                                        <textarea name="short_description" wire:model="short_description" class="form-control" placeholder="Enter short description"></textarea>
                                        @error('short_description')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="description" class="form-label">Description</label>
                                        <textarea name="description" wire:model="description" class="form-control" placeholder="Enter description"></textarea>
                                        @error('description')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="regular_price" class="form-label">Regular Price</label>
                                        <input type="text" name="regular_price" wire:model="regular_price" class="form-control" placeholder="Enter regular_price">


                                        {{-- <textarea name="regular_price" class="form-control" placeholder="Enter regular_price"></textarea> --}}
                                        @error('regular_price')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>



                                    <div class="mb-3 mt-3">
                                        <label for="sale_price" class="form-label">Sale Price</label>
                                        <input type="text" name="sale_price" wire:model="sale_price" class="form-control" placeholder="Enter sale price">
                                        {{-- <textarea name="sale_price" class="form-control" placeholder="Enter sale_price"></textarea> --}}
                                        @error('sale_price')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="sku" class="form-label">SKU</label>
                                        <input type="text" name="sku" class="form-control" wire:model="sku" placeholder="Enter sku">
                                        @error('sku')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="stock_status" class="form-label" wire:model="stock_status">Stock Status</label>
                                        <select class="form-control">
                                            <option value="instock">Instock</option>
                                            <option value="outofstock">Out of stock</option>
                                        </select>
                                            @error('stock_status"')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="featured" class="form-label">Featured</label>
                                        <select class="form-control" name="featured" wire:model="featured">
                                            <option value="0">No</option>
                                            <option value="1">Yes</option>
                                        </select>
                                            @error('featured')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="quantity" class="form-label">Quantity</label>
                                        <input type="text" name="quantity" wire:model="quantity" class="form-control" placeholder="Enter product quantity">

                                        @error('quantity')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="image" class="form-label">Image</label>
                                        <input type="file" name="image" class="form-control" wire:model="newimage"/>
                                            @if($newimage)
                                            <img src="{{$image->temporaryUrl()}}" width="250"/>
                                            @else
                                            <img src="{{asset('assets/imgs/products/')}}/{{$image}}" width="120"/>

                                            @endif
                                            @error('image')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror

                                    </div>


                                    <div class="mb-3 mt-3">
                                        <label for="category" class="form-label">Category</label>
                                        <select class="form-control" name="category_id" wire:model="category_id">
                                            <option value="">Select Category</option>
@foreach ($categories as $category)
<option value="{{ $category->id }}">{{ $category->name }}</option>

@endforeach
                                            {{-- <option value="0">No</option>
                                            <option value="1">Yes</option> --}}
                                        </select>
                                            @error('category')
                                        <p class="text-danger">{{$message}}</a>
                                            @enderror
                                    </div>




                                    <button type="submit" class="btn btn-success float-end">Update</button>
                                </form>


                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
     </main>
 </div>
