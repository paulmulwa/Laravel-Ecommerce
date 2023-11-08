<?php

namespace App\Http\Livewire\Admin;

use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use Illuminate\Support\Carbon;
// use App\Http\Livewire\Admin\AdminAddProductComponent;

class AdminAddProductComponent extends Component
{
use WithFileUploads;
public $name;
public $slug;
public $short_description;
public $regular_price;
public $sale_price;
public $description;
public $sku;
public $stock_status = 'instock';
public $featured = 0;
public $quantity;
public $image;
public $category_id;


public function generateslug()
    {
        $this->slug = Str::slug($this->name);

    }

public function addProduct()
{
    $this->validate([
        'name'=>'required',
        'slug'=>'required',
        'short_description'=>'required',
        'regular_price'=>'required',
        'sale_price'=>'required',
        'description'=>'required',
        'sku'=>'required',
        'stock_status'=>'required',
        'featured'=>'required',
        'quantity'=>'required',
        'image'=>'required',
        'category_id'=>'required'

]);

$product= new Product();
$product->name = $this->name;
$product->slug = $this->slug;
$product->short_description = $this->short_description;
$product->regular_price = $this->regular_price;
$product->sale_price = $this->sale_price;
$product->description = $this->description;
$product->SKU = $this->sku;
$product->stock_status = $this->stock_status;
$product->featured = $this->featured;
$product->quantity = $this->quantity;
// $image = Carbon::now()->timestamp.'.'.$this->image->extension();
$imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
$this->image->storeAs('products', $imageName);
$product->image = $imageName;
$product->category_id = $this->category_id;
$product->save();
session()->flash('message', 'Product has been added');


}

    public function render()
    {
        $categories = Category::orderBy('name','ASC')->get();
        return view('livewire.admin.admin-add-product-component', ['categories'=>$categories]);
    }
}
