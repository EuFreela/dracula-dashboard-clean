<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->delete();
        $data = array(
            [
                'name' => "Dracula",
                'email' => 'dracula@dracula.com',
                'password' => hash::make('dracula'),
                'created_at' =>  new DateTime(),
                'updated_at' => new DateTime()         
            ]            
        );
        DB::table('users')->insert($data);
    }
}
