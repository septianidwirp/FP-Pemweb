<?php 

require_once 'koneksi.php';
$query = mysqli_query($koneksi, "SELECT id, nama_ekskul, pembina FROM tbl_ekskul");
$aktif = 'ekskul';
$no = 1;
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Ekskul - SMA PEMBANGUNAN NASIONAL</title>
	<link rel="stylesheet" href="resources/datatables/datatables.min.css">
	<link rel="stylesheet" href="resources/fonts/stylesheet.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<div class="container bg-light">
		<!-- top bar -->
		<div class="logo clearfix">
			<div class="float-left mt-3 mb-3">
				<img src="resources/images/logo.png" alt="Logo Sekolah" width="70px" class="float-left mr-3">
				<div class="text float-right">
					<span class="sma">SMA PEMBANGUNAN NASIONAL</span><br>
					<span class="visi">MEWUJUDKAN SISWA BERKARAKTER BELA NEGARA!</span>
				</div>
			</div>
		</div>
			
		<!-- nav bar -->
		<?php require_once 'navbar.php'; ?>

		<!-- content -->
		<div class="row p-3">
			<div class="col-md-8">
				<div class="title mb-3">
					Daftar Siswa
				</div>
				<table id="table_id" class="dataTable table table-bordered">
				    <thead>
				        <tr>
				            <th>No</th>
				            <th>Nama Ekskul</th>
				            <th>Nama Pembina</th>
				        </tr>
				    </thead>
				    <tbody>
						<?php while($row = mysqli_fetch_assoc($query)) : ?>
				        	<tr>
				        		<td><?= $no++ ?></td>
				        		<td><a href="detail_ekskul.php?id=<?= $row['id'] ?>" target="_blank"><?= isset($row['nama_ekskul']) ? $row['nama_ekskul'] : 'PRAMUKA' ?></a></td>
				        		<td><?= $row['pembina'] ?></td>
				        	</tr>
						<?php endwhile; ?>
				    </tbody>
				</table>
			</div>
			<?php require 'sidebar.php'; ?>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/datatables/datatables.min.js"></script>
	<script src="resources/datatables/datatable.js"></script>
</body>
</html>