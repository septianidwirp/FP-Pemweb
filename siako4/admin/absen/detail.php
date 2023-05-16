<?php 
require_once '../../koneksi.php';

if(!isset($_GET['nis']) || $_GET['nis'] == '') header('Location: index.php');

$nis = $_GET['nis'];
$query = mysqli_query($koneksi, "SELECT * FROM siswa WHERE nis = $nis");

$row = mysqli_fetch_assoc($query);
$active = 'siswa';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Detail Absen - SMA PEMBANGUNAN NASIONAL</title>
	<link rel="stylesheet" href="../../resources/datatables/datatables.min.css">
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
								Detail Absen - SMA PEMBANGUNAN NASIONAL
							</div>
							<div class="float-right">
								<a href="index.php">Kembali</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<table class="table table-stripped">
							<tr>
								<td><b>Tanggal</b></td>
								<td>:</td>
								<td><?= $row['tanggal'] ?></td>
							</tr>
							<tr>
								<td><b>NIS</b></td>
								<td>:</td>
								<td><?= $row['nis'] ?></td>
							</tr>
							<tr>
								<td><b>Nama</b></td>
								<td>:</td>
								<td><?= $row['nama'] ?></td>
							</tr>
							<tr>
								<td><b></td>
								<td></td>
								<td>
									<a href="hapus.php?id=<?= $row['nis'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('apakah anda yakin?')">Hapus</a>
									<a href="index.php" class="btn btn-secondary btn-sm">Kembali</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../../resources/js/jquery.js"></script>
	<script src="../../resources/js/bootstrap.min.js"></script>
	<script src="../../resources/datatables/datatables.min.js"></script>
	<script src="../../resources/datatables/datatable.js"></script>
</body>
</html>