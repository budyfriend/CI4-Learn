<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 class="mt-2">Detail Komik</h2>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="/img/<?= $komik['sampul'] ?>" class="card-img" alt="<?= $komik['judul'] ?>">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $komik['judul'] ?></h5>
                            <p class="card-text"><strong>Penulis : <?= $komik['penulis']; ?></strong></p>
                            <p class="card-text"><small class="text-muted"><strong>Penerbit : <?= $komik['penerbit']; ?></strong></small></p>

                            <a class="btn btn-warning" href="/komik/edit/<?= $komik['slug'] ?>" role="button">Edit</a>
                            <form action="/komik/<?= $komik['id'] ?>" method="POST" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button onclick="return confirm('Apakah anda yakin ingin menghapus data ini?')" type="submit" class="btn btn-danger">Delete</button>
                            </form>
                            <br><br>
                            <a href="/komik" role="button">Kembali ke daftar komik</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>