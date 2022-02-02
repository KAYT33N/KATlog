<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>
  </head>
  <body>
    <?php

      include ("../dbconnect.php") ;

        $username = $_SESSION['username'] ;
        $password = $_POST['password'] ;
        $confirm  = $_POST['confirm'];
        $prof     = $_SESSION ['profile'] ;

        if ($confirm =='CONFIRM') {
          $query = "SELECT * FROM users WHERE userName = '$username' AND passWord = '$password' " ;
          $result = mysqli_query($conn, $query) ;
          if (mysqli_num_rows($result) == 1) {
            unlink("../upload/$prof") ;
            $query = "DELETE FROM users WHERE userName = '$username' AND passWord = '$password' " ;
            $result = mysqli_query($conn, $query) ;
            echo '
            <div style="width:100%; text-align:center;">
              <h1>Had a good time </h1>
              <a href="../../index.php">return to main page</a>
            </div>';
            session_destroy();
          } else {
            echo "Wrong password ?";
          }
        } else {
          echo "you didnt confirm";
        }

      ?>
  </body>
</html>
