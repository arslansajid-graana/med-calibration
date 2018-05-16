<?php

session_start();
if(!(isset($_SESSION['SRC_logged_in']))){
	$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
	$server = substr($server,0,strrpos($server,"/"));
	header('Location: http://'.$server.'/index.php');
}

function addUser(){

		include "database/db.php";
		$pass = md5($pass);

		$unique_id = $_POST['unique_id'];
		$reg_no = $_POST['reg_no'];
		$desc = $_POST['desc'];
		$location = $_POST['location'];
		$ward = $_POST['ward'];
		$status = $_POST['status'];
		$source = $_POST['source'];
		$date_manu = $_POST['date_manu'];
		$date_install = $_POST['date_install'];
		$date_lifespan = $_POST['date_lifespan'];
		$supp_name = $_POST['supp_name'];
		$supp_addr = $_POST['supp_addr'];
		$supp_contact = $_POST['supp_contact'];
		$cat = $_POST['cat'];
		$sub_cat = $_POST['sub_cat'];
		$orig_eqp_manu = $_POST['orig_eqp_manu'];
		$sugg_calib = $_POST['sugg_calib'];
		$last_calib_date = $_POST['last_calib_date'];

		$query = "INSERT INTO `inventory`( `unique_id`, `reg_no`, `desc`, `location`, `ward`, `status`, `source`, `date_manu`, `date_install`, `date_lifespan`, `supp_name`, `supp_addr`, `supp_contact`, `cat`, `sub_cat`, `orig_eqp_manu`, `sugg_calib`, `last_calib_date`)
											VALUES ('$unique_id', '$reg_no', '$desc', '$location', '$ward', '$status', '$source', '$date_manu', '$date_install', '$date_lifespan', '$supp_name', '$supp_addr', '$supp_contact', '$cat', '$sub_cat', '$orig_eqp_manu', '$sugg_calib', '$last_calib_date')";
		$stmt = $db->query($query);

		$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
		$server = substr($server,0,strrpos($server,"/"));
		header('Location: http://'.$server.'/staff.php');
}


function printPage($error){

	include "database/db.php";
	$query = "SELECT `name` FROM `category`";
	$stmt = $db->query($query);
	$categories = "";
	while($row = $stmt->fetch_assoc()){
		$categories.="<option value=\"".$row['name']."\">".$row['name']."</option>";
	}

	$query = "SELECT `name` FROM `sub_category`";
	$stmt = $db->query($query);
	$scategories = "";
	while($row = $stmt->fetch_assoc()){
		$scategories.="<option value=\"".$row['name']."\">".$row['name']."</option>";
	}
	$db->close();

	$body = "



						<div class=\"box\">
								<div class=\"box-header\">
								  <h3 class=\"box-title\">Add Product information</h3>
								</div>
								<!-- /.box-header -->
								<div class=\"box-body\">
							<form role=\"form\" method=\"post\" action=\"adduser.php\" class\"form-horizontal\" enctype=\"multipart/form-data\">

									<input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"2000000\" />

									<div class=\"row\">
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">1.Unique ID</label>
												<div class=\"col-sm-10\">
													<input type=\"text\" name=\"unique_id\" class=\"form-control input-sm\" placeholder=\"*Unique ID\" autofocus required>
												</div>
											</div>
										</div>
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
											<label class=\"col-sm-6 control-label\">2.Registered No</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"reg_no\" class=\"form-control input-sm\" placeholder=\"*Registered No\" required>
												</div>
											</div>
										</div>
									</div>

									<div class=\"row\">
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">3.Description/Model</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"desc\" class=\"form-control input-sm\" placeholder=\"*Description/Model\" required>
												</div>
											</div>
										</div>
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">4.Location/Ward</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"location\" class=\"form-control input-sm\" placeholder=\"*Location/Ward\" required>
												</div>
											</div>
										</div>
									</div>



									<div class=\"row\">
									<div class=\"col-xs-6 col-sm-6 col-md-6\">
										<div class=\"form-group\">
											<label class=\"col-sm-6 control-label\">5.Status/Classification</label>
											<div class=\"col-sm-10\">
											<input type=\"text\" name=\"status\" class=\"form-control input-sm\" placeholder=\"*Status/Classification\" required>
											</div>
										</div>
									</div>
									<div class=\"col-xs-6 col-sm-6 col-md-6\">
										<div class=\"form-group\">
											<label class=\"col-sm-6 control-label\">6.Source of Prcurement</label>
											<div class=\"col-sm-10\">
											<input type=\"text\" name=\"source\" class=\"form-control input-sm\" placeholder=\"*Source of Prcurement\" required>
											</div>
										</div>
									</div>
								</div>



								<div class=\"row\">
								<div class=\"col-xs-6 col-sm-6 col-md-6\">
									<div class=\"form-group\">
										<label class=\"col-sm-6 control-label\">7.Date of Manufacture</label>
										<div class=\"col-sm-10\">
										<input type=\"date\" name=\"date_manu\" class=\"form-control input-sm\" placeholder=\"*Date of Manufacture\" required>
										</div>
									</div>
								</div>
								<div class=\"col-xs-6 col-sm-6 col-md-6\">
									<div class=\"form-group\">
										<label class=\"col-sm-6 control-label\">8.Date of Installation</label>
										<div class=\"col-sm-10\">
										<input type=\"date\" name=\"date_install\" class=\"form-control input-sm\" placeholder=\"*Date of Installation\" required>
										</div>
									</div>
								</div>
							</div>




							<div class=\"row\">
							<div class=\"col-xs-6 col-sm-6 col-md-6\">
								<div class=\"form-group\">
									<label class=\"col-sm-6 control-label\">9.Supplier</label>
									<div class=\"col-sm-10\">
									<span>Firm Name</span><input type=\"text\" name=\"supp_name\" class=\"form-control input-sm\" placeholder=\"*Firm Name\" required>
									</div>
									<div class=\"col-sm-10\">
									<span>Address</span><input type=\"text\" name=\"supp_addr\" class=\"form-control input-sm\" placeholder=\"*Address\" required>
									</div>
									<div class=\"col-sm-10\">
									<span>Contact No</span><input type=\"text\" name=\"supp_contact\" class=\"form-control input-sm\" placeholder=\"*phone\" required>
									</div>
								</div>
							</div>
							<div class=\"col-xs-6 col-sm-6 col-md-6\">
								<div class=\"form-group\">
									<label class=\"col-sm-6 control-label\">10.Estimated Life Span(UMDNS)</label>
									<div class=\"col-sm-10\">
									<input type=\"date\" name=\"date_lifespan\"  class=\"form-control input-sm\" placeholder=\"*Estimated Life Span\" required>
									</div>
								</div>
							</div>
						</div>


















							<div class=\"row\">
							<div class=\"col-xs-6 col-sm-6 col-md-6\">
								<div class=\"form-group\">
									<label class=\"col-sm-6 control-label\">9.Original Equipment Manufacturer</label>
									<div class=\"col-sm-10\">
									<input type=\"text\" name=\"orig_eqp_manu\"  class=\"form-control input-sm\" placeholder=\"*Original Equipment Manufacturer\" required>
									</div>
								</div>
							</div>

							</div>
						</div>





									<div class=\"row\">
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">11.Suggested Calibration Period</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"sugg_calib\"  class=\"form-control input-sm\" placeholder=\"*Suggested Calibration Period\" required>
												</div>
											</div>
										</div>
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">12.Category</label>
												<div class=\"col-sm-10\">
												<select type=\"text\" name=\"cat\" class=\"form-control select2 input-sm\">
													".$categories."
													</select>
												</div>
											</div>
										</div>
									</div>



									<div class=\"row\">
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">13.Last Calibration Performed</label>
												<div class=\"col-sm-10\">
												<input type=\"date\" name=\"last_calib_date\" class=\"form-control input-sm\" placeholder=\"*Last Calibration Performed\" required>
												</div>
											</div>
										</div>
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">14.Sub Category</label>
												<div class=\"col-sm-10\">
												<select type=\"text\" name=\"sub_cat\" class=\"form-control select2 input-sm\">
													".$scategories."
													</select>
												</div>
											</div>
										</div>
									</div>


									<div class=\"row\">
											<div class=\"col-xs-6 col-sm-6 col-md-6\">
												<button style=\"width: 20%; margin-left: auto; margin-right: auto;\" type=\"button\" class=\"btn btn-danger btn-block\" onclick=\"cancel();\">Cancel</button>
											</div>

											<div class=\"col-xs-6 col-sm-6 col-md-6\">
												<input style=\"width: 20%; margin-left: auto; margin-right: auto;\" type=\"submit\" value=\"Add\" class=\"btn btn-success btn-block\">
											</div>

									</div>
									<br>
									<div class=\"bg-danger text-center\">
									".$error."
									</div>
							</form>
						</div>
						</div>
					";


			$html = "<!DOCTYPE html>
							<html>
								<head>

								<title>
								InventoryManagement | Add Staff
								</title>";
			echo $html;
			include 'inc/headscripts.php';

			 $html="</head>
				  <body class=\"hold-transition skin-blue sidebar-mini\">
				  <div class=\"wrapper\">
							";


		///////////////////
		$username = $_SESSION['SRC_email'];
		echo $html;
		include 'inc/newheader.php';
		print_header("loggedin", $username, "");


			include 'inc/newsidebar.php';

		///////////////////


	$html = '<div class="content-wrapper">

					<section class="content-header">
					  <h1>
						Product Details
					  </h1>
					  <ol class="breadcrumb">
						<li><a href="index.php"><i class="fa fa-home"></i>Home</a></li>
						<li><a href="staff.php"><i class="fa fa-group"></i>Staff</a></li>
						<li class="active"><a href="adduser.php">Add Staff</a></li>
					  </ol>
					</section>

					<section class="content">';

			echo $html;
			echo $body;

			$html='				</section>
				  </div>';

		echo $html;
		include 'inc/newfooter.php';


			echo '<div class="control-sidebar-bg"></div>
					</div>';
			include 'inc/footerscripts.php';




			echo $html;
			echo "	</body>
					<script type=\"text/javascript\">
						function cancel(){
							var name = \"staff.php\";
							window.location = name;
						}
						$('.col-sm-6').css(\"margin-bottom\",\"10px\")
					</script>
					</html>
					";




}
if(isset($_SESSION['SRC_logged_in'])){

		if ((isset($_POST['unique_id']) ) &&
			(isset($_POST['reg_no'])) &&
			(isset($_POST['location']))
			){
			if($_POST['unique_id'] != null && $_POST['reg_no'] != null){
				addUser();
			}else{
				printPage("Please enter valid parameters");
			}


		}else {
			printPage("");
		}
}
