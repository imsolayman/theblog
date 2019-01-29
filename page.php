<?php include 'inc/header.php'; ?>
<?php
if(!isset($_GET['title']) || $_GET['title'] == NULL){
    header("Location: 404.php");
}else{
    $id = $_GET['title'];
}
?>


<?php
$pagequery = "SELECT * FROM list_pages WHERE slug = '$id' ";
$pagedetails = $database->select($pagequery);
if($pagedetails){
    while($result = $pagedetails->fetch_assoc()){
        ?>
        <nav aria-label="breadcrumb"  class="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo SITE_URL; ?>">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page"><?php echo $result['title']; ?></li>
                </ol>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <!-- Latest Posts -->
                <?php echo $result['description']; ?>
                <!--              post starts here-->
            </div>
        </div>

        <?php
    }
}else{
    header("Location:404.php");
}
?>
<?php include 'inc/footer.php'; ?>