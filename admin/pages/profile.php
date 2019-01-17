<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>
<?php
    $userid = Session::get("userId");
    $userrole = Session::get("userRole");
?>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add New Post</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Add User
                </div>
                <div class="panel-body">
                    <div class="row">
                        <?php
                        if($_SERVER['REQUEST_METHOD'] == 'POST'){
                            $username = $format->validation($_POST['username']);
                            $email = $format->validation($_POST['email']);
                            $password = $format->validation(md5($_POST['password']));
                            $birth = $format->datePicker($_POST['birth']);

                            $username = mysqli_real_escape_string($database->link, $username);
                            $email = mysqli_real_escape_string($database->link, $email);
                            $password = mysqli_real_escape_string($database->link, $password);
                            $firstname = mysqli_real_escape_string($database->link, $_POST['firstname']);
                            $lastname = mysqli_real_escape_string($database->link, $_POST['lastname']);
                            $details = mysqli_real_escape_string($database->link, $_POST['details']);
                            $website = mysqli_real_escape_string($database->link, $_POST['website']);
                            $birth = mysqli_real_escape_string($database->link, $birth);
                            $role = mysqli_real_escape_string($database->link, $_POST['role']);

                            $permited  = array('jpg', 'jpeg', 'png', 'gif');
                            $file_name = $_FILES['image']['name'];
                            $file_size = $_FILES['image']['size'];
                            $file_temp = $_FILES['image']['tmp_name'];

                            $div = explode('.', $file_name);
                            $file_ext = strtolower(end($div));
                            $unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
                            $uploaded_image = "../upload/user/".$unique_image;
                            if($username == "" || $email == "" || $password == ""){
                                echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Field must not be empty !</div>";
                            }else{
                                if(!empty($file_name)){
                                    if($file_size>1048567){
                                        echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Image Size should be less then 1MB !</div>";
                                    }elseif(in_array($file_ext, $permited) === false) {
                                        echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>You can upload only:-".implode(', ', $permited)."</div>";
                                    }else{
                                        move_uploaded_file($file_temp, $uploaded_image);
                                        $query = "INSERT INTO list_user (firstname, lastname, username, photo, email, details, password, birth, website, role) VALUES ('$firstname', '$lastname', '$username', 'upload/user/$unique_image', '$email',  '$details', '$password', '$birth', '$website', '$role')";
                                        $updated_row = $database->insert($query);
                                        if($updated_row){
                                            echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>User added successfully !</div>";
                                        }else{
                                            echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>User not added !</div>";
                                        }
                                    }
                                }else{
                                    $query = "UPDATE `list_posts` 
                                                  SET 
                                                  `title`='$title',
                                                  `description`='$description',
                                                  `category`='$category',
                                                  `tags`='$tags',
                                                  `metatitle`='$metatitle',
                                                  `metadescription`='$metadescription',
                                                  `slug`='$slug' 
                                                  WHERE `id` = $id ";
                                    $updated_row = $database->update($query);
                                    if($updated_row){
                                        echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Post updated successfully !  <a href='posts.php' class='btn btn-primary'>Back</a></div>";
                                    }else{
                                        echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Post not updated !</div>";
                                    }
                                }
                            }
                        }
                        ?>
                        <form  role="form" class="add-user col-md-8" action="" method="post" enctype="multipart/form-data">
                            <?php
                                $query = "SELECT * FROM list_user WHERE id = '$userid' AND  role = $userrole ";
                                $menu = $database->select($query);
                                if($menu){
                                while($result = $menu->fetch_assoc()){
                            ?>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Username*</label>
                                <div class="col-sm-10">
                                    <input type="text" name="username" class="form-control" id="inputEmail3" value="<?php echo $result['username']; ?>" disabled>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email*</label>
                                <div class="col-sm-10">
                                    <input type="email" name="email" class="form-control" id="inputEmail3" value="<?php echo $result['email']; ?>" disabled>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">First Name</label>
                                <div class="col-sm-10">
                                    <input type="text" name="firstname" class="form-control" id="inputEmail3" value="<?php echo $result['firstname']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Last Name</label>
                                <div class="col-sm-10">
                                    <input type="text" name="lastname" class="form-control" id="inputEmail3" value="<?php echo $result['lastname']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">About You</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="details"><?php echo $result['details']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Website</label>
                                <div class="col-sm-10">
                                    <input type="text" name="website" class="form-control" id="inputEmail3" value="<?php echo $result['website']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label" for="when">Date of Birth</label>
                                <div class="col-sm-3">
                                    <input class="form-control" name="birth" id="datepicker"  type="date" value="<?php echo $format->reverseDatePicker($result['birth']); ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Avatar</label>
                                <div class="col-sm-3">
                                    <input type="file" name="image">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Role</label>
                                <div class="col-sm-3">
                                    <select class="form-control" name="role" id="select">
                                        <option value="1">Admin</option>
                                        <option value="2">Editor</option>
                                        <option value="3">Author</option>
                                        <option value="4" selected>Subscriber</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <input type="submit" name="publish" class="btn btn-success col-md-4 publish" value="Update">  <a class="btn btn-primary" href="index.php">Back</a>
                                </div>
                            </div>
                            <?php
                                    }
                                }
                            ?>
                        </form>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->
<?php include '../inc/footer.php'; ?>
<script>
    $('#summernote').summernote({
        placeholder: 'Write post here',
        tabsize: 2,
        height: 200
    });
    $( "#datepicker" ).datepicker();
</script>