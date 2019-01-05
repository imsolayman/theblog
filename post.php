<?php include 'inc/header.php'; ?>
    <div class="container">
      <div class="row">
        <!-- Latest Posts -->
        <main class="post blog-post col-lg-8"> 
          <div class="container">
<!--              post starts here-->
            <?php
                if(!isset($_GET['id']) || $_GET['id'] == null){
                    header("Location: 404.php");
                }else{
                    $id = $_GET['id'];
                }
            ?>
            <?php
            $query = "SELECT list_posts.id, title, description, image, tags, list_posts.created_at, list_posts.category, name, firstname, lastname  FROM list_posts, list_category, list_user WHERE list_category.id = list_posts.category AND list_user.id = list_posts.author AND list_posts.id = '$id' ";
            $post = $database->select($query);
            if($post){
                while ($result = $post->fetch_assoc()) {
            ?>
            <div class="post-single">
              <div class="post-thumbnail"><img src="<?php echo $result['image']; ?>" alt="..." class="img-fluid"></div>
              <div class="post-details">
                <div class="post-meta d-flex justify-content-between">
                  <div class="category"><a href="#"><?php echo $result['name']; ?></a></div>
                </div>
                <h1><?php echo $result['title']; ?><a href="#"><i class="fa fa-bookmark-o"></i></a></h1>
                <div class="post-footer d-flex align-items-center flex-column flex-sm-row"><a href="#" class="author d-flex align-items-center flex-wrap">
                    <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid"></div>
                    <div class="title"><span><?php echo $result['firstname'].' '.$result['lastname']; ?></span></div></a>
                  <div class="d-flex align-items-center flex-wrap">
                    <div class="date"><i class="icon-clock"></i> 2 months ago</div>
                    <div class="views"><i class="icon-eye"></i> 500</div>
                    <div class="comments meta-last"><i class="icon-comment"></i>12</div>
                  </div>
                </div>
                <div class="post-body">
                  <p class="lead"><?php echo $result['description']; ?></p>
                </div>
                <div class="post-tags"><a href="#" class="tag">#<?php echo $result['tags']; ?></a></div>
<!--                  related post starts here-->
                <div class="posts-nav d-flex justify-content-between align-items-stretch flex-column flex-md-row">
                <?php
                    $category = $result['category'];
                    $query = "SELECT * FROM list_posts WHERE category = '$category' ORDER BY rand() LIMIT 2";
                    $post = $database->select($query);
                    if($post){
                        while($result = $post->fetch_assoc()){
                ?>
                    <a href="post.php?id=<?php echo $result['id']; ?>" class="prev-post text-left d-flex align-items-center">
                    <div class="icon prev"><i class="fa fa-angle-left"></i></div>
                    <div class="text">
                      <strong class="text-primary">#<?php echo $result['tags']; ?></strong>
                      <h6><?php echo $result['title']; ?></h6>
                    </div>
                    <div class="icon next"><i class="fa fa-angle-right">   </i></div></a>
                 <?php
                        }
                    }else{
                        echo "<h6>No related post available.</h6>";
                    }
                ?>
                </div>
              <?php
                    }
                }
              ?>
<!--                  comment starts here-->
                <div class="post-comments">
                  <header>
                    <h3 class="h6">Post Comments<span class="no-of-comments">(3)</span></h3>
                  </header>
                  <div class="comment">
                    <div class="comment-header d-flex justify-content-between">
                      <div class="user d-flex align-items-center">
                        <div class="image"><img src="img/user.svg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title"><strong>Jabi Hernandiz</strong><span class="date">May 2016</span></div>
                      </div>
                    </div>
                    <div class="comment-body">
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                  </div>
                  <div class="comment">
                    <div class="comment-header d-flex justify-content-between">
                      <div class="user d-flex align-items-center">
                        <div class="image"><img src="img/user.svg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title"><strong>Nikolas</strong><span class="date">May 2016</span></div>
                      </div>
                    </div>
                    <div class="comment-body">
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                  </div>
                  <div class="comment">
                    <div class="comment-header d-flex justify-content-between">
                      <div class="user d-flex align-items-center">
                        <div class="image"><img src="img/user.svg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title"><strong>John Doe</strong><span class="date">May 2016</span></div>
                      </div>
                    </div>
                    <div class="comment-body">
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                  </div>
                </div>
<!--                  add comment starts here-->
                <div class="add-comment">
                  <header>
                    <h3 class="h6">Leave a reply</h3>
                  </header>
                  <form action="#" class="commenting-form">
                    <div class="row">
                      <div class="form-group col-md-6">
                        <input type="text" name="username" id="username" placeholder="Name" class="form-control">
                      </div>
                      <div class="form-group col-md-6">
                        <input type="email" name="username" id="useremail" placeholder="Email Address (will not be published)" class="form-control">
                      </div>
                      <div class="form-group col-md-12">
                        <textarea name="usercomment" id="usercomment" placeholder="Type your comment" class="form-control"></textarea>
                      </div>
                      <div class="form-group col-md-12">
                        <button type="submit" class="btn btn-secondary">Submit Comment</button>
                      </div>
                    </div>
                  </form>
                </div>
<!--                  add comment starts here-->
              </div>
            </div>
          </div>
        </main>
<?php include 'inc/sidebar.php'; ?>
      </div>
    </div>
<?php include 'inc/footer.php'; ?>