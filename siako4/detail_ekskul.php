<?php 

require_once 'koneksi.php';
if(!isset($_GET['id']) || $_GET['id'] == '') header('Location: index.php');

$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM tbl_detail_ekskul WHERE id = $id");

$row = mysqli_fetch_assoc($query);
$aktif = 'siswa';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Detail Ekskul - SMA PEMBANGUNAN NASIONAL</title>
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
					<?php echo $row['judul'] ?>
				</div>
					<?php echo $row['isi'] ?>	
			</div>
			<?php require 'sidebar.php'; ?>
		</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/datatables/datatables.min.js"></script>
	<script src="resources/datatables/datatable.js"></script>
</body>
</html>