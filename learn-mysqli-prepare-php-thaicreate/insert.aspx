<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	$strCustomerID = "C005";
	$strName = "Weerachai Nukitram";
	$strEmail = "<a href='/cdn-cgi/l/email-protection' class='__cf_email__' data-cfemail='611604030c001215041321150900080213040015044f020e0c'>[email protected]</a>";
	$strCountryCode = "TH";
	$strBudget = "6000000";
	$strUsed = "0";

	$sql = "INSERT INTO customer (CustomerID, Name, Email, CountryCode, Budget, Used) VALUES (?, ?, ?, ?, ?, ?)";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('ssssii', $strCustomerID, $strName, $strEmail, $strCountryCode, $strBudget, $strUsed); //   s - string, b - blob, i - int, etc

	$stmt ->execute();

	printf("%d Row inserted.\n", $stmt->affected_rows);

	$conn->close();
?>