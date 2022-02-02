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
    body {
      background: url(include/bg.png) no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }
      button {
        color: BLACK ;
      }
      .text-primary{
        transition: all 1s ;
      }
      img {
        max-width: 100% ;
      }
      .author_pic {
        width:100%;
        object-fit:cover;
        transition: all 0.5s ;
      }
    </style>
    <script type="text/javascript">
    $(document).ready(function(){
      $('#prof').click(function() {
          if ( $(this).css("height") == '200px' ) {
            $(this).css("height", "350px");
          }else {
            $(this).css("height", "200px");
          }
      });
    });
    </script>
    <?php
     include ("include/dbconnect.php") ;
     if(!isset($_REQUEST['author'])) {
     	header("location:../index.php");
     } else {
     	$auth=$_REQUEST['author'];
     }
     $query = "SELECT * FROM users WHERE userName = '$auth'" ;
     $result = mysqli_query($conn, $query) ;

     if (mysqli_num_rows($result) == 1) {
       $rowData     = mysqli_fetch_assoc($result) ;
       $fName       = $rowData['firstName'] ;
       $lName       = $rowData['lastName'] ;
       $author_prof = "include/upload/". $rowData['profile'] . "?nocache=".time() ;
     }
    ?>
  </head>
  <body>
    <?php
      include ("include/KATheader.php") ;
      include ("include/navbar.php") ;
      $user = $_SESSION['username'] ;
    ?>



    <div class="d-block d-md-flex container justify-content-between ">

      <div class="col-12 col-md-5 my-5 ">
          <div class="card postF border border-primary">
            <div class="card-header bg-primary text-light">
              <b> User's profile </b>
            </div>
            <div class="author_pic" >
              <img class="bg-light author_pic" style="height: 200px;" src="<?php echo $author_prof ?>" id="prof" alt="authors profile picture" />
            </div>
            <div class="card-body">
              <h6>User name : <b><?php echo "$auth"; ?></b> </h6>
              <h6>name : <b> <?php echo $fName." ".$lName; ?></b> </h6>
            </div>
          </div>
      </div>

      <div class="col-12 col-md-7">
          <?php
            $query="SELECT * FROM posts WHERE author = '$auth' ORDER BY ID DESC";
            $result=mysqli_query($conn , $query);
            if(mysqli_num_rows($result) > 0) {
              while($rowData=mysqli_fetch_assoc($result)) {
                $id=$rowData['ID'];
                $title=$rowData['title'];
                $postPrev=$rowData['postPrev'];
                $author=$rowData['author'];
                $time=$rowData['time'];
                include ("include/userPostFrame.php") ;
              }
            }
          ?>
      </div>

    </div>


    <?php include ("include/footer.php") ; ?>
  </body>
</html>
