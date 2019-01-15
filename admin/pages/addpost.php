<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>
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
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <?php
                        if($_SERVER['REQUEST_METHOD'] == 'POST'){
                            $title = mysqli_real_escape_string($database->link, $_POST['title']);
                            $description = mysqli_real_escape_string($database->link, $_POST['description']);
                            $category = mysqli_real_escape_string($database->link, $_POST['category']);
                            $tags = mysqli_real_escape_string($database->link, $_POST['tags']);
                            $metatitle = mysqli_real_escape_string($database->link, $_POST['metatitle']);
                            $metadescription = mysqli_real_escape_string($database->link, $_POST['metadescription']);
                            $author = mysqli_real_escape_string($database->link, Session::get('userId'));

                            $permited  = array('jpg', 'jpeg', 'png', 'gif');
                            $file_name = $_FILES['image']['name'];
                            $file_size = $_FILES['image']['size'];
                            $file_temp = $_FILES['image']['tmp_name'];

                            $div = explode('.', $file_name);
                            $file_ext = strtolower(end($div));
                            $unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
                            $uploaded_image = "../upload/post/".$unique_image;
                            if($title == "" || $description == "" || $category == ""){
                                echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Field must not be empty !</div>";
                            }elseif($file_size>1048567){
                                echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Image Size should be less then 1MB !</div>";
                            }elseif(in_array($file_ext, $permited) === false) {
                                echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>You can upload only:-"
                                    .implode(', ', $permited)."</div>";
                            }else{
                                move_uploaded_file($file_temp, $uploaded_image);
                                $query = "INSERT INTO list_posts (title, description, category, image, tags, metatitle, metadescription, author) VALUES ('$title', '$description', '$category', 'upload/post/$unique_image', '$tags', '$metatitle', '$metadescription', '$author')";
                                $inserted_row = $database->insert($query);
                                if($inserted_row){
                                    echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Post inserted successfully !</div>";
                                }else{
                                    echo "<div class='alert alert-warning alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Post not inserted !</div>";
                                }
                            }
                        }
                        ?>
                        <form role="form" action="" method="post" enctype="multipart/form-data">
                            <div class="col-lg-9">
                                <div class="form-group">
                                    <input class="form-control" name="title" placeholder="Enter title here ">
                                </div>
                                <div class="form-group">
                                    <label>Write Post</label>
                                    <textarea class="form-control" name="description" rows="10" id="summernote" name="editordata"></textarea>
                                </div>
                                <div class="form-group has-success">
                                    <label class="control-label" for="inputSuccess">Meta Title</label>
                                    <input type="text"  name="metatitle" class="form-control" id="inputSuccess">
                                </div>
                                <div class="form-group has-success">
                                    <label class="control-label" for="inputSuccess">Meta Description</label>
                                    <input type="text"  name="metadescription" class="form-control" id="inputSuccess">
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-2">
                                <input type="submit" name="publish" class="btn btn-success col-md-12 publish" value="Publish">
                                <div class="form-group">
                                    <label for="">Tags</label>
                                    <input class="form-control"  name="tags" placeholder="Tags ">
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control"  name="category">
                                        <?php
                                        $query = "SELECT * FROM list_category";
                                        $category = $database->select($query);
                                        if($category){
                                            while($result = $category->fetch_assoc()){
                                                ?>
                                                <option value="<?php echo $result['id']; ?>"><?php echo $result['name']; ?></option>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Featured Image</label>
                                    <input type="file" name="image">
                                </div>
                            </div>
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
</script>