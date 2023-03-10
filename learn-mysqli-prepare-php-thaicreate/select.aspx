<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	// $strCustomerID = "C001";
	// $sql = "SELECT * FROM customer WHERE CustomerID = ? ";
	// $stmt = $conn->prepare($sql);
	// $stmt->bind_param('s', $strCustomerID); //   s - string, b - blob, i - int, etc

	// ** for 2 Parameters
		$strCustomerID = "C001";
		$strEmail = "win.weerachai@thaicreate.com";
		$sql = "SELECT * FROM customer WHERE CustomerID = ? AND Email = ? ";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ss', $strCustomerID,$strEmail); //   s - string, b - blob, i - int, etc
	// *

	$stmt ->execute();

	$result = $stmt->get_result();
	$row = $result->fetch_assoc();

	if($row)
	{
		echo $row["CustomerID"]."<br>";
		echo $row["Name"]."<br>";
		echo $row["Email"]."<br>";
		echo $row["CountryCode"]."<br>";
		echo $row["Budget"]."<br>";
		echo $row["Used"]."<br>";
	}

	$conn->close();
?>