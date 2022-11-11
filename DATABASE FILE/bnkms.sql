
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Honey', 696969, 'PENDING');



CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob,
  `Photo_name` varchar(500) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Landline_no` varchar(10) NOT NULL,
  `Home_Addr` varchar(100) NOT NULL,
  `Office_Addr` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pin_code` varchar(255) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `IFSC_Code` varchar(50) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT '0',
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `Debit_Card_No` varchar(50) DEFAULT NULL,
  `Debit_Card_Pin` int(4) DEFAULT NULL,
  `CVV` int(3) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Last_Login` varchar(50) DEFAULT NULL,
  `Ac_Opening_Date` varchar(255) DEFAULT NULL,
  `Account_Status` varchar(10) NOT NULL,
  `Account_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `bank_customers` (`Id`, `Username`, `Password`, `Customer_Photo`, `Photo_name`, `Customer_ID`, `Gender`, `Landline_no`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `City`, `Pin_code`, `Account_no`, `Branch`, `IFSC_Code`, `PAN`, `CITIZENSHIP`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `Debit_Card_No`, `Debit_Card_Pin`, `CVV`, `DOB`, `Area_Loc`, `Nominee_name`, `Nominee_ac_no`, `Last_Login`, `Ac_Opening_Date`, `Account_Status`, `Account_type`) VALUES
(1, 'Lokesh', 'password', NULL, NULL, '1010112', 'Male', '1478545555', 'Navalur', 'OMR ROAD', 'India', 'Delhi', 'Delhi', '74100', '1011071010112', 'Demo Branch', '1011', '1478569000', '178965412300', 3650.00, 0, '7415896650', 'lokesh@gmail.com', '421351746137', 6897, NULL, '1995-02-15', 'Demo', 'none', 'none', '27/07/21 02:45:15 PM', '22/07/21 10:07:46 PM', 'ACTIVE', 'Saving'),
(2, 'Mohith', 'password', NULL, NULL, '1011046', 'Male', '2145896666', 'Navalur', 'OMR ROAD', 'India', 'Andhra Pradesh', 'Tirupati', '88660', '1011801011046', 'Demo Branch ', '1011', '24580001', '145896587450', 7090.00, 0, '7850001250', 'Mohith@gmail.com', '421360993922', 2957, NULL, '1990-03-15', 'CLF', 'none', 'none', '27/07/22 02:41:02 PM', '26/07/21 10:34:49 PM', 'ACTIVE', 'Saving'),
(3, 'Srikanth', 'password', NULL, NULL, '1011426', 'Male', '4520001250', 'Komabedu', 'Guindy', 'India', 'Karnataka', 'Bangalore', '99660', '1011411011426', 'Demo Branch ', '1011', '14701400', '256900000012', 1962.00, 0, '7012500010', 'Srikanth@gmail.com', '421317135335', 2587, NULL, '1995-09-17', 'CLF', 'none', 'none', '26/09/22 11:56:16 PM', '26/07/21 11:24:10 PM', 'ACTIVE', 'Saving'),
(6, 'Premika', 'password', NULL, NULL, '1011742', 'Female', '2140002150', 'sapathagirinagar', 'KT ROAD', 'India', 'Tamilnadu', 'Chennai', '220069', '1011751011742', 'Demo Branch ', '1011', '30140250', '201477775010', 111.00, 0, '7014569690', 'Premika@gmail.com', '421353616626', 7345, NULL, '1990-10-10', 'WHT', 'none', 'none', '27/07/21 03:07:21 PM', '27/07/21 02:55:25 PM', 'ACTIVE', 'Saving'),
(4, 'Nithin Kumar', 'password', NULL, NULL, '1011439', 'Male', '2145890000', 'Navalur', 'OMR ROAD', 'India', 'Puducherry', 'Puducherry', '12126', '1011951011439', 'Demo Branch ', '1011', '12350000', '102589000012', 5274.00, 0, '7025690001', 'Nithin@gmail.com', '421393986422', 4483, NULL, '1992-01-01', 'TXC', 'none', 'none', '27/07/21 03:52:29 PM', '26/07/21 11:52:58 PM', 'ACTIVE', 'Saving'),
(5, 'Pramodhini', 'password', NULL, NULL, '1011768', 'Female', '2585200012', 'Reddys colony', 'SBI Road', 'India', 'Andhra pradesh', 'Madanapalle', '66990', '1011921011768', 'Demo Branch ', '1011', '01474100', '301025800012', 215.00, 0, '7016002001', 'Siva@gmail.com', '421323539393', 2473, NULL, '1996-09-25', 'FLR', 'none', 'none', '27/07/21 03:51:34 PM', '27/07/21 10:44:50 AM', 'ACTIVE', 'Saving'),
(7, 'Phanish', 'password', NULL, NULL, '1011722', 'Others', '2580000021', 'Navalur', 'OMR Road', 'India', 'Andhra Pradesh', 'Tirupati', '96690', '1011591011722', 'Demo Branch ', '1011', '31450002', '102000002500', 210.00, 0, '7014780000', 'Phanish@gmail.com', '421395174682', 4924, NULL, '2019-02-20', 'CLF', 'none', 'none', '27/07/22 03:50:56 PM', '27/07/21 03:20:32 PM', 'ACTIVE', 'Saving'),
(8, 'Sai krishna', 'password', NULL, NULL, '1011950', 'Male', '2147850010', 'Navalur', 'OMR Road', 'India', 'Tamilnadu', 'chennai', '66001', '1011801011950', 'Demo Branch ', '1011', '08996001', '120000256980', 5738.00, 0, '7410000010', 'Krishna@gmail.com', '421319983246', 9454, NULL, '1992-12-12', 'FLR', 'none', 'none', '27/07/21 03:52:02 PM', '27/07/21 03:42:57 PM', 'ACTIVE', 'Saving');



CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `CITIZENSHIP`, `PAN`, `Home_addr`, `Last_login`) VALUES
(1, 'SivaSai', '210001', 'password', '7412225696', 'siva@gmail.com', 'Male', 'Revenue', '10121995', '379145632000', '14569855', 'MAdanapalle', '27/07/21 03:53:18 PM');



CREATE TABLE `beneficiary_1010112` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;



INSERT INTO `beneficiary_1010112` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(2, 'Mohith', '1011801011046', '1011', 'Saving', 'ACTIVE', '26/07/22 11:02:55 PM'),
(3, 'Nithin Kumar', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/22 02:45:39 PM');



CREATE TABLE `beneficiary_1011046` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



INSERT INTO `beneficiary_1011046` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Nithin Kumar', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/22 10:32:58 AM');


CREATE TABLE `beneficiary_1011426` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `beneficiary_1011426` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Nithin Kumar', '1011951011439', '1011', 'Saving', 'ACTIVE', '26/07/21 11:56:42 PM');


CREATE TABLE `beneficiary_1011439` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `beneficiary_1011439` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Pramodhini', '1011921011768', '1011', 'Saving', 'ACTIVE', '27/07/21 02:32:43 PM'),
(2, 'Premika', '1011751011742', '1011', 'Saving', 'ACTIVE', '27/07/21 02:59:41 PM'),
(3, 'Srikanth', '1011411011426', '1011', 'Saving', 'ACTIVE', '27/07/21 03:12:14 PM'),
(4, 'Phanish', '1011591011722', '1011', 'Saving', 'ACTIVE', '27/07/21 03:23:54 PM');



CREATE TABLE `beneficiary_1011722` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `beneficiary_1011742` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `beneficiary_1011742` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Nithin Kumar', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/21 03:02:08 PM');



CREATE TABLE `beneficiary_1011768` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `beneficiary_1011950` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `beneficiary_1011950` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Pramodhini', '1011921011768', '1011', 'Saving', 'ACTIVE', '27/07/21 03:48:44 PM'),
(2, 'Phanish', '1011591011722', '1011', 'Saving', 'ACTIVE', '27/07/21 03:50:00 PM');



CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Venkat', 960010101, 'PENDING');



CREATE TABLE `passbook_1010112` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;


INSERT INTO `passbook_1010112` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '589306552', '26/12/20 02:55:43 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '583402470', '26/12/20 03:01:35 PM', 'Cash Deposit/583402470572', '55000', '0', '55000', 'Cash Deposit'),
(5, '841496557', '26/07/21 11:08:04 PM', 'Mohith/1011801011046/1011', '0', '250', '4750', 'Billings'),
(6, '491178166', '27/07/21 02:46:16 PM', 'Nithin Kumar/1011951011439/1011', '0', '1100', '3650', 'Personal');



CREATE TABLE `passbook_1011046` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



INSERT INTO `passbook_1011046` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '117402234543', '26/07/21 10:34:49 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '406194305816', '26/07/21 10:50:56 PM', 'Mohith/406194305816', '7500', '0', '7500', 'Cash Deposit'),
(3, '841496557790', '26/07/21 11:08:04 PM', 'Lokesh/101107741010112/1011', '250', '0', '7750', 'Billings'),
(4, '429360631', '27/07/21 10:35:20 AM', 'Nithin Kumar/1011951011439/1011', '0', '660', '7090', 'Sales');


CREATE TABLE `passbook_1011426` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passbook_1011426` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '206288618472', '26/07/21 11:24:10 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '807477284', '26/07/21 11:32:55 PM', 'Mohith/807477284', '2100', '0', '2100', 'Cash Deposit'),
(3, '983840333', '26/07/21 11:57:18 PM', 'Nithin Kumar/1011951011439/1011', '0', '175', '1925', 'Rst Bills'),
(4, '200212796', '27/07/21 03:14:13 PM', 'Nithin Kumar/1011951011439/1011', '37', '0', '1962', 'domain and stuff');



CREATE TABLE `passbook_1011439` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passbook_1011439` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '975444354', '26/07/21 11:52:58 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '983840333', '26/07/21 11:57:18 PM', 'Srikanth/1011411011426/1011', '175', '0', '175', 'Rst Bills'),
(3, '429360631', '27/07/21 10:35:20 AM', 'Mohith/1011801011046/1011', '660', '0', '835', 'Sales'),
(4, '613135262', '27/07/21 02:33:10 PM', 'Pramodhini/1011921011768/1011', '0', '50', '785', 'Rbills'),
(5, '491178166', '27/07/21 02:46:16 PM', 'Lokesh/1011071010112/1011', '1100', '0', '1885', 'Personal'),
(6, '384183921', '27/07/21 03:00:04 PM', 'Premika/1011751011742/1011', '0', '113', '1772', 'sales'),
(7, '123457098', '27/07/21 03:07:47 PM', 'Premika/1011751011742/1011', '2', '0', '1774', 'cashback'),
(8, '200212796', '27/07/21 03:14:13 PM', 'Srikanth/1011411011426/1011', '0', '37', '1737', 'domain and stuff'),
(9, '238728498', '27/07/21 03:15:46 PM', 'Mohith/238728498', '3650', '0', '5387', 'Cash Deposit'),
(10, '350533416', '27/07/21 03:25:05 PM', 'Phanish/1011591011722/1011', '0', '113', '5274', 'Monthly Internet Bill Payment');


CREATE TABLE `passbook_1011722` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passbook_1011722` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '146191935', '27/07/21 03:20:32 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '350533416', '27/07/21 03:25:05 PM', 'Nithin Kumar/1011951011439/1011', '113', '0', '113', 'Monthly Internet Bill Payment'),
(3, '265493438', '27/07/21 03:50:25 PM', 'Sai krishna/1011801011950/1011', '97', '0', '210', 'Internet Bills Payment');



CREATE TABLE `passbook_1011742` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passbook_1011742` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '877580638', '27/07/21 02:55:25 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '384183921', '27/07/21 03:00:04 PM', 'Nithin Kumar/1011951011439/1011', '113', '0', '113', 'sales'),
(3, '123457098', '27/07/21 03:07:47 PM', 'Nithin Kumar/1011951011439/1011', '0', '2', '111', 'cashback');



CREATE TABLE `passbook_1011768` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passbook_1011768` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '492641662', '27/07/21 10:44:50 AM', 'Account Opening', '0', '0', '0', NULL),
(2, '613135262', '27/07/21 02:33:10 PM', 'Nithin Kumar/1011951011439/1011', '50', '0', '50', 'Rbills'),
(3, '693782042', '27/07/21 03:49:15 PM', 'Sai krishna/1011801011950/1011', '165', '0', '215', 'none');



CREATE TABLE `passbook_1011950` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passbook_1011950` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '470459348', '27/07/21 03:42:57 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '618213240', '27/07/21 03:47:09 PM', 'Lokesh/618213240', '6000', '0', '6000', 'Cash Deposit'),
(3, '693782042', '27/07/21 03:49:15 PM', 'Pramodhini/1011921011768/1011', '0', '165', '5835', 'none'),
(4, '265493438', '27/07/21 03:50:25 PM', 'Phanish/1011591011722/1011', '0', '97', '5738', 'Internet Bills Payment');



CREATE TABLE `pending_accounts` (
  `Application_no` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nil',
  `Landline_no` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Home_Addr` varchar(100) DEFAULT NULL,
  `Office_Addr` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Account_type` varchar(50) DEFAULT NULL,
  `Application_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(1, 'mohith', '1990-05-05', 'married', 'revenue', '1999-11-11', 'sapathagiri nagar', '7854444444', 'mohith@gmail.com', 'qwerty', 'M', '2019-01-11 10:29:48'),
(2, 'Lokesh', '1998-08-21', 'unmarried', 'revenue', '2013-08-03', 'Navalur', '7410000020', 'lokesh@gmail.com', 'qweer', 'M', '2019-01-10 21:22:59'),
(4, 'Honey\n', '1989-05-31', 'married', 'revenue', '2015-01-04', 'sapathagiri nagar', '8542221010', 'Honey@gmail.com', '6969', 'M', '2022-03-04 05:11:00'),
(5, 'Nithin', '1980-04-21', 'married', 'revenue', '1991-01-01', 'Navalur', '7850001256', 'Nithin@gmail.com', '9600pass', 'M', '2021-03-01 00:00:00');


ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);


ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);


ALTER TABLE `beneficiary_1010112`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011046`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011426`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011439`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011722`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011742`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011768`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `beneficiary_1011950`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1010112`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011046`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011426`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011439`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011722`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011742`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011768`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `passbook_1011950`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`Application_no`);


ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `beneficiary_1010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `beneficiary_1011046`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `beneficiary_1011426`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `beneficiary_1011439`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `beneficiary_1011722`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `beneficiary_1011742`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `beneficiary_1011768`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `beneficiary_1011950`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `passbook_1010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `passbook_1011046`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `passbook_1011426`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `passbook_1011439`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `passbook_1011722`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `passbook_1011742`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `passbook_1011768`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `passbook_1011950`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
