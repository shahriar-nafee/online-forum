<html>

<body>
<?php
	function loginform() {
		echo "<form action='/forum-tutorial/validatelogin.php' method='POST'>
			  <p>Username:</p>
			  <input type='text' id='usernameinput' name='usernameinput' />
				<p>Password:</p>
				<input type='password' id='passwordinput' name='passwordinput' />
				<input type='submit' value='Login' />
				<button type='button' onclick='location.href=\"/forum-tutorial/register.html\";'>Register</button>
			</form>";
	}
	
	function logout() {
		echo nl2br("<p>Hello! ".$_SESSION['username']."!\nwelcome to the forum!</p>
				<form action='/forum-tutorial/logout.php' method='GET'>
				<input type='submit' value='Logout' /></form>");
		
	}

?>
	
</body>

</html>