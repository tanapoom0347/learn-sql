<?php
	session_start();
	if($_SESSION['UserID'] == "")
	{
		echo "Please Login!";
		exit();
	}

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$objCon = mysqli_connect($serverName,$userName,$userPassword,$dbName);
	
	if($_POST["txtPassword"] != $_POST["txtConPassword"])
	{
		echo "Password not Match!";
		exit();
	}
	$strSQL = "UPDATE member SET Password = '".trim($_POST['txtPassword'])."' 
	,Name = '".trim($_POST['txtName'])."' WHERE UserID = '".$_SESSION["UserID"]."' ";
	$objQuery = mysqli_query($objCon,$strSQL);
	
	echo "Save Completed!<br>";		
	
	if($_SESSION["Status"] == "ADMIN")
	{
		echo "<br> Go to <a href='admin_page.aspx'>Admin page</a>";
	}
	else
	{
		echo "<br> Go to <a href='user_page.aspx'>User page</a>";
	}
	
	mysqli_close($objCon);
?>