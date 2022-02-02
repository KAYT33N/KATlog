<?php
  include (dbconnect.php) ;
?>
<?php
	$postid=$_REQUEST['postid'];

  if (isset($_POST[submit])) {
    $title=$_POST['title'];
    $postPrev=$_POST['postPrev'];
    $query="UPDATE posts
      SET title='$title' , postPrev='$postPrev'
      WHERE ID=$postid ;";
    $result=mysqli_query($conn,$query) ;
    if($result) {
    	header("location:index.php");
    } else {
    	echo "Problem in editing post".$postid;
    }
}
?>
