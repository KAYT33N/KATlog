<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>admin page</title>
    <?php
      include ("include/dbconnect.php") ;
      include ("include/updater.php") ;
    ?>
    <link rel="stylesheet" href="addOns/bootstrap.min.css">
    <link rel="stylesheet" href="/my-colors.css">
    <script src="addOns/jquery.min.js"></script>
    <script src="addOns/popper.min.js"></script>
    <script src="addOns/bootstrap.min.js"></script>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="/katapp.js"></script>
    <style media="screen">
    body {
      background: url(include/bg.png) no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }
    </style>
    <?php
    if(!isset($_REQUEST['postid'])) {
    	header("location:post.php?postid=".$id);
    } else {
    	$postid=$_REQUEST['postid'];
    }

    $query="SELECT * FROM posts WHERE ID='$postid' ";
	  $result=mysqli_query($conn , $query);

		$post=mysqli_fetch_assoc($result);
    $id=$post['ID'] ;
    $author = $post['author'] ;
    $user = $_SESSION['username'] ;
    ?>
  </head>
  <body>
    <?php if (isset($_SESSION['username']) && $user == $author){
      include 'include/updateFrame.php';
    } elseif ( isset($_SESSION['username']) ) {
      include ("include/navbar.php") ;
      echo "you are not post author !";
    } else {
      include ("include/navbar.php") ;
      echo "please login first ";
    }

    ?>
  </body>
</html>
