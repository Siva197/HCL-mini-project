
<?php 
session_start();
if(!isset($_SESSION['$cust_acopening'])){
	
	header('location:customer_reg_form.php');
	
}

?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/cust_regfrm_confirm.css" />

<?php include 'header.php' ?>
<title>Confirm</title>
</head>
<body>
<div class="cust_regfrm_cnfrm_container">
<div class="cnfrm_info">
    <span><?php echo "NAME : ".$_SESSION['cust_name']."<br>"; ?> </span>
   <span><?php echo "GENDER : ".$_SESSION['cust_gender']."<br>"; ?> </span>
	 <span><?php echo "MOBILE NO : ".$_SESSION['cust_mobile']."<br>"; ?> </span>
	 <span><?php echo "EMAIL ID : ".$_SESSION['cust_email']."<br>"; ?> </span>
	 <span><?php echo "LANDLINE : ".$_SESSION['cust_landline']."<br>"; ?> </span>
	 <span><?php echo "DOB : ".$_SESSION['cust_dob']."<br>"; ?> </span>
	 <span><?php echo "PAN No : ".$_SESSION['cust_pan=']."<br>"; ?>  </span>
	 <span><?php echo "AADHAAR No : ".$_SESSION['cust_citizenship']."<br>"; ?> </span>
	 <span><?php echo "HOME ADDRESS : ".$_SESSION['cust_homeaddrs']."<br>"; ?>  </span>
	 <span><?php echo "OFFICE ADDRESS : ".$_SESSION['cust_officeaddrs']."<br>"; ?> </span>
	 <span><?php echo "COUNTRY : ".$_SESSION['cust_country']."<br>"; ?> </span>
	 <span><?php echo "STATE : ".$_SESSION['cust_state']."<br>"; ?> </span>
	 <span><?php echo "CITY : ".$_SESSION['cust_city']."<br>"; ?> </span>
	 <span><?php echo "PINCODE : ".$_SESSION['cust_pin']."<br>"; ?> </span>
	 <span><?php echo "AREA/LOCALITY : ".$_SESSION['arealoc']."<br>"; ?> </span>
	 <span><?php echo "NOMINEE NAME : ".$_SESSION['nominee_name']."<br>"; ?> </span>
	 <span><?php echo "NOMINEE ACCOUNT NO : ".$_SESSION['nominee_ac_no']."<br>"; ?> </span>
	 <span><?php echo "ACCOUNT TYPE : ".$_SESSION['cust_acctype']."<br>"; ?> </span><br>
	 <form method="post">
	 <div class="cnfrm-btn">
	 <div class="btn_innerdiv">
	 <input class="cnfrm-submit-btn" style="background-color: #CEE5D0; color: black; border: none; box-shadow: 1px 1px 5px black; cursor: pointer; font-weight: bold;" type="submit" name="cnfrm-submit" value="Confirm" />
	 <input class="cnfrm-submit-btn" style="background-color: #CEE5D0; color: black; border: none; box-shadow: 1px 1px 5px black; cursor: pointer; font-weight: bold;" type="button" value="Go back" onclick="history.back()"/>
	 </div>
	 </div>
	 </form>
 </div>	 
</div>
</body>
<?php include 'footer.php' ?>
</html>

<?php

if(isset($_POST['cnfrm-submit'])){ 
	
	include 'db_connect.php';
	$application_no = rand(1000,9999).mt_rand(10000,99999);
	$name=$_SESSION['cust_name'];
	$gender=$_SESSION['cust_gender'];
	$mobile=$_SESSION['cust_mobile'];
	$email=$_SESSION['cust_email'];
	$landline=$_SESSION['cust_landline'];
	$dob=$_SESSION['cust_dob'];
	$pan=$_SESSION['cust_pan='];
	$citizenship=$_SESSION['cust_citizenship'];
	$homeaddrs=$_SESSION['cust_homeaddrs'];
	$officeaddr=$_SESSION['cust_officeaddrs'];
	$country=$_SESSION['cust_country'];
	$state=$_SESSION['cust_state'];
	$city=$_SESSION['cust_city'];
	$pin=$_SESSION['cust_pin'];
	$arealoc=$_SESSION['arealoc'];
	$nominee_name =$_SESSION['nominee_name'];
	$nominee_ac_no =$_SESSION['nominee_ac_no'];
	$acctype=$_SESSION['cust_acctype'];

	
	date_default_timezone_set('Asia/Kolkata'); 
	$application_dt = date("d/m/y h:i:s A");
	
	$sql="INSERT into pending_accounts (Application_no, 
	Name,
	Gender,
	Mobile_no,
	Email_id,
	Landline_no,
	DOB,
	PAN,
	CITIZENSHIP,
	Home_Addr,
	Office_Addr,
	Country,
	State,
	City,
	Pin,
	Area_Loc,
	Nominee_name,
	Nominee_ac_no,
	Account_type,
	Application_Date)

	VALUES
	('$application_no',
	'$name',
	'$gender',
	'$mobile',
	'$email',
	'$landline',
	'$dob',
	'$pan',
	'$citizenship',
	'$homeaddrs',
	'$officeaddr',
	'$country',
	'$state',
	'$city',
	'$pin',
	'$arealoc',
	'$nominee_name',
	'$nominee_ac_no',
	'$acctype',
	'$application_dt')" ;

	if($conn->query($sql) == true){

	
	
	echo  '<script>alert("Application submitted successfully\n\nApplication number : '.$application_no.'\n\nPlease visit bank with application number for account approval\n\nHint: From staff login, approve application")
			location="index.php"
			</script>';
					
																						
			}
			
			else
			  
				{
				
					echo $sql;
			   
			   }

			}
	?>
	
