<html>
<head>
<title>New User Register</title>
<script type="text/javascript">
function validate()
	{ 
	   if( document.myForm.myusername.value == "" )
		    {
		     alert( "Please provide your name!" );
		     document.myForm.myusername.focus() ;
		     return false;
		    }
	  if( document.myForm.mymobile.value == "" )
		    {
		     alert( "Please provide your mobile number!" );
		     document.myForm.mymobile.focus() ;
		     return false;
		    }
  	if( document.myForm.mystate.value == "" )
		    {
		     alert( "Please provide your state!" );
		     document.myForm.mystate.focus() ;
		     return false;
		    }
	  if( document.myForm.mycountry.value == "" )
		    {
		     alert( "Please provide your country!" );
		     document.myForm.mycountry.focus() ;
		     return false;
		    }
	   if( document.myForm.myemail.value == "" )
		   {
		     alert( "Please provide your Email!" );
		     document.myForm.myemail.focus() ;
		     return false;
		   }
		else
		    {
		    var emailID = document.myForm.myemail.value;
		    atpos = emailID.indexOf("@");
		    dotpos = emailID.lastIndexOf(".");
			    if (atpos < 1 || ( dotpos - atpos < 2 )) 
			         {
			          alert("Please enter correct email ID")
			          document.myForm.myemail.focus() ;
			          return false;
			          }
		  }
	   if( document.myForm.mypassword.value == "")
    		{
    		 alert( "Please provide 8 digit password" );
    		 document.myForm.mypassword.focus() ;
    		 return false;
    		}
  
	}

</script>
</head>

<body background="photo/pogaro2.jpg" leftmargin="50" topmargin="50">

<table width="300" border="15" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<form name="myForm" method="post" action="newuser_register.php" onsubmit="return(validate());">
<td><img src="photo/title.jpg" leftmargin="50" topmargin="50">
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
<tr>
	<td colspan="3"><strong>Enter Your Details </strong></td>
</tr>
<tr>
	<td width="78">Username</td>
	<td width="6">:</td>
	<td width="294"><input name="myusername" type="text" id="myusername"></td>
</tr>
<tr>
	<td>Password</td>
	<td>:</td>
	<td><input name="mypassword" type="text" id="mypassword"></td>
</tr>
<tr>
	<td>Mobile No</td>
	<td>:</td>
	<td><input name="mymobile" type="text" id="mymobile"></td>
</tr>
<tr>
	<td>State</td>
	<td>:</td>
	<td><input name="mystate" type="text" id="mystate"></td>   
</tr>
<tr>
	<td>Country</td>
	<td>:</td>
	<td><input name="mycountry" type="text" id="mycountry"></td>   
</tr>
<tr>
	<td>E-mail</td>
	<td>:</td>
	<td><input name="myemail" type="text" id="myemail"></td>   
</tr>
<tr>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	<td><input type="submit" name="Submit" value="Submit"><input type="Reset" name="Reset" value="Reset"></td>
</tr>
</table>
</td>
</form>
</tr>
</table>

<table>

</table>

</body>
<br><br><br><br><br><br><br>
<hr color=red>
<footer><center><font face="Comic Sans MS" color="FF9966" >Copyright 2011. All Rights Reserved. Any reproduction in any form  shall attract action by our awesome legal teams.</footer>
<hr color=red>
<br><br>