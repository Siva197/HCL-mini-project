<?php ob_start() ?>

<html>
<head>
    <title>Accont Creation Form</title>
    <link rel="stylesheet" type="text/css" href="css/customer_reg_form.css"/>
		<style>
			.form-element{
				outline: none;
			}
		</style>
    
	<?php include'header.php';  ?>
    </head>
    <body>
    <div class="container_regfrm_container_parent">
	<h3 style="background-color: #CEE5D0; border: none; border-radius: 5px; color: black;">Account Opening Form</h3>
	<div class="container_regfrm_container_parent_child"  style="background-color: #94B49F; border: none; border-radius: 5px;">
		<form method="post">
				 <input type="text" class="form-element" name="name" placeholder="Name*" required />
				 <select name ="gender" style="outline: none;" required >
					  <option class="default" value="" disabled selected>Gender</option>
					  <option value="Male" required >Male</option>
					  <option value="Female">Female</option>
					  <option value="Others">Others</option>
				</select>
				 <input type="text" name="mobile" class="form-element" placeholder="Mobile no.*" required />
				 <input type="text" name="email" class="form-element" placeholder="Email id*" />
				 <input type="text" name="landline" class="form-element" placeholder="Landline no*" />
				 <input type="text" name="dob" class="form-element" placeholder="Date of Birth*" onfocus="(this.type='date')" required />
				 <input type="text" name="pan_no" class="form-element" placeholder="PAN Number*" required />
				 <input type="text" name="citizenship" class="form-element" placeholder="Aadhaar Number*" required />
				 <input class="address" type="text" style="outline: none;" name="homeaddrs" placeholder="Permanent Home Address*" required  />
				 <input class="address" type="text" style="outline: none;" name="officeaddrs" placeholder="Office Address*" />
				 <input type="text" name="country" placeholder="US" style="outline: none;" value="INDIA" readonly="readonly" />



				 <select name ="state" style="outline: none;" required >
					  <option class="default" value="" disabled selected>State</option>
					  <option value="California">Andhra Pradesh</option>
					  <option value="Texas">karnataka</option>
					  <option value="Florida">kerla</option>
					  <option value="Washington">puducherry</option>
					  <option value="Hawaii">Tamilnadu</option>
					  <option value="Alaska">Telangana</option>
					  <option value="Virginia">Maharastra</option>
					  <option value="Idaho">Odisha</option>
				</select>



				 <select name ="city" style="outline: none;" required >
					  <option class="default" value="" disabled selected>City</option>
					  <option value="Los Angeles">Banglore</option>
					  <option value="San Diego">chennai</option>
					  <option value="Fresno">Hyderbad</option>
					  <option value="Houston">Kochi</option>
					  <option value="Austin">Visakhapatnam</option>
					  <option value="Dallas">Vijayawada</option>
					  <option value="Texas City">Mysore</option>
					  <option value="Miami">Madhurai</option>
					  <option value="Orlando">Coimbatore</option>
					  <option value="Jacksonville">Manglore</option>
					  <option value="Seattle">Ooty</option>
					  <option value="Vancouver">Mumbai</option>
					  <option value="Olympia">Tirupathi</option>
					  <option value="Honolulu">Rajmahendravanam</option>
					  <option value="Hawi">Bhubaneswar</option>
				</select>



				 
				 <input type="text" style="outline: none;" style="outline: none;" name="pin" placeholder="Pin Code*" required />
				 <input type="text" style="outline: none;" name="arealoc" placeholder="Area/Locality*" required />
				 <input type="text" style="outline: none;" name="nominee_name" placeholder="Nominee Name (If any)" />
				 <input type="text" style="outline: none;" name="nominee_ac_no" placeholder="Nominee Account no*"  />
				 
				 <select name ="acctype" style="outline: none;" required >
					  <option class="default" value="" disabled selected>Account Type</option>
					  <option value="Saving">Saving</option>
					  <option value="Current">Current</option>
				</select>
				<input type="submit" name="submit"  style="background-color: #CEE5D0; border: none; box-shadow: 1px 1px 5px black; color: black;" value="Create">
				</form>
         </div>
		 </div>
		 
<?php include'footer.php';?>
    
</body>
</html>


<?php 

if(isset($_POST['submit'])){

	session_start();
	$_SESSION['$cust_acopening'] = TRUE;
	$_SESSION['cust_name']=$_POST['name'];
	$_SESSION['cust_gender']=$_POST['gender'];
	$_SESSION['cust_mobile']=$_POST['mobile'];
	$_SESSION['cust_email']=$_POST['email'];
	$_SESSION['cust_landline']=$_POST['landline'];
	$_SESSION['cust_dob']=$_POST['dob'];
	$_SESSION['cust_pan=']=$_POST['pan_no'];
	$_SESSION['cust_citizenship']=$_POST['citizenship'];
	$_SESSION['cust_homeaddrs']=$_POST['homeaddrs'];
	$_SESSION['cust_officeaddrs']=$_POST['officeaddrs'];
	$_SESSION['cust_country']=$_POST['country'];
	$_SESSION['cust_state']=$_POST['state'];
	$_SESSION['cust_city']=$_POST['city'];
	$_SESSION['cust_pin']=$_POST['pin'];
	$_SESSION['arealoc']=$_POST['arealoc'];
	$_SESSION['nominee_name']=$_POST['nominee_name'];
	$_SESSION['nominee_ac_no']=$_POST['nominee_ac_no'];
	$_SESSION['cust_acctype']=$_POST['acctype'];
	
	header('location:cust_regfrm_confirm.php');
	
	
}

?>