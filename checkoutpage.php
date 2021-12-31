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
<html>
    <head>
        
        <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title> Jo3an </title>
		<link href="https://fonts.googleapis.com/css?family=Allura" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">
    
        
        <link rel="stylesheet" href="css/burgersStyle.css">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">

       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
        
            
     
    </head>
    <body>
        <header id="go_to_top">
			<div class="gradient">
				<div class="container">
					<h2 id="logo"><a href="home.php"> Jo3an </a></h2>
					<img id="open_menu" class="menu_icon show" src="./img/menu.png" >
					<img id="close_menu" class="menu_icon" src="./img/x.png" >
					<nav>
						<a href="home.php"> Welcome </a>
						<a href="home.php" > About </a>
						<a href="menu.php" class="active"> Menu </a>
						<a href="#info" > Contact </a>
                        <a class="cart" href="cart.php"> <i class="fas fa-shopping-cart"></i><?php

                        if (isset($_SESSION['cart'])){
                            $count = count($_SESSION['cart']);
                            echo "<span id=\"cart_count\">$count</span>";
                        }else{
                            echo "<span id=\"cart_count\">0</span>";
                        }

                        ?></a> 
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
        <form method="post" action="checkout.php">
            
        <div class="orderform">
                    <input type="text" placeholder="Username" id="username" name="Username" class="in" required /><br>
                    <input type="text" name="address" placeholder="address" id="addr"  class="in" required /><br>
                    
                    <input type="build" placeholder="Build No" id="cPassword" name="build" class="in" required /><br>
            <input  type="text" placeholder="Phone Number" id="phone" name="phone" class="in" required /><br>
            <button type="submit" name="checkout" class="btn3" >checkout</button>
                </div>
        
        </form>
        
        <script src="homescript.js"></script>
    </body>
</html>