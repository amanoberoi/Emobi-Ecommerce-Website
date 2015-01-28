<?php

$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="emobi"; // Database name 
$tbl_name="customer"; // Table name 

// Connect to server and select databse.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

$myusername = $_POST['username'];
$mypassword = $_POST['password'];
$myaddress = $_POST['address'];

// To protect MySQL injection (more detail about MySQL injection)
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
$myusername = mysql_real_escape_string($myusername);
$mypassword = mysql_real_escape_string($mypassword);
$sql="INSERT into $tbl_name values('$myusername', '$mypassword', '$address')";
$result=mysql_query($sql);

if($result){
header("location:post-register-login.html");
}
?>

