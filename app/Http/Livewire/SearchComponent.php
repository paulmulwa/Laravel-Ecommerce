<?php

namespace App\Http\Livewire;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use Livewire\WithPagination;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\SearchComponent;



class SearchComponent extends Component
{
    use WithPagination;
    public $pageSize = 12;
    public $orderBy = "Default Sorting";




public $q;
public $search_term;
public function mount()
{
    $this->fill(request()->only('q'));
    $this->search_term = '%'.$this->q . '%';
}



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
public function changeOrderBy($order)
{
 $this->orderBy = $order;
}

    public function render()
    {
    //  $products = Product::paginate($this->pageSize);
    //  return view('livewire.shop-component', ['products'=>$products]);
    //  }

 if($this->orderBy == 'Price:Low to High')
{
$products = Product::where('name','like', $this->search_term)->orderBy('regular_price','ASC')->paginate($this->pageSize);
    }
    else if($this->orderBy == 'Price:Low to High')
        {
    $products = Product::where('name','like', $this->search_term)->orderBy('regular_price', 'DESC')->paginate($this->pageSize);

    }
    else if($this->orderBy == 'Sort By Newness')
    {
    $products = Product::where('name','like', $this->search_term)->orderBy('created_at', 'DESC')->paginate($this->pageSize);

}
    else
     {
        $products = Product::where('name','like', $this->search_term)->paginate($this->pageSize);

     }

     $categories = Category::orderBy('name','ASC')->get();
    return view('livewire.search-component', ['products'=>$products,'categories'=>$categories]);
}

}
//}
