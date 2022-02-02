<?php
  session_start();
  include("dbconnect.php") ;
?>
<?php
    $user     = $_SESSION['username'] ;
    $postID   = $_POST['postID'] ;
    $comment  = $_POST['text'] ;
    $query = "INSERT INTO comments ( postID, comment, userID) VALUES ('$postID', '$comment', '$user')" ;
    $result = mysqli_query($conn,$query) ;
    if ($result) {
    	header("location:/index.php");
    }else {
      echo "some error <br> Maybe longer than 150 char ?" ;
    }
?>
