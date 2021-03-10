<?php
	require "conn.php";
	$id = "3";
	$data_w=array();
	$i=0;
	$query_w = "SELECT * FROM `users` WHERE id <= '$id'";
	if($result = mysqli_query($conn1,$query_w)){
		$row = mysqli_fetch_assoc($result);
	}
?>