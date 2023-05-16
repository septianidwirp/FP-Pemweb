<?php 

if(!isset($_GET['id']) || $_GET['id'] == '') header('Location: index.php');

require_once '../../koneksi.php';
$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM rapor WHERE id = $id");
$rapor = mysqli_fetch_assoc($query);

$active = 'rapor'; 
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ubah Rapor - SMA PEMBANGUNAN NASIONAL</title>
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
                                Ubah Rapor
                            </div>
                            <div class="float-right">
                                <a href="index.php">Kembali</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="proses_ubah.php?id=<?= $rapor['id'] ?>" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="mapel">Mapel</label>
                                <input type="text" value="<?= $rapor['mapel'] ?>" class="form-control" id="mapel" placeholder="mapel" autocomplete="off" required="required" name="mapel">
                            </div>
                            <div class="form-group">
                                <label for="kkm">KKM</label>
                                <input type="number" value="<?= $rapor['kkm'] ?>" class="form-control" id="kkm" placeholder="kkm" autocomplete="off" required="required" name="kkm">
                            </div>
                            <div class="form-group">
                                <label for="nilai">Nilai</label>
                                <input type="number" value="<?= $rapor['nilai'] ?>" class="form-control" id="nilai" placeholder="nilai" autocomplete="off" required="required" name="nilai">
                            </div>
                                    <div class="form-group">
                                        <label for="predikat">Predikat</label>
                                        <input type="text" value="<?= $rapor['predikat'] ?>" class="form-control" id="predikat" placeholder="predikat" autocomplete="off" required="required" name="predikat">
                                    </div>
                                    <div class="form-group">
                                        <label for="ket">Keterangan</label>
                                        <input type="text" value="<?= $rapor['ket'] ?>" class="form-control" id="ket" placeholder="ket" autocomplete="off" required="required" name="ket">
                                    </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-sm btn-primary" name="ubah">Ubah</button>
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
    <script src="../../resources/ckeditor/ckeditor.js"></script>
</body>
</html>