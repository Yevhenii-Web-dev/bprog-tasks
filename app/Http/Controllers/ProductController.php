<?php

namespace App\Http\Controllers;

use App\Models\Product;

class ProductController extends Controller
{

    public function index()
    {
        $products = Product::when(request('fraza'), function ($query) {
            $query->where('nazwa', 'LIKE', '%' . request('fraza') . '%');
        })->orderBy('cena', 'asc')
            ->get();

        return view('product.index', compact('products'));

    }


    public function storeRandomItems(int $value): string
    {
        try {
            Product::factory($value)->create();

            $items = Product::limit($this->getFifteenPercentItems())->get();

            $this->updatePriceItems($items);

            return response()->json([
                'status' => 'Success',
                'massage' => "Created successfully $value items"
            ]);
        } catch (\Exception $error) {
            return response()->json([
                'status' => 'Error',
                'massage' => "Error, some problems in ProductController.storeRandomItems function =>  \"{$error->getMessage()}\"",
            ]);
        }
    }

    public function getFifteenPercentItems(): int
    {
        $itemCount = count(Product::all());

        return ($itemCount * 15) / 100;
    }

    public function updatePriceItems($items): void
    {
        foreach ($items as $item) {
            $item->update([
                'cena' => $this->addPromotionalPriceToPrice($item->cena, $item->cena_promocyjna),
            ]);
        }
    }

    public function addPromotionalPriceToPrice(string $price, string $promotionalPrice): string
    {
        return (string)((int)$promotionalPrice + (int)$price);
    }
}
