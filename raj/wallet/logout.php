<?php
    session_start();
    session_destroy();
    header('Location: http://localhost/Raj_tour/login.php');
?>