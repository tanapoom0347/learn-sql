<?php

	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	if ($conn->connect_errno) {
		echo $conn->connect_error;
		exit;
	}
	else
	{
		echo "Database Connected.";
	}

	$conn->close();
?>