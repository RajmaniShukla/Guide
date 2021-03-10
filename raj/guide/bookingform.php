<html>
      <?php
require('dbconfig.php');
session_start();
?>
    <head>
<?php
include 'dbConfig.php';
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
<body>
    <h4>
<?php $hotel_name = $_SESSION['h_name']; ?>
</h4>
<div id="hotel">
    <div value="">Select district first</div>
</div>
    <div id="hotel_name">
    </div>
    </body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
</script>