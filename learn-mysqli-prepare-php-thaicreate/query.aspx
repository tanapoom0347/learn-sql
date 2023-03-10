<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "12345678";
	$dbName = "mydatabase";

	$conn = new mysqli($serverName,$userName,$userPassword,$dbName);

	// Insert
	// $sql = "INSERT INTO customer (CustomerID, Name, Email, CountryCode, Budget, Used) 
	// 	VALUES ('C005','Weerachai Nukitram','<a href=";
    // $sql .= "/cdn-cgi/l/email-protection";
    // $sql .= " class=";
    // $sql .= "__cf_email__";
    // $sql .= " data-cfemail=";
    // $sql .= "7d09151c141e0f181c09183d151209101c1411531e1210";
    // $sql .= ">[email protected]</a>','TH','6000000','0')";
    // echo $sql;
	// $query = $conn->query($sql);

	// Update
	// $sql = "UPDATE customer  SET Used = '100000' WHERE CustomerID = 'C005' ";
	// $query = $conn->query($sql);

	// Delete
	// $sql = "DELETE FROM customer  WHERE CustomerID = 'C005' ";
	// $query = $conn->query($sql);

	// if($query)
	// {
	// 	echo "result suscess";
	// }

	$conn->close();

?>