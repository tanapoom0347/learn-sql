<?php
	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$objCon = mysqli_connect($serverName,$userName,$userPassword,$dbName);

	$strSQL = "SELECT * FROM member WHERE SID = '".trim($_GET['sid'])."' AND UserID = '".trim($_GET['uid'])."' ";
	$objQuery = mysqli_query($objCon,$strSQL);
	$objResult = mysqli_fetch_array($objQuery,MYSQLI_ASSOC);
	if(!$objResult)
	{
			echo "Activate Invalid !";
	}
	else
	{	
			$strSQL = "UPDATE member SET Active = 'Yes'  WHERE SID = '".trim($_GET['sid'])."' AND UserID = '".trim($_GET['uid'])."' ";
			$objQuery = mysqli_query($objCon,$strSQL);

		echo "Activate Successfully !";
	}

	mysqli_close($objCon);
?>