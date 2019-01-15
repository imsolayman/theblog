<?php include 'inc/header.php'; ?>
    <div class="container">
        <div class="row">
            <!-- Latest Posts -->
            <main class="posts-listing col-lg-8">
                <div class="container">
                    <div class="row">
                        <!-- post -->
                        <!--                        pagination top php goes here-->
                        <?php
                        if(!isset($_GET['category']) || $_GET['category'] == null){
                            header("Location: 404.php");
                        }else{
                            $category = $_GET['category'];
                        }
                        ?>
                        <?php
                            $query = "SELECT *  FROM list_posts WHERE category = '$category' LIMIT 6";
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
                                            <div class="category"><a href="#">#<?php echo $result['tags']; ?></a></div>
                                        </div>
                                        <a href="post.php?id=<?php echo $result['id']; ?>">
                                            <h3 class="h4"><?php echo $result['title']; ?></h3></a>
                                        <p class="text-muted"><?php echo $format->textShorten($result['description'], 120); ?></p>
                                        <!--                    static content for temporary except name of author-->
                                        <footer class="post-footer d-flex align-items-center">
                                            <a href="#" class="author d-flex align-items-center flex-wrap">
                                                <div class="avatar"><img src="img/avatar-3.jpg" alt="..." class="img-fluid"></div>
                                                <div class="title">
                                                    <span>Author Name</span></div>
                                            </a>
                                            <div class="date"><i class="icon-clock"></i> 2 months ago</div>
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
                    <!--                    pagination goes here-->
                    <?php
                        }else{
                            echo "  <div class='col-md-12'><div class='page-not-found'> <h1 class='text-center'>Search result not found!!</h1> <p class='text-center'><a href='index.php'>Homepage</a></p></div> </div>";
                        }
                    ?>
                </div>
            </main>
            <?php include 'inc/sidebar.php'; ?>
        </div>
    </div>
<?php include 'inc/footer.php'; ?>