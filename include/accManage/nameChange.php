<?php
  session_start();
  include ("../dbconnect.php") ;
  $user = $_SESSION['username'] ;

  if (is_null($_POST['fName']) || trim($_POST['fName'])=='' ) {
    $fName = $_POST['Ol_fName'] ;
  } else {
    $fName = $_POST['fName'] ;
  }

  if (is_null($_POST['lName']) || trim($_POST['lName'])=='' ) {
    $lName = $_POST['Ol_lName'] ;
  }else {
    $lName = $_POST['lName'] ;
  }

  $query="UPDATE users SET firstName='$fName' , lastName='$lName' WHERE userName = '$user' " ;
  $result=mysqli_query($conn,$query) ;
  if(!$result) {
    echo "Problem in changing name";
  } else {
    echo "<br> done!!!!!!!";
    header('Location:../../accManage.php');
  }
?>
