<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-12">
            <a class="btn btn-primary mt-3" href="/komik/create" role="button">Tambah Data Komik</a>
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success mt-2" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
            <h1 class="mt-3">Daftar Komik</h1>
            <table class="table table-striped table-inverse">
                <thead class="thead-inverse">
                    <tr>
                        <th>No</th>
                        <th>Sampul</th>
                        <th>Judul</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($komik as $i => $k) : ?>
                        <tr>
                            <td scope="row"><?= ++$i; ?></td>
                            <td>
                                <img src="/img/<?= $k['sampul'] ?>" alt="<?= $k['judul'] ?>" class="sampul">
                            </td>
                            <td><?= $k['judul'] ?></td>
                            <td>
                                <a class="btn btn-primary" href="/komik/<?= $k['slug']; ?>" role="button">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>