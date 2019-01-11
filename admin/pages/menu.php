<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>

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
                                    <ul class="nav" id="side-menu">
                                        <li>
                                            <a href="#"> Home <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> About <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> Blog <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> Contact <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
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
                                <li class="active"><a href="#home" data-toggle="tab" aria-expanded="true">Main Menu</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab" aria-expanded="false">Footer Menu</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <form class="menu-form" action="" method="post">
                                        <div class="form-group col-md-4">
                                            <label for="inputPassword2" class="sr-only">Title</label>
                                            <input type="text" name="mainmenu" class="form-control" id="inputPassword2" placeholder="Enter menu here">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword2" class="sr-only">Title</label>
                                            <input type="text" name="mainlink" class="form-control" id="inputPassword2" placeholder="Enter link here">
                                        </div>
                                        <button type="submit" class="btn btn-success col-md-2">Add Menu</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <form  class="menu-form"  action="" method="post">
                                        <div class="form-group col-md-4">
                                            <input type="text" name="footermenu" class="form-control" id="inputPassword2" placeholder="Enter menu here">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="text" name="footerlink" class="form-control" id="inputPassword2" placeholder="Enter link here">
                                        </div>
                                        <button type="submit" class="btn btn-success col-md-2">Add Menu</button>
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
                                    <ul class="nav" id="side-menu">
                                        <li>
                                            <a href="#"> Home <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> About <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> Blog <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> Contact <i class="fa fa-edit fa-fw"></i> <i class="fa fa-trash fa-fw"></i></a>
                                        </li>
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
