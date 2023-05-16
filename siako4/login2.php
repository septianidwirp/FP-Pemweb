
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Login - SMA PEMBANGUNAN NASIONAL</title>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card shadow">
					<div class="card-header bg-primary text-white">Login!</div>
					<div class="card-body">
						
		
						<form action="proses_login2.php" method="POST">
							<div class="form-group">
								<label for="nis">Nis</label>
								<input type="text" class="form-control" name="nis" id="nis" placeholder="nis" autocomplete="off" required="required">
							</div>
							<div class="form-group">
								<label for="password">Password</label>
								<input type="password" class="form-control" name="password" id="password" placeholder="password" autocomplete="off" required="required">
							</div>
							<div class="form-group">
								<button type="submit" name="login" class="btn btn-sm btn-block btn-primary">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>