<?php

use Illuminate\Database\Seeder;
use \Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class TagTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach(range(1,20) as $index){
            DB::table("tags")->insert([
                'name' => $faker->sentence(2),
            ]);
        }
    }
}
