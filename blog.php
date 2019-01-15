<?php include 'inc/header.php'; ?>
    <div class="container">
      <div class="row">
        <!-- Latest Posts -->
        <main class="posts-listing col-lg-8"> 
          <div class="container">
            <div class="row">
              <!-- post -->
            <?php
                $postPerPage = 4;
                if(isset($_GET['pageid'])){
                    $id = $_GET['pageid'];
                }else{
                    $id = 1;
                }
                $startFrom = ($id - 1) * $postPerPage;
            ?>    
            <?php
                $query = "SELECT list_posts.id, title, description, image, list_posts.created_at, list_posts.category, name, firstname, lastname  FROM list_posts, list_category, list_user WHERE list_category.id = list_posts.category AND list_user.id = list_posts.author ORDER BY list_posts.id DESC limit $startFrom, $postPerPage";
                $post = $database->select($query);
                if($post){
            while ($result = $post->fetch_assoc()) {
                ?>
                <div class="post col-xl-6">
                    <div class="post-thumbnail"><a href="post.php?id=<?php echo $result['id']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="..."
                                                                         class="img-fluid"></a></div>
                    <div class="post-details">
                        <div class="post-meta d-flex justify-content-between">
                            <div class="date meta-last"><?php echo $format->formatYear($result['created_at']); ?></div>
                            <div class="category"><a href="#"><?php echo $result['name']; ?></a></div>
                        </div>
                        <a href="post.php?id=<?php echo $result['id']; ?>">
                            <h3 class="h4"><?php echo $result['title']; ?></h3></a>
                        <p class="text-muted"><?php echo $format->textShorten($result['description'], 120); ?></p>
                        <!--                    static content for temporary except name of author-->
                        <footer class="post-footer d-flex align-items-center"><a href="#"
                                                                                 class="author d-flex align-items-center flex-wrap">
                                <div class="avatar"><img src="img/avatar-3.jpg" alt="..." class="img-fluid"></div>
                                <div class="title">
                                    <span><?php echo $result['firstname'] . ' ' . $result['lastname']; ?></span></div>
                            </a>
                            <div class="date"><i class="icon-clock"></i><?php echo $format->humanTiming(strtotime($result['created_at'])); ?></div>
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
                <?php
            }
            ?>
            </div>
              <!-- Pagination -->
              <nav aria-label="Page navigation example">
                  <ul class="pagination pagination-template d-flex justify-content-center">
                      <?php
                      $query = "SELECT * FROM list_posts";
                      $result = $database->select($query);
                      $totalPosts = mysqli_num_rows($result);
                      $totalPages = ceil($totalPosts / $postPerPage);
                      echo "<li class='page-item'><a href='blog.php?pageid=1' class='page-link'> <i class='fa fa-angle-left'></i></a></li>";
                      for($i = 1; $i <= $totalPages; $i++){
                          echo "<li class='page-item'><a href='blog.php?pageid=$i' class='page-link'>$i</a></li>";
                      }
                       echo "<li class='page-item'><a href='blog.php?pageid=$totalPages' class='page-link'> <i class='fa fa-angle-right'></i></a></li>";
                      ?>
                  </ul>
              </nav>
              <?php
                 }else{
                    header('Location: 404.php');
              }
              ?>
          </div>
        </main>
<?php include 'inc/sidebar.php'; ?>
      </div>
    </div>
<?php include 'inc/footer.php'; ?>