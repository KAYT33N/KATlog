<?php
  session_start();
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>newPost page</title>
    <?php
      include ("include/dbconnect.php") ;
      include ("include/postSaver.php") ;
    ?>
    <link rel="stylesheet" href="addOns/bootstrap.min.css">
    <link rel="stylesheet" href="/my-colors.css">
    <script src="addOns/jquery.min.js"></script>
    <script src="addOns/popper.min.js"></script>
    <script src="addOns/bootstrap.min.js"></script>
    <script src="/katapp.js"></script>
    <script type="text/javascript">
      function back() {
        window.location.replace("index.php") ;
      }
    </script>
    <script src="ckeditor/ckeditor.js"></script>
    <style media="screen">
    body {
      background: url(include/bg.png) no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }
    </style>
  </head>
  <body>
    <div class="container">

      <?php
       if(isset($_SESSION['username'])){
        echo '
        <div class="my-3 container">
          <form class="" style="" method="post">
            <div class="d-md-flex justify-content-around">
              <button style="display:inline" class="col-md-3 btn btn-danger spinow" type="button" name="button" onclick="back()"> Back to blog </button>
              <div class="py-1 col-md-6 bg-light" style="border-radius:5px;">
                <label class="col-4 d-inline" for="title"> title : </label>
                <input class="col-8 d-inline form-control" style="min-width:150px;" type="text" name="title" >
              </div>
              <button class="py-1 col-md-2 btn btn-primary spinow" type="submit" name="submit" >Upload post</button>
            </div>
            <br><br>
            <div style="border: 2px solid #461A32 ;" class="">
              <textarea class=" " name="postPrev" rows="8" id="postPrev"></textarea>
            </div>
          </form>
          <script>
            CKEDITOR.replace("postPrev");
          </script>
        </div>' ;
      } else {
        include ("include/navbar.php") ;
        echo "please login first";
      }?>
  </body>
</html>
