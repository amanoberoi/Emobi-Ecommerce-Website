<html>
<head>
<title>Phone Data example</title>
</head>
<body>
<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="emobi"; // Database name 
$tbl_name="handset"; // Table name 

// Connect to server and select databse.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");
$sql="SELECT name, price, os, camera, features FROM $tbl_name where b_id='Apple';";
$result=mysql_query($sql);

while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	printf("<table border=1 style=width:80%%;>");
    printf("<tr>");
	printf("<th rowspan=4 style=width:20%%>%s</th>", $row[0]);
	printf("<td><b>Price (in USD$):</b> %s</td>", $row[1]);
	printf("</tr>");
	printf("<tr><td>%s</td></tr>",$row[2]);
	printf("<tr><td>%s</td></tr>",$row[3]);
	printf("<tr><td>%s</td></tr>",$row[4]);
	printf("<br/>");
}
printf("</table>");
?>

</body>
</html>