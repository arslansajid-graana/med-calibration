<?php
	session_start();
	if(!(isset($_SESSION['SRC_logged_in']))){
		$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
		$server = substr($server,0,strrpos($server,"/"));
		header('Location: http://'.$server.'/index.php');
	}
	include "database/db.php";
	$username = $_SESSION['SRC_email'];
?>

<html>
	<head>
		<meta name='robots' content='noindex'>
		<title>InventoryManagement | Admin Users</title>
		<script type='text/javascript' src='js/adminusers.js'></script>
		<script type='text/javascript' src='js/blockUI.js' ></script>
		<?php include 'inc/headscripts.php'; ?>
	</head>
	<body class='hold-transition skin-blue sidebar-mini'>
		<div class='wrapper'>
		<?php include 'inc/newheader.php';
		print_header("loggedin", $username, "");
		include 'inc/newsidebar.php'; ?>
		<div class="content-wrapper">
		<section class="content-header">
		<h1>
		Staff
		</h1>
		<ol class="breadcrumb">
		<li><a href="index.php"><i class="fa fa-home"></i>Home</a></li>
		<li class="active"><a href="staff.php"><i class="fa fa-group"></i>Staff</a></li>
		</ol>
		</section>
		<section class="content">
		<div class='box'>
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
		$result = $db->query("SELECT `id`, `unique_id`, `reg_no`, `desc`, `location`, `ward`,`is_verified`, `status`, `source`, `date_manu`, `date_install`, `date_lifespan`, `supp_name`, `supp_addr`, `supp_contact`, `cat`, `sub_cat`, `orig_eqp_manu`, `sugg_calib`, `last_calib_date` FROM `inventory` WHERE 1");
		$html = "";
		while($row = $result->fetch_assoc()) {
		$html.=" <tr>
		<td><a href='viewInventory.php?id=".$row['id']."''>".$row['reg_no']."</a></td>
		<td>".$row['unique_id']."</td>
		<td>".$row['cat']."</td>
		<td>".$row['sub_cat']."</td>
		<td>".$row['location']."</td>
		<td>".$row['is_verified']."</td>
		<td align='center'>
		<input onclick=\"location.href='removeInventory.php?id=".$row['id']."'\" class='btn btn-danger ' TYPE='submit' VALUE='Remove' >
		</td>
		</tr>";
		}
		echo $html; ?>
		</table>
		</div>
		</div>
		</section>
		</div>
		<?php include 'inc/newfooter.php'; ?>
		<div class="control-sidebar-bg"></div>
		</div>
		<?php include 'inc/footerscripts.php'; ?>
	</body>
</html>
<script>
$('#adminuser_table').DataTable({
"paging": true,
"lengthChange": false,
"searching": true,
"ordering": true,
"info": true,
"autoWidth": false
});
$('#adminuser_table').DataTable();
</script>
