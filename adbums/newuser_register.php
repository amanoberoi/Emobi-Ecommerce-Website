<?php
    $user = "root";
    $password = "";
    $database = "pgr";
    
   

    mysql_connect("localhost",$user,$password);
    mysql_select_db($database)or die("Unable to select database!");

$uname=$_POST['myusername'];
$upassword=$_POST['mypassword'];
$umob=$_POST['mymobile'];
$ustate=$_POST['mystate'];
$ucountry=$_POST['mycountry']; 
$uemail=$_POST['myemail'];  
    
$query = "INSERT INTO memberinfo (myusername,mypassword,mymobile,mystate,mycountry,myemail) VALUES ('$uname','$upassword','$umob','$ustate','$ucountry','$uemail ')"; 
$querya = "INSERT INTO member(myusername,mypassword) VALUES ('$uname','$upassword')"; 
$result=mysql_query($query);
$resulta=mysql_query($querya);

if($result && $resulta)
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
<font face="Times New Roman" color="White" >
<h1>You Have Registered Succesfully</h1>
	<h2><a href="main_login.php">Click Here to Login </a></h2>

</body>
<br><br><br><br><br><br><br><br><br>
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
<font face="Times New Roman" color="White" >
<h1>You Have  Not Registered Succesfully</h1>
	<h2><a href="newuser.php">ClicK here To Register again </a></h2>

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



