

<?php
	
	
	include ('dbconn.php');
	
	$s=$_GET['s'];
	$c=$_GET['c'];
	$t=$_GET['t'];
	
	

	
	$insert = mysqli_query($con, "DELETE FROM replies WHERE reply_id= ".$_GET['rid']."");
						  
     if ($insert) {
		
		header("Location: /forum-tutorial/readtopic/".$c."/".$s."/".$t."");
	}
		
	

	
?>

