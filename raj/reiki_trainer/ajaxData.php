<html>
    <head>
        <?php
require('dbconfig.php');
session_start();
?>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
     <link rel="stylesheet" href="../style1.css">
        <?php
include 'dbConfig.php';
if(!empty($_POST["district_id"])){
    $s=$_POST['district_id'];
    $query = $db->query("SELECT * FROM reiki_trainer WHERE district_id = ".$s." AND status = 1");
    $rowCount = $query->num_rows;
    if($rowCount > 0){
        echo '<div value="">    </div>';
        while($row = $query->fetch_assoc()){ 
            echo '<form action="profile_c.php" method="POST"><div class="col-md-3"><div  style="border:1px solid #ccc; padding:20px; margin-bottom:20px;" value="'.$row['r_trainer_id'].'"><b>'.$row['r_trainer_name'].'</b><br><div class="more">'.$row['r_trainer_desc'].'</div><br>'.$row['r_trainer_cost'].'<br></div></div></form>';
?>
            <a href="profile_c.php?id=<?php echo $row['r_trainer_id'];?>"><button>BOOK NOW</button></a>
    <?php
        }    
    }
    else   {
        echo '<div value="">service is not available</div>';
    }
    }
    
?>
 
    
    <script>
      
$(document).ready(function() {
	var showChar = 200;
	var ellipsestext = "";
	var moretext = "more";
	var lesstext = "less";
	$('.more').each(function() {
		var content = $(this).html();
		if(content.length > showChar) {
			var c = content.substr(0, showChar);
			var h = content.substr(showChar-1, content.length - showChar);
			var html = c + '<span class="moreelipses">'+ellipsestext+'</span>&nbsp;<span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">'+moretext+'</a></span>';
			$(this).html(html);
		}

	});
	$(".morelink").click(function(){
		if($(this).hasClass("less")) {
			$(this).removeClass("less");
			$(this).html(moretext);
		} else {
			$(this).addClass("less");
			$(this).html(lesstext);
		}
		$(this).parent().prev().toggle();
		$(this).prev().toggle();
		return false;
	});
});      
</script>
</html>