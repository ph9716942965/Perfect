<?php
error_reporting(0);
/*$servername = "localhost"; 
$username = "pineridg_locabin";
$password = "Lo%584#bin";
$db = "pineridg_locabin";
*/
$servername = "localhost"; 
$username = "root";
$password = "";
$db = "pineridg";
$pre_fix = "lhk_";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $db);
// Check connection
if (!$conn) {
    die("Connection failed: " .mysqli_connect_error());
}
?>
<?php date_default_timezone_set('UTC'); ?>
<?php

//define("SITE_URL", 'https://'.$_SERVER['SERVER_NAME'].'/');
define("SITE_URL", 'http://localhost/old/');
?>