<?php
	session_start();
	$conn = mysqli_connect("localhost","root","12345678");
	mysqli_select_db($conn,"mydatabase");
	$strSQL = "SELECT * FROM member WHERE Username = '".mysqli_real_escape_string($conn, $_POST['txtUsername'])."' 
	and Password = '".mysqli_real_escape_string($conn, $_POST['txtPassword'])."'";
	$objQuery = mysqli_query($conn, $strSQL);
	$objResult = mysqli_fetch_array($objQuery);
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
				header("location:admin_page.aspx");
			}
			else
			{
				header("location:user_page.aspx");
			}
	}
	mysqli_close($conn);
?>