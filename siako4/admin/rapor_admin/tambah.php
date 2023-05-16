<?php
$active = 'rapor'; 

require_once '../../koneksi.php';
$query = mysqli_query($koneksi, "SELECT id, nama FROM rapor");

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Tambah Rapor - SMA PEMBANGUNAN NASIONAL</title>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>
    <?php require_once '../navbar.php'; ?>
    <div class="container mt-3">
        <div class="row">
            <div class="col">
                <div class="card shadow">
                    <div class="card-header">
                        <div class="clearfix">
                            <div class="float-left">
                                Tambah Rapor
                            </div>
                            <div class="float-right">
                                <a href="index.php">Kembali</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="proses_tambah.php">
                            <div class="form-group">
                                <label for="mapel">Mapel</label>
                                <input type="text" class="form-control" id="mapel" placeholder="nama mapel" autocomplete="off" required="required" name="mapel">
                            </div>
                             <div class="form-group">
                                <label for="kkm">KKM</label>
                                <input type="text" class="form-control" id="kkm" placeholder="nama kkm" autocomplete="off" required="required" name="kkm">
                            </div>
                             <div class="form-group">
                                <label for="nilai">Nilai</label>
                                <input type="text" class="form-control" id="nilai" placeholder="nama nilai" autocomplete="off" required="required" name="nilai">
                            </div>
                             <div class="form-group">
                                <label for="predikat">Predikat</label>
                                <input type="text" class="form-control" id="predikat" placeholder="nama predikat" autocomplete="off" required="required" name="predikat">
                            </div>
                             <div class="form-group">
                                <label for="ket">Keterangan</label>
                                <input type="text" class="form-control" id="ket" placeholder="nama ket" autocomplete="off" required="required" name="ket">
                            </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-sm btn-primary" name="tambah">Tambah</button>
                                <button type="reset" class="btn btn-sm btn-danger" onclick="return confirm('apakah anda yakin?')">Batal</button>
                                <a href="index.php" class="btn btn-sm btn-secondary">Kembali</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../../resources/js/jquery.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
</body>
</html>