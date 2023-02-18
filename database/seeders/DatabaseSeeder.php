<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Price;
use App\Models\Product;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

//        $this->call([
//            ProductSeeder::class,
//           PriceSeeder::class,
//        ]);

        Product::factory(13)->create()
            ->each(function ($product){
               Price::create([
                   'product_id' => $product->id,
                   'type' => fake()->boolean(),
                   'value'=>fake()->randomFloat(2,1, 13),
               ]);
            });
    }
}
