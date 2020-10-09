<?php
	session_start();
	$host="localhost";
	$db_user="suan";
	$db_password="suan18";
	$db_name="laibu";

	$base_url="http://localhost/laibu/";
	$con = mysqli_connect($host,$db_user,$db_password,$db_name);
	if($con->connect_error)
	{
		die("Connection failed: " . $con->connect_error);
	}

	function redirect_to( $location = NULL ) {
		if ($location != NULL) {
			header("Location: {$location}");
			exit;
		}
	}

	function generateRandomString($length = 7) {
		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$charactersLength = strlen($characters);
		$randomString = '';
		for ($i = 0; $i < $length; $i++) {
			$randomString .= $characters[rand(0, $charactersLength - 1)];
		}
		return $randomString;
	}
?>
