<?php include 'inc/header.php'; ?>
    <div class="container">
        <div class="row">
            <!-- Latest Posts -->
            <main class="post blog-post col-lg-8">
                <div class="container">
                    <!--              post starts here-->
                    <?php
                    if(!isset($_GET['id']) || $_GET['id'] == null){
//                        header('Location: 404.php');
                        echo "<script type='text/javascript'> window.location ='404.php'; </script>";
                    }else{
                        $id = $_GET['id'];
                    }
                    ?>
                    <?php
                    $query = "SELECT list_posts.id, title, description, image, tags, list_posts.created_at, list_posts.category, name, firstname, lastname  FROM list_posts, list_category, list_user WHERE list_category.id = list_posts.category AND list_user.id = list_posts.author AND list_posts.slug = '$id' ";
                    $post = $database->select($query);
                    if($post){
                    while ($result = $post->fetch_assoc()) {
                    ?>
                    <div class="post-single">
                        <div class="post-thumbnail"><img src="admin/<?php echo $result['image']; ?>" alt="..." class="img-fluid"></div>
                        <div class="post-details">
                            <div class="post-meta d-flex justify-content-between">
                                <div class="category"><a href="#"><?php echo $result['name']; ?></a></div>
                            </div>
                            <h1><?php echo $result['title']; ?><a href="#"><i class="fa fa-bookmark-o"></i></a></h1>
                            <div class="post-footer d-flex align-items-center flex-column flex-sm-row"><a href="#" class="author d-flex align-items-center flex-wrap">
                                    <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid"></div>
                                    <div class="title"><span><?php echo $result['firstname'].' '.$result['lastname']; ?></span></div></a>
                                <div class="d-flex align-items-center flex-wrap">
                                    <div class="date"><i class="icon-clock"></i> <?php echo $format->humanTiming(strtotime($result['created_at'])); ?></div>
                                    <div class="views"><i class="icon-eye"></i> 500</div>
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
                                $getname = $result['name'];
                                $query = "SELECT * FROM list_posts WHERE category = '$category' ORDER BY rand() LIMIT 2";
                                $post = $database->select($query);
                                if($post){
                                    while($result = $post->fetch_assoc()){
                                        ?>
                                        <a href="./posts/<?php echo $result['slug']; ?>" class="prev-post text-left d-flex align-items-center">
                                            <div class="icon prev"><i class="fa fa-angle-left"></i></div>
                                            <div class="text">
                                                <strong class="text-primary"><?php echo $getname; ?></strong>
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
                                <?php
                                $getquery = "SELECT *  FROM list_posts WHERE slug = '$id' ";
                                $getdata = $database->select($getquery);
                                if($getdata){
                                    while($getresult = $getdata->fetch_assoc()){
                                ?>
                                <?php
                                $getid = $getresult['id'];
                                $query = "SELECT *  FROM list_comment WHERE post = '$getid' AND status = '1' ";
                                $comment = $database->select($query);
                                //                    $comments = mysqli_num_rows($comment);
                                ?>
                                <header>
                                    <h3 class="h6">Post Comments<span class="no-of-comments">(<?php if($comment){
                                                $count = mysqli_num_rows($comment);
                                                echo $count;
                                            }else{
                                                echo 0;
                                            } ?>)</span>
                                    </h3>
                                </header>
                                <?php
                                if($comment){
                                    while ($result = $comment->fetch_assoc()) {
                                        ?>
                                        <div class="comment">
                                            <div class="comment-header d-flex justify-content-between">
                                                <div class="user d-flex align-items-center">
                                                    <div class="image"><img src="img/user.svg" alt="..." class="img-fluid rounded-circle"></div>
                                                    <div class="title"><strong><?php echo $result['name']; ?></strong><span class="date"><?php echo $format->formatYear($result['created_at']); ?></span></div>
                                                </div>
                                            </div>
                                            <div class="comment-body">
                                                <p><?php echo $result['comment']; ?></p>
                                            </div>
                                        </div>
                                        <?php
                                    }
                                }
                                ?>

                             <?php
                                    }
                                }
                              ?>
                            </div>
                            <!--                  add comment starts here-->
                            <div class="add-comment">
                                <header>
                                    <h3 class="h6">Leave a reply</h3>
                                </header>
                                <?php
                                if($_SERVER['REQUEST_METHOD'] == 'POST'){
                                    $name = $format->validation($_POST['name']);
                                    $email = $format->validation($_POST['email']);
                                    $comment = $_POST['comment'];
                                    $name = mysqli_real_escape_string($database->link, $name);
                                    $email = mysqli_real_escape_string($database->link, $email);
                                    $ip = $_SERVER['REMOTE_ADDR']?:($_SERVER['HTTP_X_FORWARDED_FOR']?:$_SERVER['HTTP_CLIENT_IP']);

                                    if($name == "" || $email == "" || $comment == ""){
                                        echo "<button class='btn btn-danger'>Error ! Field must not be empty</button>";
                                    }elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                                        echo "<button class='btn btn-danger'>Error ! Please enter a valid email address</button>";
                                    }else {
                                        $query = "INSERT INTO list_comment (post, name, email, comment, ip) VALUES ('$getid', '$name', '$email', '$comment', '$ip') ";
                                        $insert_row = $database->insert($query);
                                        if ($insert_row) {
                                            echo "<button class='btn btn-success'>Thanks ! Your comment is awaiting for moderation</button>";
                                        } else {
                                            echo "<button class='btn btn-danger'>Error ! Something went woring</button>";
                                        }
                                    }
                                }
                                ?>
                                <form action="" class="commenting-form" method="post">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <input type="text" name="name" id="username" placeholder="Name" class="form-control">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="eamil" name="email" id="useremail" placeholder="Email Address (will not be published)" class="form-control">
                                        </div>
                                        <div class="form-group col-md-12">
                                            <textarea name="comment" id="usercomment" placeholder="Type your comment" class="form-control"></textarea>
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