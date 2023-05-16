<?php
//koneksi ke database

$conn = mysqli_connect("localhost", "root", "", "raport");

function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result) ) {
        $rows[] = $row;
    }
    return $rows;
}




function tambah ($data) {
    global $conn;

    $mapel = htmlspecialchars ($data["mapel"]);
    $kkm = htmlspecialchars ($data["kkm"]);
    $nilai = htmlspecialchars ($data["nilai"]);
    $predikat = htmlspecialchars ($data["predikat"]);
    $ket = htmlspecialchars ($data["ket"]);

    $query = "INSERT INTO rapor
                VALUES
                ('$mapel', '$kkm', '$nilai', '$predikat', '$ket')
                ";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}
















