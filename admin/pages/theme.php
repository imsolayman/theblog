<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Theme Options</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <!-- /.panel-heading -->
        <div class="panel-body">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">General Settings</a>
                </li>
                <!--                profile starts here will be activated when necessary-->
<!--                <li><a href="#profile" data-toggle="tab">Change Options</a></li>-->
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">

                <div class="panel panel-success">
                    <div class="panel-heading">
                        Logo
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <div class="form-group">
                                <label>Logo Type:</label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">Logo Only
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" checked>Text Only
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">Logo and Text
                                </label>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="panel panel-success">
                    <div class="panel-heading">
                        Theme Color
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <div class="form-group">
                                <label>Theme Color: </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>Default
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Blue
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Green
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Pink
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Red
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Sea
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Violet
                                </label>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="panel panel-success">
                    <div class="panel-heading">
                        Typography
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <div class="form-group col-md-4 typography">
                                <label for="inputState">Theme Font: </label>
                                <select id="inputState" class="form-control" name="typography">
                                    <option value="1" selected>Open Sans</option>
                                    <option value="2">Roboto Condensed</option>
                                </select>
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
                    </div>
                </div>
                </div>


<!--                profile starts here will be activated when necessary-->
<!--                <div class="tab-pane fade" id="profile"></div>-->

            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include '../inc/footer.php'; ?>
