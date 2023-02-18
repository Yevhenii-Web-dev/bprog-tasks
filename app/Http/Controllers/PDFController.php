<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Barryvdh\DomPDF\Facade\Pdf;


class PDFController extends Controller
{
    public function generatePDFProductList()
    {
        $products = Product::all();

        $pdf = PDF::loadView('PDF.product.index', compact('products'));

        return $pdf->download('products.pdf');
    }
}
