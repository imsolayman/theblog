
<!-- Page Footer-->
<footer class="main-footer">
    <div class="container">
        <div class="row">
            <?php
                $query = "SELECT * FROM list_widget WHERE id = '1'";
                $data = $database->select($query);
                if($data){
                while($widget = $data->fetch_assoc()){
            ?>
            <div class="col-md-4">
                <?php
                if(!empty($widget['footer1'])){
                    $name = $widget['footer1'];
//                $name =  $widget["{$sidebar1}"];
                    if($name == 'category'){
                        include 'helper/widget/category.php';
                    }elseif($name == 'contactinfo'){
                        include 'helper/widget/contactinfo.php';
                    }elseif($name == 'footermenu'){
                        include 'helper/widget/footermenu.php';
                    }elseif($name == 'newsletter'){
                        include 'helper/widget/newsletter.php';
                    }elseif($name == 'recentpost'){
                        include 'helper/widget/recentpost.php';
                    }elseif($name == 'searchbox'){
                        include 'helper/widget/searchbox.php';
                    }elseif($name == 'socialicon'){
                        include 'helper/widget/socialicon.php';
                    }elseif($name == 'tags'){
                        include 'helper/widget/tags.php';
                    }
                }else{
                    echo "";
                }
                ?>
            </div>
            <div class="col-md-4">
                <?php
                if(!empty($widget['footer2'])){
                    $name = $widget['footer2'];
//                $name =  $widget["{$sidebar1}"];
                    if($name == 'category'){
                        include 'helper/widget/category.php';
                    }elseif($name == 'contactinfo'){
                        include 'helper/widget/contactinfo.php';
                    }elseif($name == 'footermenu'){
                        include 'helper/widget/footermenu.php';
                    }elseif($name == 'newsletter'){
                        include 'helper/widget/newsletter.php';
                    }elseif($name == 'recentpost'){
                        include 'helper/widget/recentpost.php';
                    }elseif($name == 'searchbox'){
                        include 'helper/widget/searchbox.php';
                    }elseif($name == 'socialicon'){
                        include 'helper/widget/socialicon.php';
                    }elseif($name == 'tags'){
                        include 'helper/widget/tags.php';
                    }
                }else{
                    echo "";
                }
                ?>
            </div>
            <div class="col-md-4">
                <?php
                if(!empty($widget['footer3'])){
                    $name = $widget['footer3'];
//                $name =  $widget["{$sidebar1}"];
                    if($name == 'category'){
                        include 'helper/widget/category.php';
                    }elseif($name == 'contactinfo'){
                        include 'helper/widget/contactinfo.php';
                    }elseif($name == 'footermenu'){
                        include 'helper/widget/footermenu.php';
                    }elseif($name == 'newsletter'){
                        include 'helper/widget/newsletter.php';
                    }elseif($name == 'recentpost'){
                        include 'helper/widget/recentpost.php';
                    }elseif($name == 'searchbox'){
                        include 'helper/widget/searchbox.php';
                    }elseif($name == 'socialicon'){
                        include 'helper/widget/socialicon.php';
                    }elseif($name == 'tags'){
                        include 'helper/widget/tags.php';
                    }
                }else{
                    echo "";
                }
                ?>
            </div>
            <?php } } ?>
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