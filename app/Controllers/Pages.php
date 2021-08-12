<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Budyfriend Code',
            'test' => ['satu', 'dua', 'tiga']
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me | Budyfriend Code'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us | Budyfriend Code',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Kp. Kemayungan RT/RW 002/001 Kel. Sukajaya Kec. Pontang',
                    'kota' => 'Serang'
                ], [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jalan Pergudangan Industri Taman Tekno BSD, Jl. Sektor 11 No.3A, Setu, Kec. Setu',
                    'kota' => 'Tangerang Selatan'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
