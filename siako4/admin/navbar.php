<?php
require_once 'cek_session.php';
$base_url = "http://localhost/siako4/" 
?>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	<div class="container">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link <?= $active == 'dashboard' ? 'active' : '' ?>" href="<?= $base_url ?>admin">Dashboard</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<?= $base_url ?>" target="_blank">Lihat Website</a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link <?= $active == 'artikel' ? 'active' : '' ?> dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Artikel</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="<?= $base_url ?>admin/kategori_artikel/index.php">Data Kategori Artikel</a>
					<a class="dropdown-item" href="<?= $base_url ?>admin/artikel/index.php">Data Artikel</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link <?= $active == 'master' ? 'active' : '' ?> dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Data CRUD</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="<?= $base_url ?>admin/guru/index.php">Data Guru</a>
					<a class="dropdown-item" href="<?= $base_url ?>admin/siswa/index.php">Data Siswa</a>
					<a class="dropdown-item" href="<?= $base_url ?>admin/ekskul/index.php">Data Ekskul</a>

				</div>
			</li>
			<li class="nav-item">
				<a class="nav-link <?= $active == 'visi_misi' ? 'active' : '' ?> " href="<?= $base_url ?>admin/visi_misi.php">Visi Misi</a>
			</li>
			<li class="nav-item">
				<a class="nav-link <?= $active == 'absen' ? 'active' : '' ?> " href="<?= $base_url ?>admin/absen/index.php">Absen</a>
			</li>
			<li class="nav-item">
				<a class="nav-link <?= $active == 'rapor' ? 'active' : '' ?> " href="<?= $base_url ?>admin/rapor_admin/index.php">Rapor</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<?= $base_url ?>admin/logout.php" onclick="return confirm('apakah anda yakin?')">Logout</a>
			</li>
		</ul>
	</div>
</nav>