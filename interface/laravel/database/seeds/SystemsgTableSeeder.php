<?php

use Illuminate\Database\Seeder;

class SystemsgTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('systemsg')->delete();
        $data = array(
            [
                'code' => 1,
                'type' => 'success',
                'msg' => 'Edição realizada com sucesso.',
                'created_at' =>  new DateTime(),
                'updated_at' => new DateTime()         
            ],
            [
                'code' => 2,
                'type' => 'error',
                'msg' => 'Não foi possível atualizar o cadastro.',
                'created_at' =>  new DateTime(),
                'updated_at' => new DateTime()         
            ],
            [
                'code' => 3,
                'type' => 'success',
                'msg' => 'Estabelecendo conexão..',
                'created_at' =>  new DateTime(),
                'updated_at' => new DateTime()         
            ],
            [
                'code' => 4,
                'type' => 'error',
                'msg' => 'Não foi possível estabelecer conexão.',
                'created_at' =>  new DateTime(),
                'updated_at' => new DateTime()         
            ]
        );
        DB::table('systemsg')->insert($data);
    }
}
