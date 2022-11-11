<?php
session_start();
if (isset($_SESSION['staff_login'])) {

    header('location:staff_profile.php');

}

?>
<html>
<head>
    <title>Staff Page</title>

    <link rel="stylesheet" type="text/css" href="css/staff_login.css" />

    </head>
    <body>
	 <?php include 'header.php'?>
        <div class="staff_login_container ">
            <form method="post">
      <br>
        <div class="formspace" style="width:50%; background-color: #94B49F ;">
		<p class="formspace2" style="background-color: #CEE5D0
;">
        <div class="form" style="margin-left:230px">
        <label class="login">Staff</label>
        <div class="input_field">
        <label class="userdetail" style="color: black;">Staff ID</label><br>
        <input class="customer_id" style="outline:none;
" type="text" name="staff_id" required /><br>
        <label class="userdetail" style="color:black;
">Password</label><br>
        <input class="password" style="outline: none;" type="password" name="password" required/><br>
        <input class="login-btn" type="submit" style="background-color: #CEE5D0
; border: none; border-radius: 20px; width: 40%; margin-top: 16%; margin-left: 29%; box-shadow: 1px 1px 5px black; color: black;" name="staff_login-btn" style="margin-top: 50px" value="LOGIN"/><br>
        <img class="userloginimg" src="img/home-logo-hi.png" height="90px" width="90px">
        </div>
                </div>
</div>  </div>
            </form>
        <br>

        <?php include 'footer.php'?>
    </body>
</html>

<?php include 'staff_login_process.php'?>

