<?php
session_start();
$_SESSION["hello"] = "amamn";

header("location:test_session.php"); 
?>
