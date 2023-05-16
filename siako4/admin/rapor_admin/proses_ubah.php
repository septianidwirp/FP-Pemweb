<?php 

if(!isset($_GET['id']) || $_GET['id'] == '') header('Location: index.php');

require_once '../../koneksi.php';
$id = $_GET['id'];
$mapel = mysqli_real_escape_string($koneksi, $_POST['mapel']);
$kkm = mysqli_real_escape_string($koneksi, $_POST['kkm']);
$nilai = mysqli_real_escape_string($koneksi, $_POST['nilai']);
$predikat = mysqli_real_escape_string($koneksi, $_POST['predikat']);
$ket = mysqli_real_escape_string($koneksi, $_POST['ket']);
$query = mysqli_query($koneksi, "UPDATE rapor SET mapel = '$mapel', kkm = '$kkm', nilai = '$nilai', predikat = '$predikat',ket = '$ket' WHERE id = $id");
if($query){
	$_SESSION['sukses'] = 'Data Berhasil Diubah!';
	header('Location: index.php');
} else {
	$_SESSION['gagal'] = 'Data Gagal Diubah!';
	header('Location: index.php');
}

?>