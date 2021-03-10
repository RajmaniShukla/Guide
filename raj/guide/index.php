<head>
<?php
include 'dbConfig.php';
$query = $db->query("SELECT * FROM guide WHERE status = 1");
$rowCount = $query->num_rows;
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
<body>
     <div class="head"><img src="../orange-logo.png"></div>
    <div class="front"><img src="../gangaur-festival-2018.png"></div>
     <link rel="stylesheet" href="../style1.css">
<select id="district">
    <option value="">Select district</option>
    <?php
    if($rowCount > 0){
        while($row = $query->fetch_assoc()){ 
            echo '<option value="'.$row['guide_id'].'">'.$row['g_language'].'</option>';
        }
    }else{
        echo '<option value="">guide not available</option>';
    }
    ?>
</select>
<div id="hotel">
    <div value="">Select guide first</div>
</div>
    <div id="hotel_name">
    </div>
    </body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#district').on('change',function(){
        var districtID = $(this).val();
        if(districtID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'district_id='+districtID,
                success:function(html){
                    $('#hotel').html(html);
                   
                }
            }); 
        }else{
            $('#hotel').html('<option value="">Select district first</option>');
            
        }
    }); 
});
</script>
