
<aside class="col-lg-4">
    <?php
    $query = "SELECT * FROM list_widget WHERE id = '1'";
    $data = $database->select($query);
    if($data){
        while($widget = $data->fetch_assoc()){
    ?>
    <!-- Widget [Search Bar Widget]-->
    <?php
            if(!empty($widget['sidebar1'])){
                $name = $widget['sidebar1'];
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
    <!--            widget here-->
            <?php
            if(!empty($widget['sidebar2'])){
                $name = $widget['sidebar2'];
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

    <!-- Widget [Latest Posts Widget]        -->
            <?php
            if(!empty($widget['sidebar3'])){
                $name = $widget['sidebar3'];
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

    <!-- Widget [Categories Widget]-->
            <?php
            if(!empty($widget['sidebar4'])){
                $name = $widget['sidebar4'];
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

    <!-- Widget [Tags Cloud Widget]-->

    <?php } } ?>
</aside>