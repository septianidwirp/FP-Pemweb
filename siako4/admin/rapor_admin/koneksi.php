<?php
$koneksi = mysqli_connect("localhost","root","","raport");

if (mysqli_connect_errno()) {
    echo "Koneksi Database Gagal:". mysqli_connect_errno();
}
?>