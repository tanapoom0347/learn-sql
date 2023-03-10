<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	$strCountryCode = "US";
	$sql = "SELECT * FROM customer WHERE CountryCode = ? ";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param('s', $strCountryCode); //   s - string, b - blob, i - int, etc

	$stmt ->execute();

	$result = $stmt->get_result();

	while($row = $result->fetch_assoc())
	{
		echo $row["CustomerID"]."<br>";
		echo $row["Name"]."<br>";
		echo $row["Email"]."<br>";
		echo $row["CountryCode"]."<br>";
		echo $row["Budget"]."<br>";
		echo $row["Used"]."<br>";
		echo "<hr>";
	}

	$conn->close();
?>