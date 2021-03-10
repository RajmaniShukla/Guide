<?php
	require "wallet.php";
	$src_n = $data_w[$i]['name'];
	$src_w = $data_w[$i]['wallet'];
?>
<html>
	<head>
		<title> Wallet </title>
	</head>
	<body>
		<h1>hello : <?php echo $src_n;?></h1>
		<h3>Balance : <?php echo $src_w;?></h3>
		<table>
			<th>S.No.</th>
			<th>Item</th>
			<th>Prise</th>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>	
		</table>		
		<hr/><a href="credit.php">Credit</a> <hr/>
		<a href="debit.php">Debit</a> 
				
	</body>
</html>
<?php

?>