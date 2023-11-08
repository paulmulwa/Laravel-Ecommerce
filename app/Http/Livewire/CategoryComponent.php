<?php

namespace App\Http\Livewire;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use Livewire\WithPagination;
use App\Http\Livewire\ShopComponent;



class CategoryComponent extends Component
{
    use WithPagination;
    public $pageSize = 12;
    public $orderBy = "Default Sorting";
    public $slug;
    public function store($product_id,$product_name,$product_price)
    {
        Cart::add($product_id,$product_name,1,$product_price)->
        associate('\App\Models\Product');
        session()->flash('sucess_message','Item added successfully');
        return redirect()->route('shop.cart');
    }


public function changePageSize($size)
{
    $this->pageSize = $size;
}
public function mount ($slug)
{
    $this->slug = $slug;
}
public function changeOrderBy($order)
{
 $this->orderBy = $order;
}

    public function render()
    {

$category = Category::where('slug', $this->slug)->first();
$category_id = $category->id;
$category_name = $category->name;
if($this->orderBy == 'Price:Low to High')
{
$products = Product::where('category_id',$category_id)->orderBy('regular_price', 'ASC')->paginate($this->pageSize);
    }
    else if($this->orderBy == 'Price:High to Low')
        {
        $products = Product::where('category_id',$category_id)->orderBy('regular_price', 'DESC')->paginate($this->pageSize);

    }
    else if($this->orderBy == 'Sort By Newness')
    {
    $products = Product::where('category_id',$category_id)->orderBy('created_at', 'DESC')->paginate($this->pageSize);

}

    else{

        $products = Product::where('category_id', $category_id)->paginate($this->pageSize);
        // return view('livewire.shop-component', ['products'=>$products]);
    }

    $categories = Category::orderBy('name','ASC')->get();
return view('livewire.category-component',['products'=>$products,'categories'=>$categories,'category_name'=>$category_name]);
}

}
