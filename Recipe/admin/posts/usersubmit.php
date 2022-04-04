<?php include("../../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/posts.php"); 
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        
        <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
            integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
            crossorigin="anonymous">

       
        <link href="https://fonts.googleapis.com/css?family=Candal|Lora"
            rel="stylesheet">

     
        <link rel="stylesheet" href="../../assets/css/style.css">

     
        <link rel="stylesheet" href="../../assets/css/admin.css">

        <title>User Section - Add Recipe</title>
    </head>

    <body>
        
    <?php include(ROOT_PATH . "/app/includes/Header.php"); ?>

        
        <div class="admin-wrapper">

               
            <div class="admin-content">
                <div class="button-group">
                </div>


                <div class="content">

                <h2 class="page-title btn btn-big">Submit Your Recepie</h2>

                    <?php include(ROOT_PATH . '/app/helpers/formErrors.php'); ?>

                    <form action="create.php" method="post" enctype="multipart/form-data">
                        <div>
                            <label><b>Recipe Name</b></label>
                            <input type="text" name="Recepie Name" value="<?php echo $title ?>" class="text-input">
                        </div>
                        <div>
                            <label><b>Recipe Ingredients</b></label>
                            <textarea name="body" id="body"><?php echo $body ?></textarea>
                        </div>
                        <div>
                            <label><b>Recipe Picture</b></label>
                            <input type="file" name="image" class="text-input">
                        </div>
                        <div>
                            <label><b>Recepie Category</b></label>
                            <select name="topic_id" class="text-input">
                                <option value=""></option>
                                <?php foreach ($topics as $key => $topic): ?>
                                    <?php if (!empty($topic_id) && $topic_id == $topic['id'] ): ?>
                                        <option selected value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
                                    <?php else: ?>
                                        <option value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
                                    <?php endif; ?>

                                <?php endforeach; ?>

                            </select>
                        </div>
                        <div>
                            <?php if (empty($published)): ?>
                                <label>
                                    <input type="checkbox" name="published">
                                    Publish
                                </label>
                            <?php else: ?>
                                <label>
                                    <input type="checkbox" name="published" checked>
                                    Publish
                                </label>
                            <?php endif; ?>
                           

                        </div>
                        <div>
                            <button type="submit" name="add-post" class="btn btn-big">Submit Your Recipe</button>
                        </div>
                    </form>

                </div>

            </div>
            

        </div>
       



        
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      
        <script
            src="https://cdn.ckeditor.com/ckeditor5/12.2.0/classic/ckeditor.js"></script>
        
        <script src="../../assets/js/scripts.js"></script>

    </body>

</html>