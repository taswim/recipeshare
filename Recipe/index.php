<?php 
include("path.php");
include(ROOT_PATH . "/app/controllers/topics.php");

$posts = array();
$postsTitle = 'Recent Posts';

if (isset($_GET['t_id'])) {
  $posts = getPostsByTopicId($_GET['t_id']);
  $postsTitle = "You searched for posts under '" . $_GET['name'] . "'";
} else if (isset($_POST['search-term'])) {
  $postsTitle = "You searched for '" . $_POST['search-term'] . "'";
  $posts = searchPosts($_POST['search-term']);
} else {
  $posts = getPublishedPosts();
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="icon" type="image/png" href="assets/images/salad.png"/>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  
  <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">

 
  <link rel="stylesheet" href="assets/css/style.css">

  <title>Recipe Share Website</title>
</head>

<body>

  <?php include(ROOT_PATH . "/app/includes/header.php"); ?>
  <?php include(ROOT_PATH . "/app/includes/messages.php"); ?>

  

<section  class="px-4 py-5 my-5 text-center">
   <img src="assets/images/cook.jpg" class="image-st d-block mx-auto mb-4 img-fluid" alt="Publish your recipe for FREE today" width="566" height="298"
    Loading="lazy">
    <h1 class="display-5 fw-bold">Share your favourite Recipe With Us</h1>
        <div class="col-lg-6 mx-auto">
         <p class="lead mb-4">Publish your Recipe and Let Our Visitors to Try a New One.</p>
           <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
           <a href="admin/posts/usersubmit.php" class="btn btn-primary btn-dark btn-lg">Submit Recipe</a>
        </div>
      </div>

</section>

<?php include(ROOT_PATH . "/app/includes/recipeGroup.php"); ?>







  
  <div class="page-wrapper">

    
    <div class="post-slider">
      <h1 class="slider-title">New Recipes</h1>
      <i class="fas fa-chevron-left prev"></i>
      <i class="fas fa-chevron-right next"></i>

      <div class="post-wrapper">

        <?php foreach ($posts as $post): ?>
          <div class="post">
            <img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" alt="" class="slider-image">
            <div class="post-info">
              <h4><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo $post['title']; ?></a></h4>
              <i class="far fa-user"> <?php echo $post['username']; ?></i>
              &nbsp;
              <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>
            </div>
          </div>
        <?php endforeach; ?>


      </div>

    </div>
    

    

  </div>
  

  <?php include(ROOT_PATH . "/app/includes/footer.php"); ?>


 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <script src="assets/js/scripts.js"></script>

</body>

</html>