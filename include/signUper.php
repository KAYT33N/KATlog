<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>signUp Err</title>
</head>
<body>
  <div style="text-align:center">
    <br><br><br><br>
    <?php

    function isUserName($user) {
      return(preg_match("^[A-Za-z0-9$@$!%*?&]*$",$user));
    }

    function isPassWord($pass) {
      return(preg_match("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9$@$!%*?&]{8,20}$",$pass));
    }

    $user     = $_POST['user'];
    $fName    = $_POST['fName'];
    $lName    = $_POST['lName'];
    $pass     = $_POST['pass'];
    $passConf = $_POST['passConf'];

    if(trim($fName) == '') {
      echo '<a class="m-auto text-danger" href="/signUp.php"> <b>Problem in signin you up</b> </a>';
      echo '<div class="error_message">You must enter your first name.</div>';
      exit();
    } elseif(trim($lName) == '') {
      echo '<a class="m-auto text-danger" href="/signUp.php"> <b>Problem in signin you up</b> </a>';
      echo '<div class="error_message">You must enter your last name.</div>';
      exit();
    } elseif(trim($user) == '') {
      echo '<a class="m-auto text-danger" href="/signUp.php"> <b>Problem in signin you up</b> </a>';
      echo '<div class="error_message">Please enter a valid email address.</div>';
      exit();
    } elseif(trim($pass) == '') {
      echo '<a class="m-auto text-danger" href="/signUp.php"> <b>Problem in signin you up</b> </a>';
      echo '<div class="error_message">Please enter a valid passWord.</div>';
      exit();
    } elseif($pass != $passConf) {
      echo '<a class="m-auto text-danger" href="/signUp.php"> <b>Problem in signin you up</b> </a>';
      echo '<div class="error_message">password and confirmation doesnt match</div>';
      exit();
    }

    include("dbconnect.php") ;
    $query = "INSERT INTO users (userName,passWord,firstName,lastName) VALUES ('$user','$pass','$fName','$lName')";
    $result = mysqli_query($conn,$query);
    if($result) {
      $_SESSION['username'] = $user ;
      $_SESSION['profile'] = 'default.jpg' ;
      header("location:/index.php");
    } else {
      echo '<a class="m-auto text-danger" href="/signUp.php"> <b>Problem in signin you up</b> </a>';
    }
    ?>
  </div>

</body>
</html>
