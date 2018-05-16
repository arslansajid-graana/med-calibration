<?php

		session_start();
		if(!(isset($_SESSION['SRC_logged_in']))){
			$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
			$server = substr($server,0,strrpos($server,"/"));
			header('Location: http://'.$server.'/index.php');
		}
		include "database/db.php";
		$username = $_SESSION['SRC_email'];

		$stmt = $db->query("select count(id) AS total FROM inventory");
		$row = $stmt->fetch_assoc();
		$totalProducts = $row['total'];

		$stmt = $db->query("select count(id) AS total FROM invt_repair WHERE 1");
		$row = $stmt->fetch_assoc();
		$totalRepairUnApproved = $row['total'];

		$stmt = $db->query("select count(id) AS total FROM inv_calib WHERE 1");
		$row = $stmt->fetch_assoc();
		$totalCalibUnApproved = $row['total'];

		$stmt = $db->query("select count(id) AS total FROM invt_repair WHERE is_approved = 'No'");
		$row = $stmt->fetch_assoc();
		$totalProductsUnApproved = $row['total'];



		$html =
		" <html><head><meta name=\"robots\" content=\"noindex\">
			<title>InventoryManagement | Admin Users
				</title>
				<script type=\"text/javascript\" src=\"js/adminusers.js\"></script>
				<script type=\"text/javascript\" src=\"js/blockUI.js\" ></script>
			";
			echo $html;
		include 'inc/headscripts.php';


 $html="</head>
  <body class=\"hold-transition skin-blue sidebar-mini\">
  <div class=\"wrapper\">
			";


		///////////////////
	echo $html;
	include 'inc/newheader.php';
	print_header("loggedin", $username, "");
    include 'inc/newsidebar.php';
    ?>

	<div class="content-wrapper">

					<section class="content-header">
					  <h1>
						Home
					  </h1>
					  <ol class="breadcrumb">
						<li><a href="index.php"><i class="fa fa-home"></i>Home</a></li>
						<li class="active"><a href="staff.php"><i class="fa fa-group"></i>Home</a></li>
					  </ol>
					</section>

					<section class="content">


    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?php echo $totalProducts; ?></h3>

              <p>Total Products</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo $totalProductsUnApproved; ?></h3>

              <p>Approval Required - invt_repair</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?php echo $totalRepairUnApproved; ?></h3>

              <p>Faulty Equipment</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><?php echo $totalCalibUnApproved; ?></h3>

              <p>Total Calibrated</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
          <div >

          <div class='box'>
          <div class="box-header">
          <h3 class="box-title">Unapproved Inventory</h3>
					<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
										</button>
										<div class="btn-group">
											<button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

										</button><button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
									</div></div>
          </div>
		<div class='box-body'>
		<table align='center' class='table table-bordered table-hover ' id='adminuser_table' border='1' >
		<thead>
		<tr class'active'>
		<th>Registered No</th>
		<th>ID</th>
		<th>Category</th>
		<th>Subcategory</th>
		<th>Location</th>
		<th>is Approved</th>
		<td align='center'>
		<a href='adduser.php' class='btn btn-success' type='button'>Add Inventory</a>
		</td>
		</tr>
		</thead>
		<?php
		$result = $db->query("SELECT `id`, `unique_id`, `reg_no`, `desc`, `location`, `ward`,`is_verified`, `status`, `source`, `date_manu`, `date_install`, `date_lifespan`, `supp_name`, `supp_addr`, `supp_contact`, `cat`, `sub_cat`, `orig_eqp_manu`, `sugg_calib`, `last_calib_date` FROM `inventory` WHERE is_verified='no'");
		$html = "";
		while($row = $result->fetch_assoc()) {
		$html.=" <tr>
		<td>".$row['reg_no']."</td>
		<td>".$row['unique_id']."</td>
		<td>".$row['cat']."</td>
		<td>".$row['sub_cat']."</td>
		<td>".$row['location']."</td>
		<td>".$row['is_verified']."</td>
    <td align='center'>
		<input onclick=\"location.href='approvecat.php?id=".$row['id']."&table=inventory'\" class='btn btn-success ' TYPE='submit' VALUE='Approve' >
		</td>
		</tr>";
		}
		echo $html; ?>
		</table>
		</div>
		</div>
          </div>

					<div class='box'>
					<div class="box-header">
					<h3 class="box-title">Unapproved Repair</h3>
					<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
										</button>
										<div class="btn-group">
											<button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

										</button><button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
									</div></div>
					</div>
		<div class='box-body'>
		<table align='center' class='table table-bordered table-hover ' id='adminuser_table' border='1' >
		<thead>
		<tr class'active'>
			<th>Ward</th>
			<th>Date</th>
			<th>Technitian Name</th>
			<th>Remarks</th>
		<td align='center'>

		</td>
		</tr>
		</thead>

		<?php
		$result = $db->query("SELECT `invt_id`, `id`, `ward`, `date`, `tech_name`, `remarks`,`is_approved` FROM `invt_repair` WHERE is_approved = 'No'");
		$html = "";
		while($row = $result->fetch_assoc()) {
		$html.=" <tr>
		<td>".$row['ward']."</td>
		<td>".$row['date']."</td>
		<td>".$row['tech_name']."</td>
		<td>".$row['remarks']."</td>
		<td align='center'>
		<input onclick=\"location.href='approvecat.php?id=".$row['id']."&table=invt_repair'\" class='btn btn-success ' TYPE='submit' VALUE='Approve' >
		</td>
		</tr>";
		}

		echo $html; ?>
		</table>
		</div>
		</div>

		<div class='box'>
		<div class="box-header">
		<h3 class="box-title">Unapproved Calibration</h3>
		<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<div class="btn-group">
								<button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

							</button><button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div></div>
		</div>
<div class='box-body'>
<table align='center' class='table table-bordered table-hover ' id='adminuser_table' border='1' >
<thead>
<tr class'active'>
<th>Date</th>
<th>Supervisor</th>
<th>Remarks</th>
<td align='center'>

</td>
</tr>
</thead>

<?php
$result = $db->query("SELECT `inv_id`, `id`, `date`, `supervisor`, `remarks`, `is_approved` FROM `inv_calib` WHERE is_approved = 'No'");
$html = "";
while($row = $result->fetch_assoc()) {
$html.=" <tr>
<td>".$row['date']."</td>
<td>".$row['supervisor']."</td>
<td>".$row['remarks']."</td>
<td align='center'>
<input onclick=\"location.href='approvecat.php?id=".$row['id']."&table=inv_calib'\" class='btn btn-success ' TYPE='submit' VALUE='Approve' >
</td>
</tr>";
}

echo $html; ?>
</table>
</div>
</div>
      <!-- /.row -->


    </section>




				</section>
				  </div>

		<?php
		include 'inc/newfooter.php';


			echo '<div class="control-sidebar-bg"></div>
					</div>';
			include 'inc/footerscripts.php';



			echo '</body>
					</html>';
?>
<script>
    $('table').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });

</script>
