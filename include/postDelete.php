<?php
/* Authenticate user */
include("dbconnect.php");

/* Redirect if postid is not set */
if(!isset($_REQUEST['postid'])) {
	header("location:../index.php");
} else {
	$postid=$_REQUEST['postid'];
}
/* delete from table posts */
$query="DELETE FROM posts
		WHERE ID='$postid'
		";
/* delete from table comments */
$result=mysqli_query($conn , $query);

$query="DELETE FROM comments
		WHERE postID='$postid'
		";

$result=mysqli_query($conn , $query);

if($result) {
	header("location:../index.php");
} else {
	echo "Problem in deleting the Post".$postid;
}

?>
