<html>
<head><title>Pending Customers</title>
</head>
<link rel="stylesheet" type="text/css" href="css/pending_customers.css"/>
<body>

<?php  
	
	include 'header.php' ;
	include 'staff_profile_header.php' ;
	include 'db_connect.php';

?>

<div class="application_search">
<form method="post">
<input type="text" name="application_no" style="border: none; border-radius: 50px; outline: none;" placeholder="Application number" required>
<input type="submit" name="search_application" value="Search" style="border: none; border-radius: 50px; background-color: #CEE5D0; color: black; font-weight: bold;">

</form>
</div>
<div class="pending_customers_container">
<table border="1px" cellpadding="10">
			   <th style="background-color: #94B49F; color: black;">S.no</th>
			   <th style="background-color: #CEE5D0; color: black;">Application No.</th>
			   <th style="background-color: #94B49F; color: black;">Name</th>
			   <th style="background-color: #CEE5D0; color: black;">Gender</th>
			   <th style="background-color: #94B49F; color: black;">Mobile</th>
			   <th style="background-color: #CEE5D0; color: black;">Email-Id</th>
			   <th style="background-color: #94B49F; color: black;">Landline</th>
			   <th style="background-color: #CEE5D0; color: black;">DOB</th>
			   <th style="background-color: #94B49F; color: black;">PAN</th>
			   <th style="background-color: #CEE5D0; color: black;">Aadhaar</th>
			   <th style="background-color: #94B49F; color: black;">Home Address</th>
			   <th style="background-color: #CEE5D0; color: black;">Office Address</th>
			   <th style="background-color: #94B49F; color: black;">Country</th>
			   <th style="background-color: #CEE5D0; color: black;">State</th>
			   <th style="background-color: #94B49F; color: black;">City</th>
			   <th style="background-color: #CEE5D0; color: black;">Pin</th>
			   <th style="background-color: #94B49F; color: black;">Area Loc.</th>
			   <th style="background-color: #CEE5D0; color: black;">Nominee Name</th>
			   <th style="background-color: #94B49F; color: black;">Nominee A/c no</th>
			   <th style="background-color: #CEE5D0; color: black;">Accoount Type</th>
			   <th style="background-color: #94B49F; color: black;">Application Date</th>
<?php

	if(isset($_POST['search_application'])){
		if(empty($_POST['application_no'])){

			echo '<script>alert("Please enter application number")</script>';
		}
		else{   


			$application_no  = $_SESSION['application_no'] = $_POST['application_no'];
			$sql = "SELECT * from pending_accounts Where Application_no = '$application_no' ";
			$result = $conn->query($sql);
			
			if ($result->num_rows > 0) {   
					  $Sl_no = 1; 
			
				while($row = $result->fetch_assoc()) {
					
				echo '
					<tr>
					<td>'.$Sl_no++.'</td>
					<td>'.$row['Application_no'].'</td>
					<td>'.$row['Name'].'</td>
					<td>'.$row['Gender'].'</td>
					<td>'.$row['Mobile_no'].'</td>
					<td>'.$row['Email_id'].'</td>
					<td>'.$row['Landline_no'].'</td>
					<td>'.$row['DOB'].'</td>
					<td>'.$row['PAN'].'</td>
					<td>'.$row['CITIZENSHIP'].'</td>
					<td>'.$row['Home_Addr'].'</td>
					<td>'.$row['Office_Addr'].'</td>
					<td>'.$row['Country'].'</td>
					<td>'.$row['State'].'</td>
					<td>'.$row['City'].'</td>
					<td>'.$row['Pin'].'</td>
					<td>'.$row['Area_Loc'].'</td>
					<td>'.$row['Nominee_name'].'</td>
					<td>'.$row['Nominee_ac_no'].'</td>
					<td>'.$row['Account_type'].'</td>
					<td>'.$row['Application_Date'].'</td>
					</tr>';
			}
			
			
		}
		
		else{
		
			echo '<script>alert("Application not found")</script>';
		}
		 
		}
	}	

?>

</table>
</div>
<form method="post">
<div class="approve">
<input type="submit" style="background-color: #CEE5D0; color: black; border: none; box-shadow: 1px 1px 5px black; cursor: pointer; font-weight: bold;" name="approve_cust" value="Approve">
</div>
</form>

<?php	

include 'account_approve_process.php';


include 'footer.php'; ?> 
</body>
</html>




