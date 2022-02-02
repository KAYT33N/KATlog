<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <style media="screen">
      li{
        text-align: center;
      }
    </style>
  </head>
  <body>
    <nav id="navbar" class="navbar navbar-light bg-light">
      <div class="container ">
      <?php
      if(!isset($_SESSION['username'])){
          echo '
          <form class="col-12 col-sm-8 d-inline form-inline justify-content-around"  action="include/loginer.php" name="post" method="post">
              <input  class="col-4 d-inline form-control"  type="text" name="Luser" placeholder="username">
              <input  class="col-4 d-inline form-control "  type="password" name="Lpass" placeholder="password">
              <button class="col-3 d-inline btn btn-secondary spinow" id="login" onclick="spin()" style="" type="submit" name="submit"> Login </button>
          </form>
          <div class="col-12 col-sm-3 d-flex justify-content-center my-2 my-sm-0">
            <a class=" btn btn-primary col-10 col-sm-12 spinow" style="" href="/signUp.php" target="_parent"> signUp </a>
          </div>
           ';
        }
      ?>
      </div>
    </nav>
  </body>
</html>
