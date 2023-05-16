<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>E-Learning - SMA PEMBANGUNAN NASIONAL</title>
  <link rel="stylesheet" href="../resources/fonts/stylesheet.css">
  <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
  <div class="container bg-light">
    <div class="logo clearfix">
      <div class="float-left mt-3 mb-3">
        <img src="../resources/images/logo.png" alt="Logo Sekolah" width="70px" class="float-left mr-3">
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
            <a class="nav-link" href="../home.php">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active " href="../elearning.php">E-Learning</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../rapot.php">E-Raport</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="from_absen/index.php">Absen</a>
          </li>
          </ul>
          <a href="../index.php" class="btn btn-outline-success mr-2">Logout</a>
                </div>
      </div>
    </nav>
<br>
<div class="container">
  <div class="panel panel-default">
    <head><div class="panel-heading">ABSEN SIAKO</div></head>
    <div class="panel-body">
      <!-- membuat form  -->
        <form action="absen.php" method="POST">
          <div class="control-group after-add-more">
            <label>Tanggal</label>
            <input type="date" name="tanggal" class="form-control">
            <label>Nama </label>
            <input type="text" name="nama" class="form-control">
            <label>NIS </label>
            <input type="number" name="nis" class="form-control">
            <label>Keterangan</label>
            <select class="form-control" name="keterangan">
                <option>Masuk</option>
                <option>Izin</option>
                <option>Sakit</option>
                <option>Alpa</option>
            </select>
            <br>
            <hr>
          </div>
          <button>Submit</button>
          <body>
        </form>

    </div>
  </div>
</div>

</body>
</html>