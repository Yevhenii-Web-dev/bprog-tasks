<?php

use App\Http\Controllers\EventController;
use App\Http\Controllers\PDFController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//add random products
Route::get('/zad1/dodajlosowe/{liczba}', [ProductController::class, 'storeRandomItems']);
// filter products by nazwa column
Route::get('/zad1/lista/{fraza}', [ProductController::class, 'index']);
// generator pdf file by products
Route::get('/zad6/generowanie-pdf', [PDFController::class, 'generatePDFProductList']);
//dd convert array by events
Route::get('/events', [EventController::class, 'convertArrayEvents']);
