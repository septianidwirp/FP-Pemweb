<?php 

if(!isset($_POST['tambah'])) header('Location: tambah.php');

require_once '../../koneksi.php';
$mapel = mysqli_real_escape_string($koneksi, isset($_POST['mapel']) ? $_POST['mapel'] : '');
$kkm = mysqli_real_escape_string($koneksi, isset($_POST['kkm']) ? $_POST['kkm'] : '');
$nilai = mysqli_real_escape_string($koneksi, isset($_POST['nilai']) ? $_POST['nilai'] : '');
$predikat = mysqli_real_escape_string($koneksi, isset($_POST['predikat']) ? $_POST['predikat'] : '');
$ket = mysqli_real_escape_string($koneksi, isset($_POST['ket']) ? $_POST['ket'] : '');
$query = mysqli_query($koneksi, "INSERT INTO rapor (mapel, kkm, nilai, predikat, ket) VALUES ('$mapel', '$kkm', '$nilai','$predikat', '$ket')");
if($query){
	$_SESSION['sukses'] = 'Data Berhasil Ditambahkan!';
	header('Location: index.php');
} else {
	$_SESSION['gagal'] = 'Data Gagal Ditambahkan!';
	header('Location: index.php');
}