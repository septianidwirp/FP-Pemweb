<?php

require_once 'koneksi.php';

$nis = $_POST['nis'];
$password = $_POST['password'];

$sql = mysqli_query($koneksi,"SELECT nis,password FROM tbl_siswa where nis = '$nis' ");

if ($sql) {
	$data = mysqli_fetch_assoc($sql);
	if ($data['password'] == $password ) {
		$_SESSION['nis'] = $nis;
		header('Location: home.php '); 
	}else{
		header('Location: login2.php '); 
	}
}

?>