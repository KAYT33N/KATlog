<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>sign up mafakaaa</title>
    <link rel="stylesheet" href="addOns/bootstrap.min.css">
    <link rel="stylesheet" href="/my-colors.css">
    <script src="addOns/jquery.min.js"></script>
    <script src="addOns/bootstrap.min.js"></script>
    <script src="addOns/popper.min.js"></script>
    <script src="/katapp.js"></script>
    <style media="screen">
    * {
      text-align: center;
    }
    body {
      background: url(include/bg.png) no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }
    </style>
  </head>
  <body class="" >
    <br><br>
    <div class="container ">
      <div class="mx-auto col-10 col-md-8 col-lg-7 col-xl-6">
        <div style="background-color: hsla(0, 0%, 100%,0.6) ;" >
          <div style="background-color: #461A32" class="py-3">
            <h3 id="head" class="text-light">sign up form</h3>
          </div>
          <script type="text/javascript">
            function back() {
              window.location.replace("/index.php") ;
            }

          </script>
          <div  class="mx-1 my-2">
            <p id="error-msg" class="m-2"></p>
            <form class="form-inline" method="post" name="myForm" id="myForm" onsubmit="return validateForm()" action="include/signUper.php" >

                <label class="col-12 col-sm-6" for="user"> <b>Enter your username</b> </label>
                <input class="col-9 col-sm-5 form-control mb-2 mb-sm-1 mx-auto" type="text" name="user" >

                <label class="col-12 col-sm-6" for="fName"> <b>First name :</b> </label>
                <input class="col-9 col-sm-5 form-control mb-2 mb-sm-1 mx-auto" type="text" name="fName" >

                <label class="col-12 col-sm-6" for="lName"> <b>Last name :</b> </label>
                <input class="col-9 col-sm-5 form-control mb-2 mb-sm-1 mx-auto" type="text" name="lName" >

                <label class="col-12 col-sm-6" for="pass"> <b>Enter password :</b> </label>
                <input class="col-9 col-sm-5 form-control mb-2 mb-sm-1 mx-auto" type="password" name="pass" >

                <label class="col-12 col-sm-6" for="passConf"> <b>Confirm password :</b> </label>
                <input class="col-9 col-sm-5 form-control mb-2 mb-sm-1 mx-auto" type="password" name="passConf" >
                <button style="width:195px" class="mt-3 mx-auto btn btn-secondary" id="submit" type="submit" name="submit"> <b>submit</b> </button>
            </form>
          </div>

          <div class="py-4">
            <button style="width:195px" class=" btn btn-secondary spinow" type="button" id="back" name="back" onclick="back()"> <b>Back to blog</b> </button>
          </div>
        </div>
      </div>
    </div>
  </body>
