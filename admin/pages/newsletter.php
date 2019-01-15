<?php include '../inc/header.php'; ?>
<?php include '../inc/sidebar.php'; ?>
<?php
if(isset($_GET['confirm'])){
    $id = $_GET['confirm'];
    $query = "UPDATE list_subscribe SET status = '0' WHERE id = '$id' ";
    $updated_row = $database->update($query);
    if($updated_row){
        echo "<script>alert('Thanks for your confirmation');</script>";
    }else{
        echo "<script>alert('Something went wrong');</script>";
    }
}
?>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Newsletter Subscriptions</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-7">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Recent Subscription
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-subscribe">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Email</th>
                            <th>Time</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $query = "SELECT * FROM list_subscribe WHERE status = '1'  ORDER BY id DESC";
                        $menu = $database->select($query);
                        if($menu){
                            $i = 0;
                            while($result = $menu->fetch_assoc()){
                                $i++
                                ?>
                        <tr class="odd gradeX">
                            <td><?php echo $i; ?></td>
                            <td  class="center"><?php echo $result['email']; ?></td>
                            <td><?php echo $format->humanTiming(strtotime($result['created_at'])); ?></td>
                            <td><a onclick="return confirm('Are you sure?')" href="?confirm=<?php echo $result['id']; ?>" class="doneMessage"><?php if($result['status'] == 1){ echo "<p class='error'>Unconfirmed</p>"; }elseif($result['status'] == 0){ echo "<p class='done'>Confirmed</p>"; } ?></a></td>
                            <td  class="center"><a href=""> <i class="fa fa-eye fa-fw"></i>  <a href=""><i class="fa fa-paper-plane-o  fa-fw"></i></a>  <a href=""><i class="fa fa-trash  fa-fw"></i></a>  </td>
                        </tr>
                        <?php
                        }
                        }
                        ?>
                        </tbody>
                    </table>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <div class="col-lg-5">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    Mail Sent
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-newsletter">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Email</th>
                            <th>Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $query = "SELECT * FROM list_subscribe WHERE status = '0'  ORDER BY id DESC";
                        $menu = $database->select($query);
                        if($menu){
                            $i = 0;
                            while($result = $menu->fetch_assoc()){
                                $i++
                                ?>
                                <tr class="odd gradeX">
                                    <td><?php echo $i; ?></td>
                                    <td  class="center"><?php echo $result['email']; ?></td>
                                    <td><?php if($result['status'] == 0){ echo "<p class='done'>Confirmed</p>"; }else{ echo "<p class='error'>Unconfirmed</p>"; } ?></td>
                                </tr>
                                <?php
                            }
                        }
                        ?>
                        </tbody>
                    </table>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->
<?php include '../inc/footer.php'; ?>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function() {
        $('#dataTables-subscribe').DataTable({
            responsive: true
        });
        $('#dataTables-newsletter').DataTable({
            responsive: true
        });
    });
</script>
