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
    $id = $_GET['id'];

		$query = "UPDATE `inventory` SET  `unique_id` = '$unique_id', `reg_no` = '$reg_no', `desc` = '$desc', `location` = '$location', `ward` = '$ward', `status` = '$status', `source` = '$source', `date_manu` = '$date_manu', `date_install` = '$date_install', `date_lifespan` = '$date_lifespan', `supp_name` = '$supp_name', `supp_addr` = '$supp_addr', `supp_contact` = '$supp_contact', `cat` = '$cat', `sub_cat` = '$sub_cat', `orig_eqp_manu` = '$orig_eqp_manu', `sugg_calib` = '$sugg_calib', `last_calib_date` = '$last_calib_date', `is_approved` = 'No' WHERE id = '$id'";
		$stmt = $db->query($query);
    $db->close();
    // echo $query;

		$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
		$server = substr($server,0,strrpos($server,"/"));
		header('Location: http://'.$server.'/viewInventory.php?id='.$id);
}

function addReair(){

		include "database/db.php";

		$ward = $_POST['ward'];
		$inv_id = $_POST['inv_id'];
		$date = $_POST['date'];
		$remarks = $_POST['remarks'];
    $tech_name = $_POST['tech_name'];

		$query = "INSERT INTO `invt_repair`(`invt_id`, `ward`, `date`, `tech_name`, `remarks`) VALUES ('$inv_id', '$ward', '$date', '$tech_name', '$remarks')";
		$stmt = $db->query($query);
    $db->close();
    // echo $query;
    $id = $_GET['id'];
    $server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
		$server = substr($server,0,strrpos($server,"/"));
		header('Location: http://'.$server.'/viewInventory.php?id='.$id);
}

function addCalib(){

		include "database/db.php";

		$supervisor = $_POST['supervisor'];
		$inv_id = $_POST['inv_id'];
		$date = $_POST['date'];
		$remarks = $_POST['remarks'];

		$query = "INSERT INTO `inv_calib`(`inv_id`, `date`, `supervisor`, `remarks`) VALUES ('$inv_id', '$date', '$supervisor', '$remarks')";
		$stmt = $db->query($query);
    $db->close();
    // echo $query;
    $id = $_GET['id'];
    $server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
		$server = substr($server,0,strrpos($server,"/"));
		header('Location: http://'.$server.'/viewInventory.php?id='.$id);
}


function printPage($error){

	include "database/db.php";
  $id = $_GET['id'];

  $query = "SELECT * FROM `inventory` WHERE id = '$id'";
  $stmt = $db->query($query);
  $rowInventory  = $stmt->fetch_assoc();
  $stmt = $db->query($query);
	$query = "SELECT `name` FROM `category`";
	$categories = "<option value=\"".$rowInventory['cat']."\">".$rowInventory['cat']."</option>";
	while($row = $stmt->fetch_assoc()){
		$categories.="<option value=\"".$row['name']."\">".$row['name']."</option>";
	}

	$query = "SELECT `name` FROM `sub_category`";
	$stmt = $db->query($query);
	$scategories = "<option value=\"".$rowInventory['sub_cat']."\">".$rowInventory['sub_cat']."</option>";
	while($row = $stmt->fetch_assoc()){
		$scategories.="<option value=\"".$row['name']."\">".$row['name']."</option>";
	}


	$body = "



						<div class=\"box\">
								<div class=\"box-header\">
								  <h3 class=\"box-title\">Edit Product information</h3>
                  <div class=\"box-tools pull-right\">
                <button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"collapse\"><i class=\"fa fa-minus\"></i>
                </button>
                <div class=\"btn-group\">
                  <button type=\"button\" class=\"btn btn-box-tool dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">

                </button><button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"remove\"><i class=\"fa fa-times\"></i></button>
              </div></div>
								</div>
								<!-- /.box-header -->
								<div class=\"box-body\">
							<form role=\"form\" method=\"post\" action=\"viewInventory.php?id=".$id."&work=updateInventory\" class\"form-horizontal\" enctype=\"multipart/form-data\">

									<input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"2000000\" />

									<div class=\"row\">
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">1.Unique ID</label>
												<div class=\"col-sm-10\">
													<input type=\"text\" name=\"unique_id\" value=\"".$rowInventory['unique_id']."\" class=\"form-control input-sm\" placeholder=\"*Unique ID\" autofocus required>
												</div>
											</div>
										</div>
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
											<label class=\"col-sm-6 control-label\">2.Registered No</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"reg_no\" value=\"".$rowInventory['reg_no']."\" class=\"form-control input-sm\" placeholder=\"*Registered No\" required>
												</div>
											</div>
										</div>
									</div>

									<div class=\"row\">
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">3.Description/Model</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"desc\" value=\"".$rowInventory['desc']."\" class=\"form-control input-sm\" placeholder=\"*Description/Model\" required>
												</div>
											</div>
										</div>
										<div class=\"col-xs-6 col-sm-6 col-md-6\">
											<div class=\"form-group\">
												<label class=\"col-sm-6 control-label\">4.Location/Ward</label>
												<div class=\"col-sm-10\">
												<input type=\"text\" name=\"location\" value=\"".$rowInventory['location']."\" class=\"form-control input-sm\" placeholder=\"*Location/Ward\" required>
												</div>
											</div>
										</div>
									</div>



									<div class=\"row\">
									<div class=\"col-xs-6 col-sm-6 col-md-6\">
										<div class=\"form-group\">
											<label class=\"col-sm-6 control-label\">5.Status/Classification</label>
											<div class=\"col-sm-10\">
											<input type=\"text\" name=\"status\" value=\"".$rowInventory['status']."\" class=\"form-control input-sm\" placeholder=\"*Status/Classification\" required>
											</div>
										</div>
									</div>
									<div class=\"col-xs-6 col-sm-6 col-md-6\">
										<div class=\"form-group\">
											<label class=\"col-sm-6 control-label\">6.Source of Prcurement</label>
											<div class=\"col-sm-10\">
											<input type=\"text\" name=\"source\" value=\"".$rowInventory['source']."\" class=\"form-control input-sm\" placeholder=\"*Source of Prcurement\" required>
											</div>
										</div>
									</div>
								</div>



								<div class=\"row\">
								<div class=\"col-xs-6 col-sm-6 col-md-6\">
									<div class=\"form-group\">
										<label class=\"col-sm-6 control-label\">7.Date of Manufacture</label>
										<div class=\"col-sm-10\">
										<input type=\"date\" name=\"date_manu\" value=\"".$rowInventory['date_manu']."\" class=\"form-control input-sm\" placeholder=\"*Date of Manufacture\" required>
										</div>
									</div>
								</div>
								<div class=\"col-xs-6 col-sm-6 col-md-6\">
									<div class=\"form-group\">
										<label class=\"col-sm-6 control-label\">8.Date of Installation</label>
										<div class=\"col-sm-10\">
										<input type=\"date\" name=\"date_install\" value=\"".$rowInventory['date_install']."\" class=\"form-control input-sm\" placeholder=\"*Date of Installation\" required>
										</div>
									</div>
								</div>
							</div>




							<div class=\"row\">
							<div class=\"col-xs-6 col-sm-6 col-md-6\">
								<div class=\"form-group\">
									<label class=\"col-sm-6 control-label\">9.Supplier</label>
									<div class=\"col-sm-10\">
									<span>Firm Name</span><input type=\"text\" name=\"supp_name\" value=\"".$rowInventory['supp_name']."\" class=\"form-control input-sm\" placeholder=\"*Firm Name\" required>
									</div>
									<div class=\"col-sm-10\">
									<span>Address</span><input type=\"text\" name=\"supp_addr\"  value=\"".$rowInventory['supp_addr']."\" class=\"form-control input-sm\" placeholder=\"*Address\" required>
									</div>
									<div class=\"col-sm-10\">
									<span>Contact No</span><input type=\"text\" name=\"supp_contact\" value=\"".$rowInventory['supp_contact']."\" class=\"form-control input-sm\" placeholder=\"*phone\" required>
									</div>
								</div>
							</div>
							<div class=\"col-xs-6 col-sm-6 col-md-6\">
								<div class=\"form-group\">
									<label class=\"col-sm-6 control-label\">10.Estimated Life Span(UMDNS)</label>
									<div class=\"col-sm-10\">
									<input type=\"date\" name=\"date_lifespan\" value=\"".$rowInventory['date_lifespan']."\" class=\"form-control input-sm\" placeholder=\"*Estimated Life Span\" required>
									</div>
								</div>
							</div>
						</div>


















							<div class=\"row\">
							<div class=\"col-xs-6 col-sm-6 col-md-6\">
								<div class=\"form-group\">
									<label class=\"col-sm-6 control-label\">9.Original Equipment Manufacturer</label>
									<div class=\"col-sm-10\">
									<input type=\"text\" name=\"orig_eqp_manu\" value=\"".$rowInventory['orig_eqp_manu']."\" class=\"form-control input-sm\" placeholder=\"*Original Equipment Manufacturer\" required>
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
												<input type=\"text\" name=\"sugg_calib\" value=\"".$rowInventory['sugg_calib']."\" class=\"form-control input-sm\" placeholder=\"*Suggested Calibration Period\" required>
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
												<input type=\"date\" name=\"last_calib_date\" value=\"".$rowInventory['last_calib_date']."\" class=\"form-control input-sm\" placeholder=\"*Last Calibration Performed\" required>
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
												<input style=\"width: 20%; margin-left: auto; margin-right: auto;\" type=\"submit\" value=\"Update\" class=\"btn btn-success btn-block\">
											</div>

									</div>
									<br>
									<div class=\"bg-danger text-center\">
									".$error."
									</div>
							</form>
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
?>
  <div class='box'>
    <div class="box-header">
      <h3 class="box-title">Repair History</h3>
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
    <th>Is Approved</th>
		</tr>
		</thead>
		<?php
		$result = $db->query("SELECT `invt_id`, `id`, `ward`, `date`, `tech_name`, `remarks`,`is_approved` FROM `invt_repair` WHERE invt_id = '$id'");
		$html = "";
		while($row = $result->fetch_assoc()) {
		$html.=" <tr>
		<td>".$row['ward']."</td>
		<td>".$row['date']."</td>
		<td>".$row['tech_name']."</td>
		<td>".$row['remarks']."</td>
    <td>".$row['is_approved']."</td>
		</tr>";
		}

		echo $html; ?>
		</table>
		</div>
		</div>


    <div class='box'>
      <div class="box-header">
        <h3 class="box-title">Add Repair</h3>
        <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <div class="btn-group">
                    <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                  </button><button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div></div>
      </div>
  		<div class='box-body'>
  		<form role="form" method="post" action="viewInventory.php?work=addRepair&id=<?php echo $id; ?>" class"form-horizontal" enctype="multipart/form-data">
        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6">
              <div class="form-group">
                <label class="col-sm-6 control-label">Ward/Location</label>
                <div class="col-sm-10">
                  <input type="text" name="ward" value="<?php echo $rowInventory['ward']; ?>" class="form-control input-sm" placeholder="*Location/Ward" required>
                  <input type="hidden" name="inv_id" value="<?php echo $id; ?>" class="form-control input-sm" hidden="hidden" placeholder="*Description/Model" required>
                </div>
              </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
              <div class="form-group">
                <label class="col-sm-6 control-label">Date</label>
                <div class="col-sm-10">
                <input type="date" name="date" class="form-control input-sm" placeholder="*Date" required>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
              <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                  <label class="col-sm-6 control-label">Technician</label>
                  <div class="col-sm-10">
                    <input type="text" name="tech_name" class="form-control input-sm" placeholder="*Technician" required>
                  </div>
                </div>
              </div>
              <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                  <label class="col-sm-6 control-label">Remarks</label>
                  <div class="col-sm-10">
                  <input type="text" name="remarks" class="form-control input-sm" placeholder="*Remarks" required>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                      <button style="width: 20%; margin-left: auto; margin-right: auto;" type="button" class="btn btn-danger btn-block" onclick="cancel();">Cancel</button>
                    </div>

                    <div class="col-xs-6 col-sm-6 col-md-6">
                      <input style="width: 20%; margin-left: auto; margin-right: auto;" type="submit" value="Add" class="btn btn-success btn-block">
                    </div>
      </form>
  		</div>
  		</div>
    </div>




      <div class='box'>
        <div class="box-header">
          <h3 class="box-title">Calibration History</h3>
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
        <th>Is Approved</th>
        </tr>
        </thead>
        <?php
        $result = $db->query("SELECT `inv_id`, `id`, `date`, `supervisor`, `remarks`, `is_approved` FROM `inv_calib` WHERE inv_id = '$id'");
        $html = "";
        while($row = $result->fetch_assoc()) {
        $html.=" <tr>
        <td>".$row['date']."</td>
        <td>".$row['supervisor']."</td>
        <td>".$row['remarks']."</td>
        <td>".$row['is_approved']."</td>
        </tr>";
        }
          $db->close();
        echo $html; ?>
        </table>
        </div>
        </div>


        <div class='box'>
          <div class="box-header">
            <h3 class="box-title">Add Calibration</h3>
            <div class="box-tools pull-right">
                      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                      </button>
                      <div class="btn-group">
                        <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                      </button><button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div></div>
          </div>
          <div class='box-body'>
          <form role="form" method="post" action="viewInventory.php?work=addCalib&id=<?php echo $id; ?>" class"form-horizontal" enctype="multipart/form-data">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                  <div class="form-group">
                    <label class="col-sm-6 control-label">Date</label>
                    <div class="col-sm-10">
                    <input type="date" name="date" class="form-control input-sm" placeholder="*Date" required>
                    <input type="hidden" name="inv_id" value="<?php echo $id; ?>" class="form-control input-sm" hidden="hidden" placeholder="*Description/Model" required>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="form-group">
                      <label class="col-sm-6 control-label">Supervisor</label>
                      <div class="col-sm-10">
                        <input type="text" name="supervisor" class="form-control input-sm" placeholder="*Technician" required>
                      </div>
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="form-group">
                      <label class="col-sm-6 control-label">Remarks</label>
                      <div class="col-sm-10">
                      <input type="text" name="remarks" class="form-control input-sm" placeholder="*Remarks" required>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                          <button style="width: 20%; margin-left: auto; margin-right: auto;" type="button" class="btn btn-danger btn-block" onclick="cancel();">Cancel</button>
                        </div>

                        <div class="col-xs-6 col-sm-6 col-md-6">
                          <input style="width: 20%; margin-left: auto; margin-right: auto;" type="submit" value="Add" class="btn btn-success btn-block">
                        </div>
          </form>
          </div>
          </div>




    </section>

<?php
			$html='
      	</div>
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

    if(isset($_GET['work']) && $_GET['work'] === 'updateInventory'){
      if ((isset($_POST['unique_id']) ) &&
  			(isset($_POST['reg_no'])) &&
  			(isset($_POST['location']))
  			){
  			if($_POST['unique_id'] != null && $_POST['reg_no'] != null){
  				addUser();
  			}else{
  				printPage("Please enter valid parameters");
  			}
      } else {
        printPage("");
      }
    } else if(isset($_GET['work']) && $_GET['work'] === 'addRepair'){
      if ((isset($_POST['ward']) ) &&
  			(isset($_POST['date'])) &&
  			(isset($_POST['tech_name']))
  			){
  			if($_POST['tech_name'] != null && $_POST['date'] != null){
  				addReair();
  			}else{
  				printPage("Please enter valid parameters");
  			}
      } else {
        printPage("");
      }
    } else if(isset($_GET['work']) && $_GET['work'] === 'addCalib'){
      if ((isset($_POST['remarks']) ) &&
  			(isset($_POST['date'])) &&
  			(isset($_POST['supervisor']))
  			){
  			if($_POST['supervisor'] != null && $_POST['date'] != null){
  				addCalib();
  			}else{
  				printPage("Please enter valid parameters");
  			}
      } else {
        printPage("");
      }
    } else {
      printPage("");
    }

}
