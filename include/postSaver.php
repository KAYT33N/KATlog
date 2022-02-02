
<?php
  if (isset($_POST[submit])) {
    $user = $_SESSION['username'] ;
    $title = $_POST['title'] ;
    $postPrev = $_POST['postPrev'] ;
    $query = "INSERT INTO posts ( title, postPrev,author) VALUES ('$title', '$postPrev', '$user')" ;
    $result = mysqli_query($conn,$query) ;
    if ($result) {
      echo "Your post with title ( ".$title." ) has been uploaded !" ;
    }else {
      echo "some error " ;
    }
    $_POST['title'] = NULL ;
    $_POST['postPrev'] = NULL ;
    $title = NULL ;
    $postPrev = NULL ;
  }
?>
