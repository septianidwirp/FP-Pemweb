<?php
session_start(); 
    //membuat koneksi
    $koneksi = mysqli_connect("localhost", "root", "", "sekolahkuu");

    
    //memasukkan data ke array
    $id =$_POST['id'];
    $tanggal      = $_POST['tanggal'];
        $nis       = $_POST['nis'];
        $nama         = $_POST['nama'];
        $keterangan    = $_POST['keterangan'];

        mysqli_query($koneksi,"INSERT INTO siswa values ('$id', '$tanggal', '$nis','$nama','$keterangan')");

        echo "<script> alert('berhasil absen'); </script>";

    //kembali ke halaman sebelumnya
    header("location: ../home.php?msg=berhasil");