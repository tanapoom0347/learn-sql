<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	$strCustomerID = "C005";

	$sql = "DELETE FROM customer
		WHERE CustomerID = ? ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $strCustomerID); //   s - string, b - blob, i - int, etc

	$stmt ->execute();

	printf("%d Row deleted.\n", $stmt->affected_rows);

	$conn->close();
?>