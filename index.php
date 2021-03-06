<?php include 'inc/header.php'; ?>

    <!-- Hero Section-->
    <?php
        $query = "SELECT * FROM list_posts ORDER BY id DESC LIMIT 1";
        $post = $database->select($query);
        if($post){
        while($result = $post->fetch_assoc()){
    ?>
    <section style="background: url(admin/<?php echo $result['image']; ?>); background-size: cover; background-position: center center" class="hero">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <h1><?php echo $result['title']; ?></h1><a href="./posts/<?php echo $result['slug']; ?>" class="hero-link">Discover More</a>
          </div>
        </div><a href=".intro" class="continue link-scroll"><i class="fa fa-long-arrow-down"></i> Scroll Down</a>
      </div>
    </section>
    <?php
         }
        }
    ?>
    <!-- Intro Section-->
    <section class="intro">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <h2 class="h3">Some great intro here</h2>
            <p class="text-big">Place a nice <strong>introduction</strong> here <strong>to catch reader's attention</strong>. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderi.</p>
          </div>
        </div>
      </div>
    </section>
    <section class="featured-posts no-padding-top">
      <div class="container">
        <!-- Post-->
        <div class="row d-flex align-items-stretch">
            <?php
            $query = "SELECT list_posts.id, title, description, image, list_posts.created_at, list_posts.category,  list_posts.slug, name, firstname, lastname  FROM list_posts, list_category, list_user WHERE list_category.id = list_posts.category AND list_user.id = list_posts.author ORDER BY list_posts.id ASC limit 1 ";
            $post = $database->select($query);
            if($post){
                while ($result = $post->fetch_assoc()) {
            ?>
          <div class="text col-lg-7">
            <div class="text-inner d-flex align-items-center">
              <div class="content">
                <header class="post-header">
                  <div class="category"><a href="#"><?php echo $result['name']; ?></a></div><a href="./posts/<?php echo $result['slug']; ?>">
                    <h2 class="h4"><?php echo $result['title']; ?></h2></a>
                </header>
                <p><?php echo $format->textShorten($result['description'], 320); ?> <a href="./posts/<?php echo $result['slug']; ?>" class="hero-link"> Read More </a> </p>
                <footer class="post-footer d-flex align-items-center"><a href="./posts/<?php echo $result['slug']; ?>" class="author d-flex align-items-center flex-wrap">
                    <div class="avatar"><img src="img/avatar-2.jpg" alt="..." class="img-fluid"></div>
                    <div class="title"><span><?php echo $result['firstname'] . ' ' . $result['lastname']; ?></span></div></a>
                  <div class="date"><i class="icon-clock"></i> <?php echo $format->humanTiming(strtotime($result['created_at'])); ?></div>
                    <div class="comments meta-last"><i class="icon-comment"></i>
                        <?php
                        $comid = $result['id'];
                        $query = "SELECT * FROM list_comment WHERE post = '$comid' ";
                        $comcount = $database->select($query);
                        if($comcount){
                            $count = mysqli_num_rows($comcount);
                            echo $count;
                        }else{
                            echo 0;
                        }
                        ?>
                    </div>
                </footer>
              </div>
            </div>
          </div>
          <div class="image col-lg-5"><img src="admin/<?php echo $result['image']; ?>" alt="..."></div>
                <?php
            }
            }
            ?>
        </div>
        <!-- Post        -->
      <div class="row d-flex align-items-stretch row-image-left">
        <?php
        $query = "SELECT list_posts.id, title, description, image, list_posts.created_at, list_posts.category,  list_posts.slug, name, firstname, lastname  FROM list_posts, list_category, list_user WHERE list_category.id = list_posts.category AND list_user.id = list_posts.author ORDER BY list_posts.id DESC limit 1 ";
        $post = $database->select($query);
        if($post){
            while ($result = $post->fetch_assoc()) {
                ?>
          <div class="image col-lg-5"><img src="admin/<?php echo $result['image']; ?>" alt="..."></div>
          <div class="text col-lg-7">
              <div class="text-inner d-flex align-items-center">
                  <div class="content">
                      <header class="post-header">
                          <div class="category"><a href="#"><?php echo $result['name']; ?></a></div><a href="./posts/<?php echo $result['slug']; ?>">
                              <h2 class="h4"><?php echo $result['title']; ?></h2></a>
                      </header>
                      <p><?php echo $format->textShorten($result['description'], 320); ?> <a href="./posts/<?php echo $result['slug']; ?>" class="hero-link"> Read More </a> </p>
                      <footer class="post-footer d-flex align-items-center"><a href="post.php?id=<?php echo $result['id']; ?>" class="author d-flex align-items-center flex-wrap">
                              <div class="avatar"><img src="img/avatar-2.jpg" alt="..." class="img-fluid"></div>
                              <div class="title"><span><?php echo $result['firstname'] . ' ' . $result['lastname']; ?></span></div></a>
                          <div class="date"><i class="icon-clock"></i> <?php echo $format->humanTiming(strtotime($result['created_at'])); ?></div>
                          <div class="comments meta-last"><i class="icon-comment"></i>
                              <?php
                              $comid = $result['id'];
                              $query = "SELECT * FROM list_comment WHERE post = '$comid' ";
                              $comcount = $database->select($query);
                              if($comcount){
                                  $count = mysqli_num_rows($comcount);
                                  echo $count;
                              }else{
                                  echo 0;
                              }
                              ?>
                          </div>
                      </footer>
                  </div>
              </div>
          </div>
                <?php
            }
        }
        ?>
      </div>
        <!-- Post                            -->
        <div class="row d-flex align-items-stretch">
<!--            third post will go here-->
        </div>
      </div>
    </section>
    <!-- Divider Section-->
        <?php
        $query = "SELECT * FROM list_posts ORDER BY id ASC LIMIT 1";
        $post = $database->select($query);
        if($post){
            while($result = $post->fetch_assoc()){
        ?>
    <section style="background: url(admin/<?php echo $result['image']; ?>); background-size: cover; background-position: center bottom" class="divider">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h2><?php echo $result['title']; ?></h2><a href="./posts/<?php echo $result['slug']; ?>" class="hero-link">View More</a>
          </div>
        </div>
      </div>
    </section>
         <?php
                }
             }
          ?>
    <!-- Latest Posts -->
    <section class="latest-posts">
        <div class="container">
            <header>
                <h2>Latest from the blog</h2>
                <p class="text-big">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </header>
            <div class="row">
            <?php
                $query = "SELECT list_posts.id, title, description, image, list_posts.created_at, list_posts.category,  list_posts.slug, name, firstname, lastname  FROM list_posts, list_category, list_user WHERE list_category.id = list_posts.category AND list_user.id = list_posts.author ORDER BY list_posts.id DESC limit 3 ";
                $post = $database->select($query);
                if($post){
                    while($result = $post->fetch_assoc()){
             ?>
                <div class="post col-md-4">
                    <div class="post-thumbnail"><a href=""><img src="admin/<?php echo $result['image']; ?>" alt="..." class="img-fluid"></a></div>
                    <div class="post-details">
                        <div class="post-meta d-flex justify-content-between">
                            <div class="date"><?php echo $format->formatYear($result['created_at']); ?></div>
                            <div class="category"><a href="#"><?php echo $result['name']; ?></a></div>
                        </div><a href="./posts/<?php echo $result['slug']; ?>">
                            <h3 class="h4"><?php echo $result['title']; ?></h3></a>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                    </div>
                </div>
             <?php
                    }
                }
             ?>
            </div>
        </div>
    </section>
    <!-- Newsletter Section-->
    <section class="newsletter no-padding-top">    
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2>Subscribe to Newsletter</h2>
            <p class="text-big">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
          </div>
          <div class="col-md-8">
            <div class="form-holder">
                <?php
                    if($_SERVER['REQUEST_METHOD'] == 'POST'){
                        $email = $format->validation($_POST['email']);
                        $email = mysqli_real_escape_string($database->link, $email);
                        if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                            echo "<script>alert('Invalid email address ! Please enter a valid email');</script>";
                        }else {
                            $query = "INSERT INTO list_subscribe (email) VALUES ('$email') ";
                            $insert_row = $database->insert($query);
                            if ($insert_row) {
                                echo "<script>alert('Thanks for your subscription');</script>";
                            } else {
                                echo "<script>alert('Sorry ! Mail is not subscribed');</script>";
                            }
                        }
                    }
                ?>
              <form action="" method="post">
                <div class="form-group">
                  <input type="text" name="email" id="email" placeholder="Type your email address"> <!--type will be email-->
                  <button type="submit" class="submit">Subscribe</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Gallery Section-->
    <section class="gallery no-padding">    
      <div class="row">
        <?php
        $query = "SELECT * FROM list_posts ORDER BY id DESC LIMIT 4";
        $post = $database->select($query);
        if($post){
            while($result = $post->fetch_assoc()){
        ?>
        <div class="mix col-lg-3 col-md-3 col-sm-6">
          <div class="item"><a href="admin/<?php echo $result['image']; ?>" data-fancybox="gallery" class="image"><img src="admin/<?php echo $result['image']; ?>" alt="..." class="img-fluid">
              <div class="overlay d-flex align-items-center justify-content-center"><i class="icon-search"></i></div></a></div>
        </div>
        <?php
               }
           }
        ?>
      </div>
    </section>
<?php include 'inc/footer.php'; ?>