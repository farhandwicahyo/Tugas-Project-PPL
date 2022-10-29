<?php

@include 'config.php';

session_start();

$id = $_SESSION['user_id'];
$nim = $_SESSION['nim'];

$query_user = 'SELECT * FROM tb_profile_user WHERE user_id="'.$id.'"';

$result = $conn->query($query_user);
while ($row = $result->fetch_assoc()) {
	$nim = $row['nim'];
}




if(isset($_POST['submit'])){
	$nilai_pkl = mysqli_real_escape_string($conn, $_POST['nilai_pkl']);
	$status_pkl = mysqli_escape_string($conn, $_POST['status_pkl']);
	$scan_berita_pkl = $_POST['scan_berita_pkl'];
	$lokasi_file = $_FILES['scan_berita_pkl']['tmp_name'];
	$scan_berita_pkl = $_FILES['scan_berita_pkl']['name'];
	$direktory = "upload/$scan_berita_pkl";


	$query = "SELECT * FROM tb_pkl WHERE nilai_pkl ='nilai_pkl' && status_pkl = 'status_pkl' && scan_berita_pkl = 'scan_berita_pkl' && nim = 'nim' " ;
	
	$result = mysqli_query($conn, $query);

	if(mysqli_num_rows($result)){
        $error[] = 'data already exist!';
    }else{
        $insert = " INSERT INTO tb_pkl(nilai_pkl, status_pkl, scan_berita_pkl, nim) VALUES ('$nilai_pkl', '$status_pkl', '$scan_berita_pkl', '$nim')";
        mysqli_query($conn, $insert);

		move_uploaded_file($lokasi_file,$direktory);

        header('location:pkl.php');
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Dashboard Mahasiswa</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
   <link rel="stylesheet" href="css/style.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>

<div class="dashboard">
	<aside class="search-wrap">
		<div class="search">
		</div>
		
		<div class="user-actions">
      <?php echo $_SESSION['user_name'] ?>
			<button>
            <a href="#" class="btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M13.094 2.085l-1.013-.082a1.082 1.082 0 0 0-.161 0l-1.063.087C6.948 2.652 4 6.053 4 10v3.838l-.948 2.846A1 1 0 0 0 4 18h4.5c0 1.93 1.57 3.5 3.5 3.5s3.5-1.57 3.5-3.5H20a1 1 0 0 0 .889-1.495L20 13.838V10c0-3.94-2.942-7.34-6.906-7.915zM12 19.5c-.841 0-1.5-.659-1.5-1.5h3c0 .841-.659 1.5-1.5 1.5zM5.388 16l.561-1.684A1.03 1.03 0 0 0 6 14v-4c0-2.959 2.211-5.509 5.08-5.923l.921-.074.868.068C15.794 4.497 18 7.046 18 10v4c0 .107.018.214.052.316l.56 1.684H5.388z"/></svg>
            </a>
         </button>
			<button>
            <a href="logout.php">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 21c4.411 0 8-3.589 8-8 0-3.35-2.072-6.221-5-7.411v2.223A6 6 0 0 1 18 13c0 3.309-2.691 6-6 6s-6-2.691-6-6a5.999 5.999 0 0 1 3-5.188V5.589C6.072 6.779 4 9.65 4 13c0 4.411 3.589 8 8 8z"/><path d="M11 2h2v10h-2z"/></svg>
            </a>
         </button>
		</div>
	</aside>
	
	<header class="menu-wrap">
		<figure class="user">
			<div class="user-avatar">
         <img src="https://images.unsplash.com/photo-1495147334217-fcb3445babd5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=35fc38ccdb26717006d7b48f79a2bb83&auto=format&fit=crop&w=140&q=80" alt="Robert Smaghi, Chairman">
			</div>
			<figcaption>
			<?php echo $_SESSION['user_name'] ?>
			</figcaption>
		</figure>
	
		<nav>
            <a href="user_page.php" style="text-decoration:none ;">
			<section class="dicover">
				<h3>DASHBOARD</h3>
            </a>
				<ul>
					<li>
                  <a href="irs.php">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="width:30px ;"><path d="M13 7L11 7 11 11 7 11 7 13 11 13 11 17 13 17 13 13 17 13 17 11 13 11z"/><path d="M12,2C6.486,2,2,6.486,2,12s4.486,10,10,10c5.514,0,10-4.486,10-10S17.514,2,12,2z M12,20c-4.411,0-8-3.589-8-8 s3.589-8,8-8s8,3.589,8,8S16.411,20,12,20z"/></svg>
						   IRS
                  </a>
					</li>
					
					<li>
						<a href="khs.php">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="width:30px ;"><path d="M13 7L11 7 11 11 7 11 7 13 11 13 11 17 13 17 13 13 17 13 17 11 13 11z"/><path d="M12,2C6.486,2,2,6.486,2,12s4.486,10,10,10c5.514,0,10-4.486,10-10S17.514,2,12,2z M12,20c-4.411,0-8-3.589-8-8 s3.589-8,8-8s8,3.589,8,8S16.411,20,12,20z"/></svg>
							KHS
						</a>
					</li>
					
					<li>
						<a href="#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="width:30px ;"><path d="M21,3h-4V2h-2v1H9V2H7v1H3C2.447,3,2,3.447,2,4v17c0,0.553,0.447,1,1,1h18c0.553,0,1-0.447,1-1V4C22,3.447,21.553,3,21,3z M7,5v1h2V5h6v1h2V5h3v3H4V5H7z M4,20V10h16v10H4z"/><path d="M11,15.586l-1.793-1.793l-1.414,1.414l2.5,2.5C10.488,17.902,10.744,18,11,18s0.512-0.098,0.707-0.293l5-5l-1.414-1.414 L11,15.586z"/></svg>
							PKL
						</a>
					</li>
					
					<li>
						<a href="skripsi.php">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="width:30px ;"><path d="M21,3h-4V2h-2v1H9V2H7v1H3C2.447,3,2,3.447,2,4v17c0,0.553,0.447,1,1,1h18c0.553,0,1-0.447,1-1V4C22,3.447,21.553,3,21,3z M7,5v1h2V5h6v1h2V5h3v3H4V5H7z M4,20V10h16v10H4z"/><path d="M11,15.586l-1.793-1.793l-1.414,1.414l2.5,2.5C10.488,17.902,10.744,18,11,18s0.512-0.098,0.707-0.293l5-5l-1.414-1.414 L11,15.586z"/></svg>
                  SKRIPSI
						</a>
					</li>
               		<li>
						<a href="profile.php">  
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="width:30px ;"><path d="M3,21c0,0.553,0.448,1,1,1h16c0.553,0,1-0.447,1-1v-1c0-3.714-2.261-6.907-5.478-8.281C16.729,10.709,17.5,9.193,17.5,7.5 C17.5,4.468,15.032,2,12,2C8.967,2,6.5,4.468,6.5,7.5c0,1.693,0.771,3.209,1.978,4.219C5.261,13.093,3,16.287,3,20V21z M8.5,7.5 C8.5,5.57,10.07,4,12,4s3.5,1.57,3.5,3.5S13.93,11,12,11S8.5,9.43,8.5,7.5z M12,13c3.859,0,7,3.141,7,7H5C5,16.141,8.14,13,12,13z"/></svg>
                	EDIT PROFILE
						</a>
					</li>
				</ul>
			</section>
		</nav>
	</header>
	
	<main class="content-wrap">
		<header class="content-head">
			<h1 style="margin-bottom: 20px;">PKL</h1>
				
			<!-- <div class="action">
				<button>
					Save search
				</button>
			</div> -->
		</header>
        <div class="content">
			<div class="">
				<div class="card shadow p-3 mb-5 bg-body rounded">
					<div class="card-header">
						<b></b>
					</div>
						<form action="" method="POST" enctype="multipart/form-data">
						<div class="card-body">
							<div class="form-group">
								<label for="nilai_pkl">Nilai PKL</label>
								<select class="form-control" id="nilai_pkl" name="nilai_pkl">
									<option value="">Pilih Nilai PKL</option>
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="C">C</option>
                                    <option value="D">D</option>
                                    <option value="E">E</option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<label for="status_pkl">Status</label>
								<select class="form-control" id="status_pkl" name="status_pkl">
									<option value="">Pilih Status PKL</option>
                                    <option value="LULUS">LULUS</option>
                                    <option value="TIDAK LULUS">TIDAK LULUS</option>
								</select>
							</div>
							<br>
                            <div class="form-group">
                                <div class="mb-3">
                                    <label for="scan_berita_pkl">Scan Berita Acara</label>
                                    <input class="form-control" type="file" id="scan_berita_pkl" name="scan_berita_pkl">
                                </div>
                            </div>
                            <br>
							<button type="submit" name="submit" value="submit" class="btn btn-primary" onclick=''>Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		
	</main>
</div>

   
<!-- <div class="container">

   <div class="content">
      <h3>hi, <span>user</span></h3>
      <h1>welcome <span><?php echo $_SESSION['user_name'] ?></span></h1>
      <p>this is an user page</p>
      <a href="login_form.php" class="btn">login</a>
      <a href="register_form.php" class="btn">register</a>
      <a href="logout.php" class="btn">logout</a>
   </div>

</div> -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</body>
</html>