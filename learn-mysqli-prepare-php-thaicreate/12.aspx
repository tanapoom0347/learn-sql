<html>
<head>
<title>ThaiCreate.Com PHP/MySQL (Thai UTF8)</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
</head>
<body>
<?php	
/*** Connect ***/
$serverName = "localhost";
$userName = "root";
$userPassword = "12345678";
$dbName = "mydatabase";

$objCon = mysqli_connect($serverName,$userName,$userPassword,$dbName);

mysqli_set_charset($objCon, "utf8");

if($_GET["Action"]=="Save")
{
    echo "1234";
}
?>
<form name="frmMain" method="post" action="?Action=Save">
		<tr>
		  <td>
	      </td>
		  <td><input name="txtName" type="text" id="txtName"></td>
		  <td><input name="txtSurname" type="text" id="txtSurname">
	      <input name="btnSubmit" type="submit" id="btnSubmit" value="Submit"></td>
	  </tr>
</form>	  
<?php
mysqli_close($objCon);
?>
</body>
</html> 