<?php

@include 'config.php';

session_start();

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = md5($_POST['password']);
   $cpass = md5($_POST['cpassword']);
   $user_type = $_POST['user_type'];

   $select = " SELECT * FROM user_form WHERE email = '$email' && password = '$pass' ";
   $select_user = " SELECT * FROM tb_profile_user WHERE email = '$email'";


   $result = mysqli_query($conn, $select);
   $result_user = mysqli_query($conn, $select_user);


   if(mysqli_num_rows($result) > 0){

      $row = mysqli_fetch_array($result);
      $row_user = mysqli_fetch_array($result_user);
      $_SESSION['nim'] = $row_user['nim'];


      if($row['user_type'] == 'admin'){
            // Management User //
         $_SESSION['user_name'] = $row['name'];
         header('location:admin_page.php');

      }elseif($row['user_type'] == 'mahasiswa'){

         $_SESSION['user_name'] = $row['name'];
         $_SESSION['user_id'] = $row['id'];
         header('location:user_page.php');

      }
      elseif($row['user_type'] == 'dosen'){

         $_SESSION['user_name'] = $row['name'];
         header('location:dosen_page.php');

      }

      elseif($row['user_type'] == 'departemen'){

         $_SESSION['user_name'] = $row['name'];
         header('location:departemen_page.php');

      }
     
   }else{
      $error[] = 'incorrect email or password!';
   }

};
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>login form</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<div class="form-container">

   <form action="" method="post">
      <h3>login now</h3>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <input type="email" name="email" required placeholder="enter your email">
      <input type="password" name="password" required placeholder="enter your password">
      <input type="submit" name="submit" value="login now" class="form-btn">
      <p>don't have an account? <a href="register_form.php">register now</a></p>
   </form>

</div>

</body>
</html>