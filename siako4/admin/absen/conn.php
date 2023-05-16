<?php
$conn = mysqli_connect("localhost","root","","sekolahkuu");

if (mysqli_connect_errno()) {
    echo "Koneksi Database Gagal:". mysqli_connect_errno();
}
?>