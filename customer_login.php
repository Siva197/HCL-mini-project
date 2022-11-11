<?php
ob_start();
session_start();
if(isset($_SESSION['customer_login'])){
	
	header('location:customer_profile.php') ;
	
}


 ?>
<html>
<head>
    <title>Login Page</title>
  
    <link rel="stylesheet" type="text/css" href="css/customer_login.css" />

    </head>
    <body>
        
	 <?php include'header.php' ?>
        <div class="login_container">
            <form method="post"> 
      <br>
        <div class="formspace" style="width: 40%; background-color: #CEE5D0;">
		<p class="formspace2" style="background-color: #94B49F;">
    
        <div class="form" style="margin-left: 25%; box-shadow: 1px 1px 5px black;">
        <label class="login">LOGIN</label>
        <div class="input_field">  
        <label class="userdetail">Customer ID</label><br>
        <input class="customer_id" type="text" name="customer_id" required /><br>
        <label class="userdetail">Password</label><br>
        <input class="password" type="password" name="password" required/><br>
        <input class="login-btn" type="submit" name="login-btn" style="margin-top: 15%;
        box-shadow: 1px 1px 5px black; background-color: #94B49F; color: black; border: none; 
        font-size: 18;" value="LOGIN"/><br>
        <a href="cust_forgetpass.php" class="help"><label class="label_help" style="color: black;" >FORGET PASSWORD ?</label></a>
            <img class="userloginimg" src="img/home-logo-hi.png" height="90px" width="90px">
        </div>
                </div>
							</div>  </div>
            </form>
        <br>
        
        <?php include 'footer.php' ?>
    </body>
</html> 

<?php include 'customer_login_process.php'?>

