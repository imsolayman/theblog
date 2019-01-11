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
                <div id="title-panel">
                    <div class="col-lg-8">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Website Title
                            </div>
                            <div class="panel-body">
                                <form class="form-inline title-form" action="" method="post">
                                    <div class="form-group mx-sm-3 mb-2">
                                        <label for="inputPassword2" class="sr-only">Title</label>
                                        <input type="text" name="title" class="form-control" id="inputPassword2" placeholder="title">
                                    </div>
                                    <div class="form-group mx-sm-3 mb-2">
                                        <label for="inputPassword2" class="sr-only">Tagline</label>
                                        <input type="text" name="tagline" class="form-control" id="inputPassword2" placeholder="tagline">
                                    </div>
                                    <button type="submit" class="btn btn-primary mb-2">Update</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                Logo
                            </div>
                            <div class="panel-body">
                                <form action="" class="form-inline" method="post">
                                    <div class="form-group">
                                        <label class="sr-only">File input</label>
                                        <input type="file">
                                    </div>
                                    <button type="submit" class="btn btn-primary mb-2">Update</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-4 -->
              </div>
    <!--            customize content starts here-->
                <div id="contact-panel">
                    <div class="col-lg-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                Contact Info
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputEmail3" placeholder="Title">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="New York, USA">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Phone</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="+156548568">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
<!--                        copyright-section-->
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                Copyright
                            </div>
                            <div class="panel-body">
                                <form  action="" method="post">
                                    <div class="form-group col-md-10">
<!--                                        <label for="inputPassword2" class="sr-only">Tagline</label>-->
                                        <input type="text" name="tagline" class="form-control" id="inputPassword2" placeholder="tagline">
                                    </div>
                                    <button type="submit" class="btn btn-primary col-md-2">Update</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-lg-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Social Icons
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label"><a href="" class="btn btn-primary btn-facebook"><i class="fa fa-facebook"></i></a></label>
                                        <div class="col-sm-10">
                                            <input type="facebook" name="facebook" class="form-control" id="inputEmail3" placeholder="facebook.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label"><a href="" class="btn btn-primary btn-success"><i class="fa fa-twitter"></i></a></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="twitter" class="form-control" id="inputEmail3" placeholder="twitter.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label"><a href="" class="btn btn-danger btn-instagram"><i class="fa fa-instagram"></i></a></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="instagram" class="form-control" id="inputEmail3" placeholder="instagram.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label"><a href="" class="btn btn-success btn-behance"><i class="fa fa-behance"></i></a></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="behance" class="form-control" id="inputEmail3" placeholder="behance.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label"><a href="" class="btn btn-primary btn-pinterest"><i class="fa fa-pinterest"></i></a></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="pinterest" class="form-control" id="inputEmail3" placeholder="pinterest.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEmail3" class="col-sm-2 col-form-label"><a href="" class="btn btn-default btn-youtube"><i class="fa fa-youtube"></i></a></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="youtube" class="form-control" id="inputEmail3" placeholder="youtube.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-4 -->
              </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include '../inc/footer.php'; ?>
