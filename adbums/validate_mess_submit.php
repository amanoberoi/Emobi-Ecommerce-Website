<?php
    $user = "root";
    $password = "";
    $database = "pgr";
    
   

    mysql_connect("localhost",$user,$password);
    mysql_select_db($database)or die("Unable to select database!");




$myad=$_POST['myusername'];

// To protect MySQL injection (more detail about MySQL injection)
$myad = stripslashes($myad);
$myad = mysql_real_escape_string($myad);

$sql="SELECT * FROM memberinfo WHERE myusername='$myad'";
$resultb=mysql_query($sqlb);

// Mysql_num_row is counting table row
$countb=mysql_num_rows($resultb);
// If result matched $myadminname and $mypassword, table row must be 1 row

if($countb==1)
	{
	
	}
	else 
		{
		echo "Wrong Username";
		}


$uuser=$_POST['myusername'];  
$umsg=$_POST['mymessage'];
    
$query = "INSERT INTO msg(myusername,mymessage)VALUES('$uuser','$umsg')"; 
$result=mysql_query($query);

	if($result)
	{
	

?>



<html>
<head>
<title>POGARO</title>
</head>

<center><body background="photo/pogaro2.jpg" leftmargin="50" topmargin="50">
<img src="photo/title.jpg" width=300 height=50 border=3 >
<br>
<font face="Impact" color="FF9966" >Hotels... </font>
<br><br>
<hr width=100%>
<marquee><h3><b><i><font face="Comic Sans MS" color="FF9966" >Pogaro is Now " Wi-Fi (802.11b/g) and hi-speed internet enabled " (just ask your server for the password).</i></b></h3></marquee>
<hr width=100%>
	<a href="logout.php"  ><img src="photo/log out.jpg" width=120 height=50 border=2 alt="logout"></a>
<font face="Times New Roman" color="White" >
<h1>Your message will be Replied with a call shortly</h1>
	<h2><a href=user_main.php>Want to Send another message</h2>
	

</body>
<br><br>
<hr color=red>
<footer><center><font face="Comic Sans MS" color="FF9966" >Copyright 2011. All Rights Reserved. Any reproduction in any form  shall attract action by our awesome legal teams.</footer>
<hr color=red>
<br><br>
</html>





<?php
	}

	else
	{
?>
<html>
<head>
<title>POGARO</title>
</head>

<center><body background="photo/pogaro2.jpg" leftmargin="50" topmargin="50">
<img src="photo/title.jpg" width=300 height=50 border=3 >
<br>
<font face="Impact" color="FF9966" >Hotels... </font>
<br><br>
<hr width=100%>
<marquee><h3><b><i><font face="Comic Sans MS" color="FF9966" >Pogaro is Now " Wi-Fi (802.11b/g) and hi-speed internet enabled " (just ask your server for the password).</i></b></h3></marquee>
<hr width=100%>

<a href="logout.php"  ><img src="photo/log out.jpg" width=120 height=50 border=2 alt="logout"></a>
<font face="Times New Roman" color="White" >
<h1>sORRY Message Sending failed</h1>
	<h2><a href="user_main.php">Click Here to send message again </a></h2>

</body>
<br><br>
<hr color=red>
<footer><center><font face="Comic Sans MS" color="FF9966" >Copyright 2011. All Rights Reserved. Any reproduction in any form  shall attract action by our awesome legal teams.</footer>
<hr color=red>
<br><br>
</html>


<?php

	
	}

mysql_close();
?>
