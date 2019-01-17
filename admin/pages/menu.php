<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>
<?php
if(Session::get('userRole') != '1'){
    echo "<script type='text/javascript'> window.location ='index.php'; </script>";
}
?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Customize</h1>
            </div>
            <!-- /.col-lg-12 -->
            <!--            customize content starts here-->
            <div id="menu-panel">
                <div class="col-lg-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Main Menu
                        </div>
                        <div class="panel-body">
                            <div class="navbar-default">
                                <div class="sidebar-nav">
                                    <?php
                                        if(isset($_GET['deletemain'])){
                                            $id = $_GET['deletemain'];
                                            $query = "DELETE FROM list_mainmenu WHERE id = '$id' ";
                                            $deleted_row = $database->delete($query);
                                            if($deleted_row){
                                                echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Menu Deleted Successfully !</div>";
                                            }else{
                                                echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Something Went Woring !</div>";
                                            }
                                        }
                                    ?>
                                    <ul class="nav menu-list" id="side-menu">
                                        <?php
                                            $query = "SELECT * FROM list_mainmenu  ORDER BY id ASC";
                                            $menu = $database->select($query);
                                            if($menu){
                                            while($result = $menu->fetch_assoc()){
                                        ?>
                                        <li>
                                            <a href="<?php echo $result['link']; ?>" target="_blank"> <?php echo $result['title']; ?></a> <a href="editmenu.php?editmain=<?php echo $result['id']; ?>"><i class="fa fa-edit fa-fw"></i></a>
                                            <a onclick="return confirm('Are you sure?')" href="?deletemain=<?php echo $result['id']; ?>"><i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <?php
                                              }
                                            }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Add New Menu
                        </div>
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Main Menu</a>
                                </li>
                                <li><a href="#profile" data-toggle="tab">Footer Menu</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <?php
                                    if(isset($_POST["mainmenu"])){
                                        $title = $format->validation($_POST['title']);
                                        $link = $format->validation($_POST['link']);
                                        $title = mysqli_real_escape_string($database->link, $title);
                                        $link = mysqli_real_escape_string($database->link, $link);
                                        if($title == "" || $link == "" ){
                                            echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Field must not be empty !</div>";
                                        }else{
                                            $query = "INSERT INTO list_mainmenu (title, link) VALUES ('$title', '$link') ";
                                            $inserted_row = $database->update($query);
                                            if($inserted_row){
                                                echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Menu updated successfully !</div>";
                                            }else{
                                                echo "<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Menu not updated !</div>";
                                            }
                                        }
                                    }
                                    ?>
                                    <form class="menu-form" action="" method="post">
                                        <div class="form-group col-md-4">
                                            <input type="text" name="title" class="form-control" id="inputPassword2" placeholder="title">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="text" name="link" class="form-control" id="inputPassword2" placeholder="link">
                                        </div>
                                        <input type="submit" class="btn btn-primary mb-2" name="mainmenu" value="Add">
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <?php
                                    if(isset($_POST["footermenu"])){
                                        $title = $format->validation($_POST['title']);
                                        $link = $format->validation($_POST['link']);
                                        $title = mysqli_real_escape_string($database->link, $title);
                                        $link = mysqli_real_escape_string($database->link, $link);
                                        if($title == "" || $link == "" ){
                                            echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Field must not be empty !</div>";
                                        }else{
                                            $query = "INSERT INTO list_footermenu (title, link) VALUES ('$title', '$link') ";
                                            $inserted_row = $database->update($query);
                                            if($inserted_row){
                                                echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Menu updated successfully !</div>";
                                            }else{
                                                echo "<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Menu not updated !</div>";
                                            }
                                        }
                                    }
                                    ?>
                                    <form class="menu-form" action="" method="post">
                                        <div class="form-group col-md-4">
                                            <input type="text" name="title" class="form-control" id="inputPassword2" placeholder="title">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="text" name="link" class="form-control" id="inputPassword2" placeholder="link">
                                        </div>
                                        <input type="submit" class="btn btn-primary mb-2" name="footermenu" value="Add">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Footer Menu
                        </div>
                        <div class="panel-body">
                            <div class="navbar-default">
                                <div class="sidebar-nav">
                                    <?php
                                    if(isset($_GET['deletefooter'])){
                                        $id = $_GET['deletefooter'];
                                        $query = "DELETE FROM list_footermenu WHERE id = '$id' ";
                                        $deleted_row = $database->delete($query);
                                        if($deleted_row){
                                            echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Menu Deleted Successfully !</div>";
                                        }else{
                                            echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Something Went Woring !</div>";
                                        }
                                    }
                                    ?>
                                    <ul class="nav menu-list" id="side-menu">
                                        <?php
                                            $query = "SELECT * FROM list_footermenu ORDER BY id ASC";
                                            $menu = $database->select($query);
                                            if($menu){
                                                while($result = $menu->fetch_assoc()){
                                          ?>
                                                    <li>
                                                        <a href="<?php echo $result['link']; ?>" target="_blank"> <?php echo $result['title']; ?></a> <a href="editmenu.php?editfooter=<?php echo $result['id']; ?>"><i class="fa fa-edit fa-fw"></i></a>
                                                        <a onclick="return confirm('Are you sure?')" href="?deletefooter=<?php echo $result['id']; ?>"><i class="fa fa-trash fa-fw"></i></a>
                                                    </li>
                                         <?php
                                                }
                                            }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!--            customize content starts here-->

        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include '../inc/footer.php'; ?>
