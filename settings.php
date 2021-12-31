<?php
session_start();
if(isset($_SESSION['Username'])){
echo '';
}else{
    echo'<script>alert("Error: You Can\'t Browse This Page Directly");
              window.location.assign("index.html");
              </script>';
}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title> Jo3an </title>
		<link href="https://fonts.googleapis.com/css?family=Allura" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">
		<link rel="stylesheet" href="css/newhome.css">
	</head>
    <body>
        <header id="go_to_top">
            <div class="gradient">
                <div class="container">
					<h2 id="logo"><a href="home.php"> Jo3an </a></h2>
					<img id="open_menu" class="menu_icon show" src="./img/menu.png" >
					<img id="close_menu" class="menu_icon" src="./img/x.png" >
					<nav>
						<a href="home.php#go_to_top" class="menu_link active"> Welcome </a>
						<a href="home.php#about" class="menu_link"> About </a>
						<a href="home.php#menu" class="menu_link"> Menu </a>
						<a href="home.php#info" class="menu_link"> Contact </a>
                        <div class="dropdown">
                            <span>profile</span>
                            <div class="dropdown-content">
                                <a href="settings.php">Settings</a>
                                <a href="log_out.php">Logout</a>
                            </div>
                        </div>
					</nav>
				</div>
            </div>
		</header>
        
        <div id="formContainer">
            <form action="_GET" id="settingsForm">
                <label for="username">Username</label>
                <input type="text" id="username" name="username"><br>
                <br>
                <label for="city">City</label>
                <input type="text" id="city" name="city"><br>
                <br>
                <label for="sName">Street Name</label>
                <input type="text" id="sName" name="sName"><br>
                <br>
                <label for="bNum">building Number</label>
                <input type="text" id="bNum" name="bNum"><br>
                <br>
                <label for="email">Email</label>
                <input type="text" id="email" name="email"><br>
                <br>
                <label for="pWord">Password</label>
                <input type="password" id="pWord" name="pWord"><br>
                <br>
                <input type="submit" value="Save" name="btn" id="sButn" class="in"/>
            </form>
        </div>    
    </body>
</html>