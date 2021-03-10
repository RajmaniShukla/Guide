<?php
require "wallet.php";
require "API.php";
$action = "credit";
	$amount = 100;
	$src_w = $data_w[$i]['wallet'];
	if($src_w >= $amount){
			if($trans = gateway($action,$amount)){
			$src_w = $src_w - $amount;
			$query = "UPDATE `users` SET `wallet`='$src_w' WHERE id <= '$id';";
			mysqli_query($conn1,$query);
		}	
	}else{
		echo "Low balance !";
	}
	

?>