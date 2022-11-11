<html>
<title>Online Banking System</title>
<head>
   <link rel="stylesheet" type="text/css" href="css/index.css">
   <link rel="shortcut icon" href="img/chase.jpg">
   <script src="https://kit.fontawesome.com/fb15705674.js" crossorigin="anonymous"></script>
   <style>
    .open{
         box-shadow: 1px 1px 5px black;
         border: none;
         border-radius: 100px;
         background-color: #98A8F8;
         color: black;
    }
   </style>
</head>
 
<body>
<?php include'header.php'?>
<div class="index_container">
    <div class="slider">
    <div class="slideimg">
        <img src="img/Indian-Banking-Sector-Basic-Terminologies.jpg">
        <img src="img/istockphoto-962095876-612x612.jpg">
        <img src="img/Indian-Banking-Sector-Basic-Terminologies.jpg">
        <img src="img/istockphoto-962095876-612x612.jpg">
        <img src="img/Indian-Banking-Sector-Basic-Terminologies.jpg">
        </div>
    </div><br>
<div class="news_events" style="background-color: #CEE5D0;
    border-radius: 10px;">
    <h4> Updates </h4><br>
        <ul>
            <p style="color: black;">Apply for credit card and get 3000 rupees amazon gift Voucher.
 </p><br>
<p style="color: black;">
    Register for online banking system after creating the Bank account.
</p>
            <br>
        </ul>
    </div>
    

    <div class="online_services" style="background-color: #CEE5D0;
    border-radius: 10px;">
        <h4 >Services</h4>
        <ul>
            <a href="customer_reg_form.php"><li class="open" style="background-color: #94B49F;
            ">Open Account</li></a>
            <a href="debit_card_form.php" ><li class="open" style="background-color: #94B49F;">Apply Debit Card</li></a><br>
            <a href="#" id="ebanking" ><li class="open" style="background-color: #94B49F;"><div class="ebanking" style="color: black;">Internet Banking
                <div class = "ebanking_options" style="color: black;" >
                <ul>
                    <a href="customer_login.php"><li class="open" style="background-color: #94B49F;">Login </li></a>
                    <a href="ebanking_reg_form.php"><li class="open" style="background-color: #94B49F;">Register</li></a>
                </ul>
            </div>
        </div>
    </li></a>
            <a href="fund_transfer.php"><li class="open" style="background-color: #94B49F;">Fund Transfer</li></a><br>
        </ul>
   
</div>

        <div id="aboutus" style="background-color: #CEE5D0;
    border-radius: 10px;" class="about"><span>About Us</span><br><br>
        <p style="color: black;">Public Bank is one of India’s leading private banks and was among the first to receive approval from the Reserve Bank of India (RBI) to set up a private sector bank in 1994.
Today, Public Bank has a banking network of 2000 branches and 5000 ATM's.
</p></div>
    
    <div class="disclaimer" style="background-color: #CEE5D0;
    border-radius: 10px;">
    <span>Disclaimer</spasn><br><br>
        <p style="color: black;">Our bank does not ask for the details of your account/PIN/password. Therefore any one pretending to be asking you for information from the bank/technical team may be fraudulent entities, so please beware.</p>
        <p style="color: black;">Change your password regularly</p>
        <p style="color: black;">Keep checking your savings account regularly</p>
    </div>


    </div>
    
<?php include 'footer.php';?>
</body>

</html>