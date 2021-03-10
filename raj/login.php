<?php	
        include "warehouse.php";
          session_start();
    if(isset($_SESSION['login_user'])) {
        header ('Location: profile.php');
    }
?>
<html>
	<head><style type="text/css">
input 
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
input:focus
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
            $error='';
			$db = mysqli_connect("localhost","root","","test");
			if(isset($_POST['signup']))
			{
				session_start();
			    $username = mysqli_real_escape_string($db,$_POST['name']);
			    $email = mysqli_real_escape_string($db,$_POST['email']);
			    $password = mysqli_real_escape_string($db,$_POST['password']);
			    $password2 = mysqli_real_escape_string($db,$_POST['password2']);
			    if($password == $password2){
					$password = md5($password);
                    $resu = add_new_user($email);
					$sql = "INSERT INTO users(name,email,password) VALUES ('$username','$email','$password')";
					mysqli_query($db,$sql);
					$_SESSION['name'] = $username;
                    header("location:home.php");
				}
				else
				{
					$error = "The two password do not match";
				}
				}
			
		if(isset($_POST['login'])) {
      // username and password sent from form
      $myusername = mysqli_real_escape_string($db,$_POST['email']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
	  $mypassword = md5($mypassword);
      $sql = "SELECT email FROM users WHERE email = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $count = mysqli_num_rows($result);
      // If result matched $myusername and $mypassword, table row must be 1 row
      if($count == 1) {
          $row = mysqli_fetch_array($result);
         $_SESSION['login_user'] =  $row[0];
         header('location:profile.php');
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }
?>
<!-- Login and Signup forms -->
<script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
</script>
<div id="tabs">
     <ul>
    <li><a href="#tabs-2">login</a></li>
             <li><a href="#tabs-1">signup</a></li>

   </ul>
	<div id="tabs-2">
    <form action="login.php" method="post">
    <input name="email" type="text" placeholder="Email" required>
    <input name="password" type="password" placeholder="Password" required>
    <p><input type="submit" name="login"  value="login" /></p>
    </form>
        <p><?php echo $error; ?></p>
	</div>
    	<div id="tabs-1">
    <form action="login.php" method="post">
    <input name="name" type="text" placeholder="Name" required>
    <input name="email" type="text" placeholder="Email" required>
    <input name="password" type="password" placeholder="Password" required>
	<input name="password2" type="password" placeholder="Password" required>
    <p><input type="submit" name="signup"  value="signup" /></p>
    </form>
	</div>
	
</div>
		</body>
	</html>