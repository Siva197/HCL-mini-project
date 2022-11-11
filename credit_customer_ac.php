<html>
<head><title>Staff Home</title>
<link rel="stylesheet" type="text/css" href="css/credit_customer_ac.css" />
</head>
<body>
<?php
	include 'header.php' ;
    include 'staff_profile_header.php' ;?>
    <div class="cust_credit_container" style="background-color: #94B49F; color: black; border: none; border-radius: 10px;">
	<form method="post">
    <input class="customer" type="text" name="customer_account_no" style="outline: none; border: none; border-radius: 5px;" placeholder="Customer A/c No" required><br>
    <input class="customer" type="text" name="credit_amount" style="outline: none; border: none; border-radius: 5px;" placeholder="Amount" required><br>
    <input class="customer" style="background-color: #CEE5D0; border: none; border-radius: 5px; width: 20%; color: black; font-weight: bold; box-shadow: 1px 1px 5px black;" type="submit" name="credit_btn" value="Credit" >
    </form><br>
</div>
<?php include'footer.php'; ?>
</body>
</html>


<?php 
if(isset($_POST['credit_btn'])){

    $cust_ac_no = $_POST['customer_account_no'];
    $credit_amount = $_POST['credit_amount'];

	if(!is_numeric($_POST['credit_amount'])){

		echo '<script>alert("Invalid amount")</script>';
	}
	
	else{ 
    
	include 'db_connect.php';

	
	$sql = "SELECT * FROM bank_customers WHERE Account_no = $cust_ac_no ";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
    $row = $result->fetch_assoc();
	$customer_ac_no = $row['Account_no'];
	$customer_id = $row['Customer_ID'];
	$customer_name = $row['Username'];
	$customer_ifsc= $row['IFSC_Code'];
	$customer_mob = $row['Mobile_no'];
	$customer_netbal = $row['Current_Balance'] + $credit_amount;
	$customer_passbk = "passbook_".$customer_id;
	

    
    	
		$transaction_id = mt_rand(100,999).mt_rand(1000,9999).mt_rand(10,99);
		
		

		date_default_timezone_set('Asia/Kolkata'); 
		$transaction_date = date("d/m/y h:i:s A");
		
		
		$remark = "Cash Deposit";
			
		
        $Transac_description = "Cash Deposit/".$transaction_id;
		
		date_default_timezone_set('Asia/Kolkata'); 
		$date_time = date("d/m/y h:i:s A");


        
        $conn->autocommit(FALSE);
	
	
	$sql1 = "Update bank_customers SET Current_Balance = '$customer_netbal' WHERE bank_customers.Account_no = '$customer_ac_no '";
		
	
	$sql2 = "INSERT INTO $customer_passbk (Transaction_id,Transaction_date,Description,Cr_amount,Dr_amount,Net_Balance,Remark)
	VALUES ('$transaction_id','$transaction_date','$Transac_description','$credit_amount','0','$customer_netbal','$remark')";
		
  
	if($conn->query($sql1) == TRUE && $conn->query($sql2) == TRUE ){
				
			$conn->commit();
		


	
			echo '<script>alert("Amount credited Successfully to customer account")</script>';
							
		}	

		else{
			
			
			echo '<script>alert("Transaction failed\n\nReason:\n\n'.$conn->error.'")</script>';
			$conn->rollback();
		
			
        }
    }

    else{

        echo '<script>alert("Incorrect Account Number")</script>';
    }

	}
	

			
	}
	
?>