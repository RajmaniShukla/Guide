<?php
include('../session.php');
?>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dashboard</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="../apple-icon.png">
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" href="../assets/css/normalize.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="../assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="../assets/scss/style.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#"><img src="images/logo.pn" alt=""></a>
                <a class="navbar-brand hidden" href="#"><img src="images/" alt=""></a>
            </div>
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="../profile.php"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">History</h3><!-- /.menu-title -->
                    <li>
                        <a href="../current trip.php"> <i class="menu-icon fa fa-laptop"></i>Current Trip</a>
                    </li>
                    <li>
                        <a href="../past trip.php"> <i class="menu-icon fa fa-table"></i>Past Trip</a>
                    </li>
                    <li>
                        <a href="../city visited.php"> <i class="menu-icon fa fa-th"></i>City Visited</a>
                    </li>
                </ul>
            </div>
        </nav>
    </aside>
        <header id="header" class="header">
            <div class="header-menu">
                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                </div>
                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>
                        <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>
                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>
                                <a class="nav-link" href="logout.php"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
         
        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="card">
                        <?php
                            $connection = mysqli_connect('localhost','root','','rajasthantourism') or die(mysqli_error($connection));
                            $id = $_GET["id"];
                            $query = "SELECT * FROM rent_travel where rent_veh_co_id= '$id'";
                            $result = mysqli_query($connection,$query);
                            $row = mysqli_fetch_array($result);
                        
                        ?>
                        <hr>
                        <form method="POST" action="">
                            <lable>Item</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php echo $row['rent_name'];?><hr/>
                            <lable>Amount</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php echo $row['rent_cost'];?><hr/>
                             <lable>Password</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="password" name="pass" /><hr/>
                            <input type="submit" name="pay" value="PAY" />  
                        </form>
                      <?php 
                             $prise=$row['rent_cost'];
                         $con = mysqli_connect('localhost','root','','test') or die(mysqli_error($connection));
                        require "../wallet/wallet.php";
	                   require "../wallet/API.php";
                            if(isset($_POST['pay'])){
                                  $password = md5($_POST['pass']);
                                $qry = "SELECT * FROM users where password = '$password'";
                                $resu=mysqli_query($con,$qry);
                                $row = mysqli_fetch_array($resu);
                                 
                                if($row['wallet']<=$prise){
                                   echo"Low Credit limit!"; 
                                }else{
                                    echo"success";
                                     $action = "debit";
                        $src_w = $row['wallet'];
	                   if($trans = gateway($action,$prise)){
		                  $src_w = $src_w - $prise;
                           $id=$_SESSION['login_user'];
                           $query = "UPDATE `users` SET `wallet`='$src_w' WHERE email = '$id'";
		                  mysqli_query($con,$query);
                           echo"Payment Success";
                                }else{
                                    echo"Password Incorrect";
                                }
                           
	                   }	
                            }
                        ?>
                    </div>
                  </div>
                  <div class="col-lg-6">
                             <center><div class="col-lg-8">
                    <div class="card">
                      
                        <div class="card-header">
                            <strong class="card-title">Total Amount</strong>
                        </div>
                        <div class="card-body">
                            <table class="table table-dark">
                              <thead>
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Item</th>
                                  <th scope="col">Prise</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <th scope="row">1</th>
                                  <td>Mark</td>
                                  <td>@mdo</td>
                                </tr>
                              </tbody>
                            </table>
                        </div>
                    </div>
         </div></center>
                  </div>                    
            </div>
        </div>
    </div>
    <script src="../assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/main.js"></script>
</body>
</html>