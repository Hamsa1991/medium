<?php

use Illuminate\Database\Seeder;
use \Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class ArticleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach(range(1,30) as $index){
            DB::table("articles")->insert([
                'name' => $faker->sentence(10),
                'description' => $faker->paragraph(10),
                'user_id' => 1
            ]);
        }
    }
}
