<?php
	include ('layout_manager.php');
	include ('content_function.php');
?>
<html>
<head><title>FORUM</title></head>
<link href="/forum-tutorial/styles/main.css" type="text/css" rel="stylesheet" />
<body>
	<div class="pane">
		<div class="header"><h1 ><a href="/forum-tutorial">DISCUSSION FORUM</a></h1></div>
		<div class="loginpane">
			<?php
				session_start();
				if (isset($_SESSION['username'])) {
					logout();
					if (isset($_GET['status'])) {
						if ($_GET['status'] == 'course-fail') {
							
							echo "<h1 style='color: red;'>YOU ARE NOT REGISTERED IN THIS COURSE !</h1>";
						    echo "<hr/><br/><hr/>";
							
						} 
					}
					
					
				} 
				else {
					if (isset($_GET['status'])) {
						if ($_GET['status'] == 'reg_success') {
							echo "<h1 style='color: green;'>New user registered successfully!</h1>";
						} else if ($_GET['status'] == 'login-fail') {
							echo "<h1 style='color: red;'>INVALID username and/or password!</h1>";
						}
						else if ($_GET['status'] == 'reg-fail') {
							echo "<h1 style='color: red;'>REGISTRATION fail. TRY again!</h1>";
						}
						
					}
					loginform();
				}
			?>
		</div>
		<div class="forumdesc">
			<p>HOPE YOU ARE DOING GOOD TODAY!!!!!!!!!!!!!!</p>
		</div>
		<div  class="content ">
			<?php 
			     
				if (isset($_SESSION['username'])) {
					dispcategories();
				} 
			
			
			
			
			
			?>
		</div>
	</div>
</body>
</html>