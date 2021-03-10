<html>
	<head><style type="text/css">
input[type=text]
{
  border: 1px solid #ccc;
  border-radius: 3px;
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  width:200px;
  min-height: 28px;
  padding: 4px 20px 4px 8px;
  font-size: 12px;
  -moz-transition: all .2s linear;
  -webkit-transition: all .2s linear;
  transition: all .2s linear;
}
input[type=text]:focus
{
  width: 400px;
  border-color: #51a7e8;
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1),0 0 5px rgba(81,167,232,0.5);
  outline: none;
}
</style>
	  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"></head>
		<body>
<?php
 session_start();
 
?>
<!-- Login and Signup forms -->
 <h1>Welcome <?php echo $_SESSION['name']; ?></h1>
 
		</body>
	</html>