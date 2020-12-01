<?php
	include ('dbconn.php');
	
	$newid = $_POST['idinput'];
	$newuser = $_POST['usernameinput'];
	$newpwd = $_POST['passwordinput'];
	
	
	
	$result = mysqli_query($con, "SELECT id FROM register WHERE id = '".$newid."'");
	
	if (mysqli_num_rows($result) != 0) {
		$insert = mysqli_query($con, "INSERT INTO users (`user_id`, `username`, `password`) VALUES ('".$newid."', '".$newuser."', '".$newpwd."');");
		}
		
	if ($insert) {
		header("Location: /forum-tutorial/index.php?status=reg_success");
	}
	 else {
		if (substr($_SERVER['HTTP_REFERER'], -1) == '/') {
			header("Location: ".$_SERVER['HTTP_REFERER']."login-fail");
		} else {
			header("Location: /forum-tutorial/index.php?status=reg-fail");
		}
	}
?>