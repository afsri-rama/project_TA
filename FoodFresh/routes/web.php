<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/login', 'AuthController@loginIndex')->name('loginIndex');
Route::post('/login', 'AuthController@login')->name('login');
Route::get('/logout', 'AuthController@logout')->name('logout');
Route::get('/register', 'AuthController@registerIndex')->name('registerIndex');
Route::post('/register', 'AuthController@register')->name('register');

Route::get('/', function () {
    return view('konsumen.home');
})->name('home');

Route::resource('produk_konsumen', 'ProdukKonumenController');
Route::resource('kategori_konsumen', 'KategoriKonsumenController');
Route::get('/detail/{idProduk}', 'DetailProdukController@getDetail')->name('detail.getDetail');

Route::group(['middleware' => ['auth']], function () {
    Route::put('/checkout/pesan', 'CheckoutController@pesan')->name('checkout.pesan');
    Route::resource('checkout', 'CheckoutController');
    Route::resource('keranjang', 'KeranjangController');
    Route::group(['prefix' => 'keranjang'], function () {
        Route::post('/add_cart/{idProduk}', 'KeranjangController@addCart')->name('keranjang.addCart');
    });
    Route::resource('pembayaran', 'PembayaranController');
    Route::resource('konfirmasi', 'KonfirmasiController');
    Route::resource('kontak', 'KontakController');
});


Route::group(['middleware' => ['auth']], function () {
    Route::group(['prefix' => 'admin'], function () {
        Route::get('/', function () {
            return view('admin.welcome');
        })->name('admin.home');
        Route::resource('kategori', 'KategoriController');
        Route::resource('level', 'LevelController');
        Route::resource('user', 'UserController');
        Route::resource('distributor', 'DistributorController');
        Route::resource('kurir', 'KurirController');
        Route::resource('konsumen', 'KonsumenController');
        Route::resource('produk', 'ProdukController');

        Route::resource('pembayaran_admin', 'PembayaranAdminController');
        Route::group(['prefix' => 'pembayaran_admin'], function () {
            Route::put('/pembayaran_admin/konfirmasi/{id_pembayaran}', 'PembayaranAdminController@konfirmasi')->name('pembayaran_admin.konfirmasi');
        });
        Route::resource('pemesanan', 'PemesananController');
        Route::resource('pembelian', 'PembelianController');

    });
});

