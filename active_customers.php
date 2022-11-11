<html>
<head><title>Active Customers</title>
</head>
<link rel="stylesheet" type="text/css" href="css/active_customers.css"/>
<body>

<?php  

	include 'header.php' ;
	include 'staff_profile_header.php' ;
	include 'db_connect.php';


?>
<div class="active_customers_container" >

<table border ="1px" cellpadding="10">
			   <th style="background-color: #CEE5D0; color: black;">S.no</th>
			   <th style="background-color: #94B49F; color: black;">Name</th>
			   <th style="background-color: #CEE5D0; color: black;">Customer ID</th>
			   <th style="background-color: #94B49F; color: black;">Account No.</th>
			   <th style="background-color: #CEE5D0; color: black;">Mobile No.</th>
			   <th style="background-color: #94B49F; color: black;">Email-ID</th>
			   <th style="background-color: #CEE5D0; color: black;">DOB</th>
			   <th style="background-color: #94B49F; color: black;">Current Balance</th>
			   <th style="background-color: #CEE5D0; color: black;">PAN</th>
			   <th style="background-color: #94B49F; color: black;">Aadhaar</th>
			   <th style="background-color: #CEE5D0; color: black;">Debit Card No.</th>
			   <th style="background-color: #94B49F; color: black;">CVV</th>
			   <th style="background-color: #CEE5D0; color: black;">Last Login</th>
			   <th style="background-color: #94B49F; color: black;">Last Transaction</th>
			   <th style="background-color: #CEE5D0; color: black;">Status</th>


<?php

	
	
	$sql = "SELECT * from bank_customers";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {	   
			  $Sl_no = 1; 
    
		while($row = $result->fetch_assoc()) {
			
		echo '
			<tr>
			<td>'.$Sl_no++.'</td>
			<td>'.$row['Username'].'</td>
			<td>'.$row['Customer_ID'].'</td>
			<td>'.$row['Account_no'].'</td>
			<td>'.$row['Mobile_no'].'</td>
			<td>'.$row['Email_ID'].'</td>
			<td>'.$row['DOB'].'</td>
			<td>$'.$row['Current_Balance'].'</td>
			<td>'.$row['PAN'].'</td>
			<td>'.$row['CITIZENSHIP'].'</td>
			<td>'.$row['Debit_Card_No'].'</td>
			<td>'.$row['CVV'].'</td>
			<td>'.$row['Last_Login'].'</td>
			<td>$'.$row['LastTransaction'].'</td>
			<td>'.$row['Account_Status'].'</td>
			</tr>';
	}
	
	
}

?>

</table>
</div>

<?php include 'footer.php'; ?> 
</body>
</html>




