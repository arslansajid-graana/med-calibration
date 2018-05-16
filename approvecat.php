<?php
include "database/db.php";


$id = $_GET['id'];
$table = $_GET['table'];
// echo $table;
if($table === 'inventory'){
  // echo 1;
  $query = "update  `inventory` set is_verified='Yes' WHERE id = '$id'";
  $db->query($query);
} else if($table === 'invt_repair'){
  // echo 2;
  $query = "update  `invt_repair` set is_approved='Yes' WHERE id = '$id'";
  $db->query($query);
} else if($table === 'inv_calib'){
  // echo 2;
  $query = "update  `inv_calib` set is_approved='Yes' WHERE id = '$id'";
  $db->query($query);
}
// echo $query;
$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
$server = substr($server,0,strrpos($server,"/"));
header('Location: http://'.$server.'/adminhome.php');
