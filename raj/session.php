<?php
    include ('db.php');
    session_start();

    $user_check = $_SESSION['login_user'];
    $ses_sql=mysqli_query($connection,"SELECT * FROM users WHERE email = '$user_check'");
    $row=mysqli_fetch_assoc($ses_sql);
    $login_session = $row['email'];
    if(!isset($login_session)){
        mysqli_close($connection);
        header('Location:login.php');
    }
?>