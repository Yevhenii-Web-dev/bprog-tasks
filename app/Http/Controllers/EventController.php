<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\Storage;

class EventController extends Controller
{
    public function convertArrayEvents()
    {
        include_once(base_path() . './sources/zadanie6.php');

        $table_target = [];
        foreach($tabela_start as $row) {
            $date = date('Ymd',strtotime($row['data']));

            if (!isset($table_target[$date])) {
                $table_target[$date] = [];
            }
            array_push($table_target[$date], $row['name']);
        }
        ksort($table_target);

        dd($table_target);
    }



}
