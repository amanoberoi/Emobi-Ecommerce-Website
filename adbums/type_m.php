<html>
<head>
<title>Welcome</title>
</head>
<body>
<center><body background="photo/pogaro2.jpg" leftmargin="50" topmargin="50">
<img src="photo/title.jpg" width=500 height=50 border=3 >
<br>
<font face="Impact" color="FF9966" >Hotels... </font>
<br><br>
<hr width=100%>
<marquee><h3><b><i><font face="Comic Sans MS" color="FF9966" >Pogaro is Now " Wi-Fi (802.11b/g) and hi-speed internet enabled " (just ask your server for the password).</i></b></h3></marquee>
<hr width=100%>
<br>


<a href="aboutemp.html"><img src="photo/about us.jpg" width=120 height=50 border=2 alt="About Us"></a>
<a href="photo.html"><img src="photo/photos.jpg" width=120 height=50 border=2 alt="Photos"></a>
<a href="logout.php"  ><img src="photo/log out.jpg" width=120 height=50 border=2 alt="logout"></a> 
<br>
<br>


<?php
$host="localhost"; // Host name
$user="root";
$password=""; // Mysql password
$db_name="pgr"; // Database name


// Connect to server and select databse.
mysql_connect("$host", "$user", "$password")or die("cannot connect");
mysql_select_db("$db_name")or die("cannot select DB");



$val=$_POST['mob'];

echo "You have selected your option to search as -> Contact No";
echo "<br>";
echo "You have entered value -> "."("."$val".")";
$result = mysql_query("SELECT * FROM memberinfo where mymobile=$val");
?>

<table width=100% align="center" bordercolor="grey" border="10" >
<tr>
<td> <center><b><font color="brown" size="5"> User name </b></td> 
<td> <center><b><font color="brown" size="5"> Password </b></td>
<td> <center><b><font color="brown" size="5"> Contact No. </b></td> 
<td> <center><b><font color="brown" size="5"> State </b></td> 
<td> <center><b><font color="brown" size="5"> Country </b></td> 
<td> <center><b><font color="brown" size="5"> Email id </b></td> </tr>


<?php
while($row = mysql_fetch_array($result))
  {
?>


<td><font color="orange"><center><?php  echo $row['myusername']; ?></td>
<td><font color="orange"><center><?php  echo $row['mypassword']; ?></td>
<td><font color="orange"><center><?php  echo $row['mymobile'];   ?></td>
<td><font color="orange"><center><?php  echo $row['mystate'];    ?></td>
<td><font color="orange"><center><?php  echo $row['mycountry'];  ?></td>
<td><font color="orange"><center><?php  echo $row['myemail'];    ?></td></tr>

<?php
  }
?>

</table></body></html>

