<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
      $edit_post_link='../update.php?postid='.$id;
      $delete_post_link='include/postDelete.php?postid='.$id;
      $author_page_link='userPosts.php?author='.$author;
    ?>
    <style media="screen">
      .topPart {
        background-color: #461A32 ;
      }
      .postF{
        background-color: hsla(0, 0%, 100%,0.6) ;

      }

    </style>
  </head>
  <body>
    <div class="my-5 postF border-primary " style="border: 3px solid purple;" >

        <div class="d-flex topPart py-2 text-light">
          <div class="col-sm-5 ">
            <span class="col-sm-5 px-2" >Post author :</span>
            <a style="" class=" col-sm-2 text-light" href="<?php echo $author_page_link ?>" ><?php echo $author ; ?></a>
          </div>
          <div class="col-sm-5">
            <span class="col-sm-5 px-2" >Post title :</span>
            <b class=""><?php echo $title ; ?> </b>
          </div>
        </div>

        <div class=" container  px-3"  >
            <article class="my-3">
              <?php echo $postPrev ?>
            </article>
            <div class=" d-flex justify-content-around" >
              <?php
              if ("$author" == $user) {
                echo '
                  <div>
                  <a class="pr-5" style="color: #461A32 ;" href='. $edit_post_link . '>edit</a>
                  <a class="pr-5" style="color: #461A32 ;" href='. $delete_post_link . ' >delete</a>
                  </div>
                '
                ;
              }
              ?>
              <span id="time" style="color: #461A32 ;" class="d-flex" ><?php echo $time; ?></span>
            </div>
        </div>

        <div name="comments" style="max-width:100%" class="">
          <?php
            $query1="SELECT * FROM comments WHERE postID='$id' ORDER BY comID ASC ";
            $result1=mysqli_query($conn , $query1);
            if(mysqli_num_rows($result1) > 0) {
              while($rowData1=mysqli_fetch_assoc($result1)) {
                $comment= $rowData1['comment'];
                $userID = $rowData1['userID'] ;
                echo '
                <fieldset  class="border-primary m-2 mt-1 " style="border: 3px solid purple;">
                  <legend class="ml-3 py-1 px-3 bg-primary font-size-5px " style="font-size:1rem;width:auto" > <a class="text-light" href="/userPosts.php?author='.$userID.'">'.$userID.'</a> </legend>
                  <div class="py-1 px-2">
                    '.$comment.'
                  </div>
                </fieldset>';
              }
            }
          ?>
          <?php if (isset($_SESSION['username'])) {
            echo '<div name="addCom" class="">
            <fieldset  class="border-primary m-2 mt-1 " style="border: 3px solid purple;">
              <legend class="ml-3 py-1 px-3 bg-primary text-light font-size-5px " style="font-size:1rem;width:auto" > <a class="text-light" href="/userPosts.php?author='.$user.'">'.$user.'</a> </legend>
              <div>
                <form class="" action="include/commentSubmit.php" method="post">
                  <input type="hidden" name="postID" value="'.$id.'">
                  <textarea name="text" rows="2" class="float-left col-12 col-sm-10" style="background-color: inherit;border: 0px solid white ;" placeholder="Type your comment here :"></textarea>
                  <button class="btn btn-primary m-1 float-right spinow" type="submit" name="submit">Submit</button>
                </form>
              </div>
            </fieldset>
            </div>';
          } ?>
        </div>
    </div>
  </body>
</html>
