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

	/***  Add Record ***/
	if($_GET["Action"]=="Save")
	{
		$strSQL = "INSERT INTO tb_register (NAME,SURNAME) VALUES ('".$_POST["txtName"]."','".$_POST["txtSurname"]."')";
		$objQuery = mysqli_query($objCon,$strSQL);
	}
	
	/*** List Record ***/
	$strSQL = "SELECT * FROM tb_register";
	$objQuery = mysqli_query($objCon,$strSQL);
?>
	<table width="498" border="1">
	<tr>
	<th width="87"> <div align="center">UID </div></th>
	<th width="145"> <div align="center">NAME </div></th>
	<th width="244"> <div align="center">SURNAME </div></th>
	</tr>
	<?php
	while($objResult = mysqli_fetch_array($objQuery,MYSQLI_ASSOC))
	{
	?>
		<tr>
		<td><div align="center"><?php echo $objResult["UID"];?></div></td>
		<td><?php echo $objResult["NAME"];?></td>
		<td><?php echo $objResult["SURNAME"];?></td>
		</tr>
	<?php
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

</table>
	<?php
	mysqli_close($objCon);
	?>
</body>
</html> 