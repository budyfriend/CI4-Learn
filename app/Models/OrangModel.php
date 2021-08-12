<?php

namespace App\Models;

use CodeIgniter\Model;

class OrangModel extends Model
{
    protected $table = 'orang';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama', 'alamat'];

    public function search($keyword)
    {
        // $bulder = $this->table('orang');
        // $bulder->like('nama', $keyword);
        // return $bulder;

        return $this->table('orang')
            ->like('nama', $keyword)
            ->orLike('alamat', $keyword);
    }
}
