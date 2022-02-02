<div class="my-3 container">
  <form class="" style="" method="post">
    <div class="d-md-flex justify-content-around">
      <button style="display:inline" class="col-md-3 btn btn-danger spinow" type="button" name="button" onclick="back()"> Back to blog </button>
      <div class="py-1 col-md-6 bg-light" style="border-radius:5px;">
        <label class="col-4 d-inline" for="title"> title : </label>
        <input class="col-8 d-inline form-control" style="min-width:150px;" type="text" name="title" value="<?php echo $post['title'] ;?>">
      </div>
      <button class="py-1 col-md-2 btn btn-primary spinow" type="submit" name="submit" > Update post </button>
    </div>
    <br><br>
    <div style="border: 2px solid #461A32 ;" class="">
      <textarea class=" " name="postPrev" rows="8" id="postPrev"><?php echo $post['postPrev'] ; ?></textarea>
    </div>
  </form>
  <script>
    CKEDITOR.replace('postPrev');
    function back() {
      window.location.replace("index.php") ;
    }
  </script>
</div>
