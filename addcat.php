<?php
include "database/db.php";
$category = $_POST['category'];


$query = "INSERT INTO `category`( `name`)
							VALUES ('$category')";
$stmt = $db->query($query);


// echo "adding cat";
$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
$server = substr($server,0,strrpos($server,"/"));
header('Location: http://'.$server.'/catagories.php');
