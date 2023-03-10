<?php
	session_start();
	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$objCon = mysqli_connect($serverName,$userName,$userPassword,$dbName);

	$strSQL = "SELECT * FROM member WHERE Username = '".trim($_POST['txtUsername'])."' 
	and Password = '".trim($_POST['txtPassword'])."'
	and Active = 'Yes' ";
	$objQuery = mysqli_query($objCon,$strSQL);
	$objResult = mysqli_fetch_array($objQuery,MYSQLI_ASSOC);
	if(!$objResult)
	{
			echo "Username and Password Incorrect!";
	}
	else
	{
			$_SESSION["UserID"] = $objResult["UserID"];
			$_SESSION["Status"] = $objResult["Status"];

			session_write_close();
			
			if($objResult["Status"] == "ADMIN")
			{
				echo "Welcome Admin";
				//header("location:admin_page.aspx");
			}
			else
			{
				echo "Welcome User";
				//header("location:user_page.aspx");
			}
	}
	mysqli_close($objCon);
?>