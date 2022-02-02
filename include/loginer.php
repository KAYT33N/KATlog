<?php
session_start();
include ("dbconnect.php") ;

  $username = $_POST['Luser'] ;
  $password = $_POST['Lpass'] ;
  $query = "SELECT * FROM users WHERE userName = '$username' AND passWord = '$password' " ;
  $result = mysqli_query($conn, $query) ;

  if (mysqli_num_rows($result) == 1) {
    $rowData=mysqli_fetch_assoc($result) ;
    $_SESSION['userID']   = $rowData['ID'] ;
    $_SESSION['username'] = $rowData['userName'];
    $_SESSION['profile']  = $rowData['profile'] ;
  }
		header('Location: ' . $_SERVER['HTTP_REFERER']);

?>
