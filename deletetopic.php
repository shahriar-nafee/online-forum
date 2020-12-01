

<?php
	
	
	include ('dbconn.php');
	
	$s=$_GET['s'];
	$c=$_GET['c'];
	
	
	

	
	$insert = mysqli_query($con, "DELETE FROM topics WHERE topic_id= ".$_GET['tid']."");
	$insert1 = mysqli_query($con, "DELETE FROM replies WHERE topic_id= ".$_GET['tid']."");							  
     if ($insert) {
		 if ($insert1) {
		header("Location: /forum-tutorial/topics/".$c."/".$s."");
	}
		
	}
	

	
	
	
?>

