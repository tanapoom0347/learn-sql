<?php
	session_start();
	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$objCon = mysqli_connect($serverName,$userName,$userPassword,$dbName);
	
	if(trim($_POST["txtUsername"]) == "")
	{
		echo "Please input Username!";
		exit();	
	}
	
	if(trim($_POST["txtPassword"]) == "")
	{
		echo "Please input Password!";
		exit();	
	}	
		
	if($_POST["txtPassword"] != $_POST["txtConPassword"])
	{
		echo "Password not Match!";
		exit();
	}
	
	if(trim($_POST["txtName"]) == "")
	{
		echo "Please input Name!";
		exit();	
	}	

	if(trim($_POST["txtEmail"]) == "")
	{
		echo "Please input Email!";
		exit();	
	}	

	$strSQL = "SELECT * FROM member WHERE Username = '".trim($_POST['txtUsername'])."' ";
	$objQuery = mysqli_query($objCon,$strSQL);
	$objResult = mysqli_fetch_array($objQuery,MYSQLI_ASSOC);
	if($objResult)
	{
			echo "Username already exists!";
	}
	else
	{	
		
		$strSQL = "INSERT INTO member (Username,Password,Name,Email,Status,SID,Active) VALUES ('".$_POST["txtUsername"]."', 
		'".$_POST["txtPassword"]."','".$_POST["txtName"]."' ,'".$_POST["txtEmail"]."','USER','".session_id()."','No')";
		$objQuery = mysqli_query($objCon,$strSQL);
		
		$Uid = mysqli_insert_id($objCon);
		echo "Register Completed!<br>Please check your email to activate account";		

		$strTo = $_POST["txtEmail"];
		$strSubject = "Activate Member Account";
		$strHeader = "Content-type: text/html; charset=windows-874\n"; // or UTF-8 //
		$strHeader .= "From: webmaster@thaicreate.com\nReply-To: webmaster@thaicreate.com";
		$strMessage = "";
		$strMessage .= "Welcome : ".$_POST["txtName"]."<br>";
		$strMessage .= "=================================<br>";
		$strMessage .= "Activate account click here.<br>";
		$strMessage .= "http://192.168.1.2/activate.aspx?sid=".session_id()."&uid=".$Uid."<br>";
		$strMessage .= "=================================<br>";
		$strMessage .= "ThaiCreate.Com<br>";

		$flgSend = mail($strTo,$strSubject,$strMessage,$strHeader); 
	
	}

	mysqli_close($objCon);
?>