<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/addOns/bootstrap.min.css">
    <link rel="stylesheet" href="/my-colors.css">
    <script src="/addOns/jquery.min.js"></script>
    <script src="/addOns/popper.min.js"></script>
    <script src="/addOns/bootstrap.min.js"></script>
    <script src="/katapp.js"></script>

    <title>blog</title>
    <style media="screen">
      .bg-spec {
        background: url(include/bg.png) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
      }
      button {
        color: BLACK ;
      }
      img {
        max-width: 100% ;
      }
    </style>
  </head>

  <body class="bg-spec">

    <?php
     include ("include/dbconnect.php") ;
     include ("include/KATheader.php") ;
     include ("include/navbar.php") ;
     $user = $_SESSION['username'] ;
     $userID = $_SESSION['userID'] ;
    ?>

<!--posts -->

    <div class="container">
    <?php
      $query="SELECT * FROM posts ORDER BY ID DESC";
      $result=mysqli_query($conn , $query);
      if(mysqli_num_rows($result) > 0) {
        while($rowData=mysqli_fetch_assoc($result)) {
          $id=$rowData['ID'];
          $title=$rowData['title'];
          $postPrev=$rowData['postPrev'];
          $author=$rowData['author'];
          $time=$rowData['time'];
          $unix=$rowData['unix'];
          include ("include/postFrame.php") ;
        }
      }
    ?>
    </div>

    <?php include ("include/footer.php") ; ?>
  </body>
</html>
