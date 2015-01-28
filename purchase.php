<!DOCTYPE html>
<html>
<head>
<title>Purchase</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<link rel='stylesheet' type='text/css' href='http://cdn1.editmysite.com/editor/libraries/fancybox/fancybox.css?1349390647'></script>
<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common-v2.css?buildTime=1349390647' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style.css?1349454442' title='wsite-theme-css' />
<link href='http://fonts.googleapis.com/css?family=Actor' rel='stylesheet' type='text/css' />
<style type='text/css'>
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, .blog-sidebar div.paragraph, .blog-sidebar p, .wsite-form-field label, .wsite-form-field label {}
#wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {}
#wsite-title{}
</style>

<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/libraries/jquery_effects.js?1349390647'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/libraries/fancybox/fancybox.min.js?1349390647'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/images/common/utilities-jq.js?1349390647'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/libraries/flyout_menus_jq.js?1349390647'></script>

</head>
<body class='wsite-theme-light no-header-page wsite-page-browse'>
<div id="header-wrap">
	<div id="page">
		<div id="header-container">
			<table id="header">
				<tr>
					<td id="logo"><span class='wsite-logo'><a href=''><span id="wsite-title">EMobi</span></a></span></td>
					<td id="header-right">
						<table>
							<tr>
								<td class="phone-number"></td>
								<td class="social"></td>
							</tr>
						</table>
						<div class="search"></div>
					</td>
				</tr>
			</table>
			<div id="topnav">
				<ul><li id='pg400466696106696683'><a href='home.html'>Home</a></li><li id='pg709337864551970741'><a href='login-page.html'>Login Page</a></li><li id='pg288094095702542280'><a href='register-here.html'>Register Here</a></li><li id='active'><a href='browse.html'>Browse</a></li><li id='pg817468303534948898'><a href='administrator-login.html'>Administrator Login</a></li><li id='pg785866385556613261'><a href='contact-us.html'>Contact Us</a></li></ul>
				<div style="clear:both"></div>
			</div>
		</div>
	</div>
</div>


<div id="banner-wrap">
	<div id="container">
		<div id="banner-bot">
			<div id="banner-top">
				<div id="banner-mid">
					<div id="banner">
						<div class="wsite-header"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="main-wrap">
	<div id="page">
		<div id="main">
			<div id="content">
			
<div id='wsite-content' class='wsite-not-footer'>

<?php
	session_start();
	if (isset($_SESSION["myuser"]))
	{
		$phone = $_POST['phone'];
		$myusername = $_SESSION ["myuser"];
		$host="localhost"; // Host name 
		$username="root"; // Mysql username 
		$password=""; // Mysql password 
		$db_name="emobi"; // Database name 
		$timestamp = date('D, d M Y H:i:s T');
		mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
		mysql_select_db("$db_name")or die("cannot select DB");
	$order = "insert into orders (username, phone_id, timest) values ('$myusername','$phone','$timestamp');";
		
		$sql="select name, b_id, price from handset where id='$phone'";
		$sql_update="UPDATE handset SET stock = stock-1 WHERE id = '$phone';";
		
		
		//$order_id="SELECT LAST_INSET_ID();";
		$result = mysql_query($sql);
		$result_update = mysql_query($sql_update);
		
		$row = mysql_fetch_array($result, MYSQL_NUM);
		
		$order_sql = mysql_query($order);
		
		if($order_sql == FALSE)
			printf ("Order query not wotking.");
		
		printf ("<h2><center>Congratulations on purchasing %s's %s.</h2></center><br/></br/>Due to recent credit card frauds in the country we are only giving C-O-Ds (Cash on Delivery) as currently it is the only safer way to deal.<br/><br/>",$row[1],$row[0]);
		printf ("<center><b>Please keep $%d cash ready as the product gets delivered in 2-3 days.</b><br/>Your order id is : %d. You can use this ID to contact our support departmant at <b>support@emobi.com</b></center>",$row[2],mysql_insert_id());
		printf ("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> 	<br/><br/><br/><br/><br/><i><font color=\"blue\"><center>It was pleasure shopping with you, hopefully we'll deal again !!!!</center></font>");
	}
	else {
		echo "<h1>You have not logged in. Please <a href=login-page.html>Login Here</a></h1>";
	}
	
?>

	</h1>
</center>
</div>
</div>
		</div>
	</div>
</div>


</body>
</html>