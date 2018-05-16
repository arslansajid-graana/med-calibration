<?php
include "database/db.php";
$id = $_GET['id'];

$query = "DELETE from `inventory` WHERE id='$id'";
$stmt = $db->query($query);
// echo $query;


$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
$server = substr($server,0,strrpos($server,"/"));
header('Location: http://'.$server.'/staff.php');
