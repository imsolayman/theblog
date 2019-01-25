
<!-- Page Footer-->
<footer class="main-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="logo">
                    <?php
                        $query = "SELECT * FROM list_customize";
                        $data = $database->select($query);
                        if($data){
                        while($result = $data->fetch_assoc()){
                    ?>
                    <h6 class="text-white"><?php echo $result['title']; ?></h6>
                    <?php
                            }
                        }
                    ?>
                </div>
                <div class="contact-details">
                    <?php
                        $query = "SELECT * FROM list_customize";
                        $data = $database->select($query);
                        if($data){
                        while($result = $data->fetch_assoc()){
                    ?>
                    <p><?php echo $result['address']; ?></p>
                    <p><?php echo $result['phone']; ?></p>
                    <p><?php echo $result['email']; ?></p>
                    <?php
                           }
                        }
                    ?>
                    <ul class="social-menu">
                        <?php
                            $query = "SELECT * FROM list_social";
                            $data = $database->select($query);
                            if($data){
                            while($result = $data->fetch_assoc()){
                        ?>
                        <li class="list-inline-item"><a href="<?php echo $result['facebook']; ?>" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="<?php echo $result['twitter']; ?>" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="<?php echo $result['instagram']; ?>" target="_blank"><i class="fa fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="<?php echo $result['skype']; ?>" target="_blank"><i class="fa fa-skype"></i></a></li>
                        <li class="list-inline-item"><a href="<?php echo $result['linkedin']; ?>" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                        <li class="list-inline-item"><a href="<?php echo $result['youtube']; ?>" target="_blank"><i class="fa fa-youtube"></i></a></li>
                        <?php
                                }
                            }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="menus d-flex">
                    <ul class="list-unstyled">
                        <?php
                            $query = "SELECT * FROM list_footermenu ORDER BY id ASC LIMIT 4";
                            $data = $database->select($query);
                            if($data){
                            while($result = $data->fetch_assoc()){
                        ?>
                        <li> <a href="<?php echo $result['link']; ?>"><?php echo $result['title']; ?></a></li>
                        <?php
                                }
                            }
                        ?>
                    </ul>
                    <ul class="list-unstyled">
                        <?php
                            $query = "SELECT * FROM list_footermenu ORDER BY id DESC LIMIT 4";
                            $data = $database->select($query);
                            if($data){
                            while($result = $data->fetch_assoc()){
                        ?>
                        <li> <a href="<?php echo $result['link']; ?>"><?php echo $result['title']; ?></a></li>
                        <?php
                             }
                          }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="latest-posts">
                    <?php
                        $query = "SELECT * FROM list_posts ORDER BY id DESC LIMIT 2";
                        $post = $database->select($query);
                        if($post){
                        while($result = $post->fetch_assoc()){
                    ?>
                    <a href="./posts/<?php echo $result['slug']; ?>">
                        <div class="post d-flex align-items-center">
                            <div class="image"><img src="admin/<?php echo $result['image']; ?>" alt="..." class="img-fluid"></div>
                            <div class="title"><strong><?php echo $result['title']; ?></strong><span class="date last-meta"><?php echo $format->formatYear($result['created_at']); ?></span></div>
                        </div>
                    </a>
                    <?php
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <div class="copyrights">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <?php
                        $query = "SELECT * FROM list_customize";
                        $post = $database->select($query);
                        if($post){
                        while($result = $post->fetch_assoc()){
                    ?>
                    <p>&copy; <?php echo $result['copyright']; ?></p>
                    <?php
                            }
                        }
                    ?>
                </div>
                <div class="col-md-6 text-right">
                    <p>Template By <a href="https://bootstraptemple.com" class="text-white">Bootstrap Temple</a>
                        <!-- Please do not remove the backlink to Bootstrap Temple unless you purchase an attribution-free license @ Bootstrap Temple or support us at http://bootstrapious.com/donate. It is part of the license conditions. Thanks for understanding :)                         -->
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/@fancyapps/fancybox/jquery.fancybox.min.js"></script>
<script src="js/front.js"></script>
<!-- BEGIN ExactMetrics v5.3.7 Universal Analytics - https://exactmetrics.com/ -->

<?php
$query = "SELECT * FROM list_seo WHERE id = '1'";
$analytics = $database->select($query);
if($analytics){
while($result = $analytics->fetch_assoc()){
?>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', '<?php echo $result["analytics"]; ?>', 'auto');
    ga('send', 'pageview');
</script>
<?php
    }
}
?>
</body>
</html>