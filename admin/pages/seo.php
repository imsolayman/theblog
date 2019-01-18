<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">SEO Settings</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <!-- /.panel-heading -->
        <div class="panel-body">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">General Settings</a>
                </li>
                <li><a href="#profile" data-toggle="tab">Change Options</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane fade in active" id="home">

                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Home Page Settings
                        </div>
                        <div class="panel-body">
                            <?php
                            if(isset($_POST["general"])){
                                $hometitle = $format->validation($_POST['hometitle']);
                                $homedescription = $format->validation($_POST['homedescription']);
                                $homekeyword = $format->validation($_POST['homekeyword']);
                                $google = $format->validation($_POST['google']);
                                $bing = $format->validation($_POST['bing']);
                                $pinterest = $format->validation($_POST['pinterest']);
                                $analytics = $format->validation($_POST['analytics']);
                                $hometitle = mysqli_real_escape_string($database->link, $hometitle);
                                $homedescription = mysqli_real_escape_string($database->link, $homedescription);
                                $homekeyword = mysqli_real_escape_string($database->link, $homekeyword);
                                $google = mysqli_real_escape_string($database->link, $google);
                                $bing = mysqli_real_escape_string($database->link, $bing);
                                $pinterest = mysqli_real_escape_string($database->link, $pinterest);
                                $analytics = mysqli_real_escape_string($database->link, $analytics);

                                $query = "UPDATE list_seo
                                            SET 
                                            hometitle = '$hometitle',
                                            homedescription = '$homedescription',
                                            homekeyword = '$homekeyword',
                                            google = '$google',
                                            bing = '$bing',
                                            pinterest = '$pinterest',
                                            analytics = '$analytics'
                                            WHERE
                                            id = '1' ";
                                $updated_row = $database->update($query);
                                if($updated_row){
                                    echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Data updated successfully ! <a href='seo.php' class='btn btn-primary'>Back</a></div>";
                                }else{
                                    echo "<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Data not updated ! <a href='seo.php' class='btn btn-primary'>Back</a></div>";
                                }
                            }
                            ?>
                            <?php
                                $query = "SELECT * FROM list_seo WHERE id = '1' ";
                                $posts = $database->select($query);
                                if($posts){
                                while($result = $posts->fetch_assoc()){
                            ?>
                            <form action="" method="post">
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Home Title:</label>
                                <div class="col-sm-8">
                                    <input type="text" name="hometitle" class="form-control" id="inputEmail3" value="<?php echo $result['hometitle']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Home Description:</label>
                                <div class="col-sm-8">
                                    <textarea name="homedescription" class="form-control" id="inputEmail3"><?php echo $result['homedescription']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Home Keywords:</label>
                                <div class="col-sm-8">
                                    <input type="text" name="homekeyword" class="form-control" id="inputEmail3" value="<?php echo $result['homekeyword']; ?>">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Google Webmaster Settings
                        </div>
                        <div class="panel-body">
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Google Search Console:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="google" class="form-control" id="inputEmail3" value="<?php echo $result['google']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Bing Webmaster Tools:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="bing" class="form-control" id="inputEmail3" value="<?php echo $result['bing']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Pinterest Site Verification:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="pinterest" class="form-control" id="inputEmail3" value="<?php echo $result['pinterest']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-3 col-form-label">Google Analytics ID:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="analytics" class="form-control" id="inputEmail3" value="<?php echo $result['analytics']; ?>">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="seo-submit">
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <input type="submit" class="btn btn-success mb-2" name="general" value="Update Options">
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile">

                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Content Type Settings
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>SEO on only these Content Types:</label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox">Page
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox">Post
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox">Category
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Keywords Settings
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>Use Keywords: </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>Enabled
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Disabled
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Feature Manager
                        </div>
                        <div class="panel-body">
                            <?php
                                if(isset($_GET['activateSitemap'])){
                                    $id = $_GET['activateSitemap'];
                                    $query = "UPDATE list_seo SET checksitemap = '1' WHERE id = '$id' ";
                                    $updated_row = $database->update($query);
                                    if($updated_row){
                                        echo "<script>alert('Sitemap.xml Activated !');</script>";
                                        echo "<script type='text/javascript'> window.location ='seo.php'; </script>";
                                    }else{
                                        echo "<script>alert('Something went wrong');</script>";
                                    }
                                }elseif(isset($_GET['unactivateSitemap'])){
                                    $id = $_GET['unactivateSitemap'];
                                    $query = "UPDATE list_seo SET checksitemap = '0' WHERE id = '$id' ";
                                    $updated_row = $database->update($query);
                                    if($updated_row){
                                        echo "<script>alert('Sitemap.xml inactivated !');</script>";
                                        echo "<script type='text/javascript'> window.location ='seo.php'; </script>";
                                    }else{
                                        echo "<script>alert('Something went wrong');</script>";
                                    }
                                }elseif(isset($_GET['activateRobot'])){
                                    $id = $_GET['activateRobot'];
                                    $query = "UPDATE list_seo SET checkrobot = '1' WHERE id = '$id' ";
                                    $updated_row = $database->update($query);
                                    if($updated_row){
                                        $robot = fopen("../../Robot.txt", "w") or die("Unable to open file!");
                                        $txt = "User-agent: *
Disallow: /";
                                        fwrite($robot, $txt);
                                        fclose($robot);
                                        echo "<script>alert('Robot.txt Activated !');</script>";
                                        echo "<script type='text/javascript'> window.location ='seo.php'; </script>";
                                    }else{
                                        echo "<script>alert('Something went wrong');</script>";
                                    }
                                }elseif(isset($_GET['unactivateRobot'])){
                                    $id = $_GET['unactivateRobot'];
                                    $query = "UPDATE list_seo SET checkrobot = '0' WHERE id = '$id' ";
                                    $updated_row = $database->update($query);
                                    if($updated_row){
                                        unlink("../../Robot.txt");
                                        echo "<script>alert('Robot.txt inactivated !');</script>";
                                        echo "<script type='text/javascript'> window.location ='seo.php'; </script>";
                                    }else{
                                        echo "<script>alert('Something went wrong');</script>";
                                    }
                                }
                            ?>
                            <form role="form">
                                <div class="form-group">
                                    <label>XML Sitemap: </label>
                                    <label class="radio-inline">
                                        <span class="btn btn-primary">
                                            <a onclick="return confirm('Are you sure to activate?')" href="?activateSitemap=<?php echo $result['id']; ?>">
                                            <?php
                                            if($result['checksitemap'] == 0){
                                                echo "<p class='error'>Activate</p>";
                                            }
                                            ?>
                                            </a>
                                            <a onclick="return confirm('Are you sure to inactivate?')" href="?unactivateSitemap=<?php echo $result['id']; ?>"">
                                            <?php
                                            if($result['checksitemap'] == 1){
                                                echo "<p class='done'>Activated</p>";
                                            }
                                            ?>
                                        </a>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label>Robot .txt: </label>
                                    <label class="radio-inline">
                                        <span  class="btn btn-primary">
                                            <a onclick="return confirm('Are you sure to activate?')" href="?activateRobot=<?php echo $result['id']; ?>">
                                            <?php
                                            if($result['checkrobot'] == 0){
                                                echo "<p class='error'>Activate</p>";
                                            }
                                            ?>
                                            </a>
                                            <a onclick="return confirm('Are you sure to inactivate?')" href="?unactivateRobot=<?php echo $result['id']; ?>">
                                            <?php
                                            if($result['checkrobot'] == 1){
                                                echo "<p class='done'>Activated</p>";
                                            }
                                            ?>
                                            </a>
                                        </span>
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="panel panel-success">
                        <div class="panel-body">
                            <form role="form">
                                <button type="submit" class="btn btn-success">Update Options</button>
                                <button type="reset" class="btn btn-default">Restore All Default</button>
                            </form>
                            <?php
                                     }
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include '../inc/footer.php'; ?>
