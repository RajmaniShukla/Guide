<?php
    $conn = mysqli_connect("localhost","root","root","raj_warehouse");
    function add_new_user($email){
        $query = "CREATE TABLE ".$email."(trans_id int(255), trans_type varchar(3000), trans_mode varchar(200), time&date timestamp,transactional_balance int(255), services varchar(5000), avail_balance varchar(5000));";
    $result = mysqli_query($conn,$query);
    return $result;
    }
?>