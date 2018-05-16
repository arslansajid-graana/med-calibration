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





		 <html><head><meta name='robots' content='noindex'>
			<title>InventoryManagement | Admin Users
				</title>
				<script type='text/javascript' src='js/adminusers.js'></script>
				<script type='text/javascript' src='js/blockUI.js' ></script>

		<?php include 'inc/headscripts.php'; ?>


 </head>
  <body class='hold-transition skin-blue sidebar-mini'>
  <div class='wrapper'>

			<?php include 'inc/newheader.php';
			print_header("loggedin", $username, "");
			include 'inc/newsidebar.php';
			?>
		<div class="content-wrapper">

					<section class="content-header">
					  <h1 class="box-title">
							Categories
					  </h1>
					  <ol class="breadcrumb">
						<li><a href="index.php"><i class="fa fa-home"></i>Home</a></li>
						<li class="active"><a href="staff.php"><i class="fa fa-group"></i>Staff</a></li>
					  </ol>
					</section>

					<section class="content">
		<div class="row">

				<div class="col-md-6">

			<div class='box'>
			<div class='box-body'>


			<table align='center' class='table table-bordered table-hover ' id='adminuser_table' border='1' >
		<thead>
		<tr class'active'>
		<!-- <th>ID</th> -->
		<th>Name</th>


		</tr>
		</thead>
		<?php
		$categories = [];
		$result = $db->query("SELECT `id`, `name`   FROM `category` WHERE 1");
		$html = "";
		while($row = $result->fetch_assoc()) {
			$categories[] = ($row['name']);
		$html.=" <tr>
		<td>".$row['name']."</td>

		<td align='center'>
		<input onclick=\"location.href='deluser.php?id=".$row['id']."&table=category'\" class='btn btn-danger ' TYPE='submit' VALUE='Remove' >
		</td>
		</tr>";
		}
		echo $html; ?>
		</table>
				</div>
				</div>
				</div>

				<div class="col-md-6">

			<div class='box'>
			<div class='box-body'>
			<div class="box-header with-border">
              <h3 class="box-title">Add Category</h3>
			  </div>
			  <form role="form" method="post" action="addcat.php" class"form-horizontal">
			  <div class="row">
			<div class="col-md-6">
			<input type="text" name="category" class="form-control input-sm" placeholder="Category Name" >
			</div>
			<div class="col-md-6">
			<input onclick='addcat' class='btn btn-success ' TYPE='submit' VALUE='add' >
			</div>
</div>
</form>






				</div>
				</div>
				</div>
		</div>
							</section>



					<section class="content-header">
					  <h1 class="box-title">
							Sub Categories
					  </h1>

					</section>

					<section class="content">
		<div class="row">

				<div class="col-md-6">

			<div class='box'>
			<div class='box-body'>


			<table align='center' class='table table-bordered table-hover ' id='adminuser_table' border='1' >
		<thead>
		<tr class'active'>
		<!-- <th>ID</th> -->
		<th>Name</th>
		<th>Parent Category</th>


		</tr>
		</thead>
		<?php
		$result = $db->query("SELECT id, `name`, `parent-category`   FROM `sub_category` WHERE 1");
		$html = "";
		while($row = $result->fetch_assoc()) {
		$html.=" <tr>
		<td>".$row['name']."</td>
		<td>".$row['parent-category']."</td>

		<td align='center'>
		<input onclick=\"location.href='deluser.php?id=".$row['id']."&table=sub_category'\" class='btn btn-danger ' TYPE='submit' VALUE='Remove' >
		</td>
		</tr>";
		}
		echo $html; ?>
		</table>
				</div>
				</div>
				</div>

				<div class="col-md-6">

			<div class='box'>
			<div class='box-body'>
			<div class="box-header with-border">
              <h3 class="box-title">Add Sub-Category</h3>
			  </div>
			  <form role="form" method="post" action="addsubcat.php" class"form-horizontal">

			  <div class="row">
			<div class="col-md-6">
			<select type="text" name="cat" class="form-control select2 input-sm" placeholder="Select Category">
			<?php
			foreach ($categories as $indCat) {
				?>
					<option value="<?php echo $indCat; ?>"><?php echo $indCat; ?></option>
				<?php
			}
			?>
													</select>
													<input type="text" name="sub_category" class="form-control input-sm" placeholder="Sub Category Name" >
			</div>
			<div class="col-md-6">
			<input  class='btn btn-success ' TYPE='submit' VALUE='add' >
			</div>
</div>
</form>






				</div>
				</div>
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
			$('table').DataTable({
			"paging": true,
			"lengthChange": false,
			"searching": true,
			"ordering": true,
			"info": true,
			"autoWidth": false
			});
			$('#adminuser_table').DataTable();
</script>
