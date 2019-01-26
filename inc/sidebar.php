
<aside class="col-lg-4">
    <!-- Widget [Search Bar Widget]-->
    <div class="widget search">
        <header>
            <h3 class="h6">Search the blog</h3>
        </header>
        <form action="search.php" method="get">
            <div class="form-group">
                <input type="search" name="search" id="search" placeholder="What are you looking for?">
                <button type="submit" class="submit"><i class="icon-search-1"></i></button>
            </div>
        </form>
    </div>
    <!-- Widget [Latest Posts Widget]        -->
    <div class="widget latest-posts">
        <header>
            <h3 class="h6">Latest Posts</h3>
        </header>
        <div class="blog-posts">
            <?php
                $query = "SELECT * FROM list_posts ORDER BY id DESC LIMIT 3";
                $post = $database->select($query);
                if($post){
                    while($result = $post->fetch_assoc()){
             ?>
            <a href="./posts/<?php echo $result['slug']; ?>">
                <div class="item d-flex align-items-center">
                    <div class="image"><img src="admin/<?php echo $result['image']; ?>" alt="..." class="img-fluid" width="60px" height="60px"></div>
                    <div class="title"><strong><?php echo $result['title']; ?></strong>
                        <div class="d-flex align-items-center">
<!--                            static elements-->
                            <div class="views"><i class="icon-eye"></i> 500</div>
                            <div class="comments"><i class="icon-comment"></i>12</div>
                        </div>
                    </div>
                </div>
            </a>
             <?php
                  }
                }
            ?>
        </div>
    </div>
    <!-- Widget [Categories Widget]-->
    <div class="widget categories">
        <header>
            <h3 class="h6">Categories</h3>
        </header>
        <?php
        $query = "SELECT * FROM list_category";
        $category = $database->select($query);
        if($category){
            while($result = $category->fetch_assoc()){
         ?>
         <div class="item d-flex justify-content-between"><a href="./categories/<?php echo $result['slug']; ?>"><?php echo $result['name']; ?></a>
             <span>
                <?php
                $catid = $result['id'];
                $query = "SELECT * FROM list_posts WHERE category = '$catid' ";
                $catcount = $database->select($query);
                if($catcount){
                    $count = mysqli_num_rows($catcount);
                    echo $count;
                }else{
                    echo 0;
                }
                ?>
             </span>
         </div> <!--here is one static value-->
         <?php
                     }
                }else{
                echo "<div class='item d-flex justify-content-between'><a href='#'>No Category Found</a></div>";
            }
        ?>
    </div>
    <!-- Widget [Tags Cloud Widget]-->
    <div class="widget tags">
        <header>
            <h3 class="h6">Tags</h3>
        </header>
        <ul class="list-inline">
            <?php
            $query = "SELECT tags FROM list_posts LIMIT 5";
            $tags = $database->select($query);
            if($tags){
                while($result = $tags->fetch_assoc()){
                    ?>
                    <li class="list-inline-item"><a href="#" class="tag">#<?php echo $result['tags']; ?></a></li>
                    <?php
                }
            }
            ?>
        </ul>
    </div>
</aside>