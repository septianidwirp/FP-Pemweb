<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>E-Learning - SMA PEMBANGUNAN NASIONAL</title>
    <link rel="stylesheet" href="resources/fonts/stylesheet.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
    <div class="container bg-light">
        <div class="logo clearfix">
            <div class="float-left mt-3 mb-3">
                <img src="resources/images/logo.png" alt="Logo Sekolah" width="70px" class="float-left mr-3">
                <div class="text float-right">
                    <span class="sma">SMA PEMBANGUNAN NASIONAL</span><br>
                    <span class="visi">MEWUJUDKAN KARAKTER SEMANGAT BELA NEGARA!</span>
                </div>
            </div>
        </div>
            
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <div class="container">
             
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
             
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
             
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                      <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active " href="elearning.php">E-Learning</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="rapot.php">E-Raport</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="from_absen/index.php">Absen</a>
                    </li>
                  </ul>
                  <a href="index.php" class="btn btn-outline-success mr-2">Logout</a>
                </div>
            </div>
        </nav>
<center>
        <h1>Data Nilai Risma Nurhaliza</h1>
    <h2>Nilai Siswa Tahun Ajaran 2021/2022</h2>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Mata Pelajaran</th>
            <th>KKM</th>
            <th>Nilai</th>
            <th>Predikat</th>
            <th>Keterangan</th>
        </tr>
        <?php
            include "koneksi.php";

            $no = 1;
            $data = mysqli_query($koneksi,"SELECT * FROM rapor");
            while ($hasil = mysqli_fetch_array($data)) {
                ?>
            <tr>
                <td><?php echo $no++; ?> </td>
                <td><?php echo $hasil['mapel']; ?> </td>
                <td><?php echo $hasil['kkm']; ?> </td>
                <td><?php echo $hasil['nilai']; ?> </td>
                <td><?php echo $hasil['predikat']; ?> </td>
                <td><?php echo $hasil['ket']; ?> </td>
            </tr>
        <?php
         }
        ?>
    </table>
</center>

<center> 
<h3>Rata-Rata Nilai : 88.82</h3>
<h3>Peringkat 10 dari 35 siswa</h3>
<h3>Catatan Guru : Tingkatkan Prestasi Belajar! Sampai berjumpa di kelas 11</h3>
</center>

    </body>
</html>