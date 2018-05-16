<?php
include "database/db.php";
$sub_category = $_POST['sub_category'];
$cat = $_POST['cat'];

$query = "INSERT INTO `sub_category`( `name`,`parent-category`)
							VALUES ('$cat','$sub_category')";
$stmt = $db->query($query);
// echo $query;


$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
$server = substr($server,0,strrpos($server,"/"));
header('Location: http://'.$server.'/catagories.php');
