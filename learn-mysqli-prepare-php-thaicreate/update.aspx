<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	$strName = "Weerachai Nukitram";
	$strEmail = "<a href='/cdn-cgi/l/email-protection' class='__cf_email__' data-cfemail='661103040b071512031426120e070f0514030712034805090b'>[email protected]</a>";
	$strCountryCode = "TH";
	$strBudget = "6000000";
	$strUsed = "100000";

	$strCustomerID = "C005";

	$sql = "UPDATE customer SET 
			Name = ? ,
			Email = ? ,
			CountryCode = ? ,
			Budget = ? ,
			Used = ?
			WHERE CustomerID = ? ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('sssiis', $strName, $strEmail, $strCountryCode, $strBudget, $strUsed,$strCustomerID); //   s - string, b - blob, i - int, etc

	$stmt ->execute();

	printf("%d Row updated.\n", $stmt->affected_rows);

	$conn->close();
?>