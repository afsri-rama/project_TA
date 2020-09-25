<?php

use App\Distributor;
use App\Kategori;
use App\Keranjang;
use App\Konsumen;
use App\Kurir;
use App\Level;
use App\Pembayaran;
use App\Pemesanan;
use App\Produk;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DummySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Level::insert([
            ['id' => 1, 'nama_level' => 'admin', 'deskripsi_level' => 'admin'],
            ['id' => 2, 'nama_level' => 'konsumen', 'deskripsi_level' => 'konsumen'],
        ]);

        User::insert([
            [
                'id' => 1,
                'username' => 'admin',
                'email' => 'admin@admin.com',
                'password' => Hash::make(123456),
                'id_level' => 1,
            ], [
                'id' => 2,
                'username' => 'konsumen',
                'email' => 'konsumen@konsumen.com',
                'password' => Hash::make(123456),
                'id_level' => 2,
            ]
        ]);

        Distributor::insert([
            [
                'id'=>1,
                'nama_distributor' => 'distributor 1',
                'wa_distributor' => '0812675970222',
                'des_distributor' => 'Ikan',
            ]
        ]);

        Kategori::insert([
            [
                'id'=>1,
                'nama_kategori'=>'Fresh Food',
            ],
            [
                'id'=>2,
                'nama_kategori'=>'Fish & Meat',
            ],
            [
                'id' => 3,
                'nama_kategori' => 'Fruit & Vegetable',
            ]
        ]);

        Konsumen::insert([
            [
                'id'=>1,
                'id_users'=>2,
                'nama_konsumen'=>'Afsri',
                'alamat_konsumen'=>'Padang',
                'wa_konsumen'=>'081267597033',
            ]
        ]);

        Produk::insert([
            [
                'id'=>1,
                'nama_produk'=>'Ikan Tongkol',
                'id_kategori'=>2,
                'harga_produk'=>'30000',
                'des_produk'=>'500 gram',
                'id_distributor'=>'1',
            ]
        ]);

        Keranjang::insert([
            [
                'id_konsumen'=>1,
                'id_produk'=>1,
                'total_produk'=>2,
                'total_harga'=>2 * 30000,
            ]
        ]);

        Kurir::insert([
            [
                'id'=>1,
                'nama_kurir'=>'Ramayana',
                'wa_kurir'=>'0808078080808',
                'des_kurir'=>'Kurir1',
            ]
        ]);

        Pembayaran::insert([
            [
                'id'=>1,
                'id_konsumen'=>1,
                'total_pembayaran'=> 2 * 30000,
            ]
        ]);

        Pemesanan::insert([
            [
                'id'=>1,
                'id_pembayaran'=>1,
                'id_kurir'=>1,
            ]
        ]);
    }
}
