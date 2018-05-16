<?php
include "database/db.php";

$tableName = $_GET['table'];
$id = $_GET['id'];

$query = "DELETE FROM `$tableName` WHERE id = '$id'";
$db->query($query);
// echo $query;
$server = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
$server = substr($server,0,strrpos($server,"/"));
header('Location: http://'.$server.'/catagories.php');
