-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 06:50 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youth_missionary`
--

-- --------------------------------------------------------

--
-- Table structure for table `acct_master`
--

CREATE TABLE `acct_master` (
  `acc_code` varchar(8) NOT NULL,
  `acc_desc` varchar(100) NOT NULL,
  `acc_type` varchar(1) NOT NULL,
  `main_ac` varchar(6) NOT NULL,
  `purpose` varchar(2) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acct_tran`
--

CREATE TABLE `acct_tran` (
  `tran_no` varchar(8) NOT NULL,
  `tran_date` datetime NOT NULL,
  `tran_no_sub` varchar(2) NOT NULL,
  `dr_ac` varchar(6) NOT NULL,
  `dr_amt` decimal(18,0) NOT NULL,
  `dr_whom` varchar(8) NOT NULL,
  `dr_dist_cd` varchar(10) NOT NULL,
  `dr_office_cd` varchar(10) NOT NULL,
  `dr_admn_area` varchar(15) NOT NULL,
  `cr_ac` varchar(6) NOT NULL,
  `cr_amt` decimal(18,0) NOT NULL,
  `cr_whom` varchar(8) NOT NULL,
  `for_month` char(2) NOT NULL,
  `for_year` char(4) NOT NULL,
  `cr_dist_cd` varchar(10) NOT NULL,
  `cr_office_cd` varchar(10) NOT NULL,
  `cr_admn_area` varchar(15) NOT NULL,
  `pledge` varchar(3) NOT NULL,
  `for_field` varchar(4) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `bill_rpt_no` varchar(15) NOT NULL,
  `rpt_adv_no` char(6) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `ent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ac_op_bal`
--

CREATE TABLE `ac_op_bal` (
  `cl_date` datetime NOT NULL,
  `acc_code` varchar(8) NOT NULL,
  `dr_cr` varchar(1) NOT NULL,
  `cl_bal` decimal(15,2) NOT NULL,
  `ind_for` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admnarea`
--

CREATE TABLE `admnarea` (
  `admn_area` varchar(9) NOT NULL,
  `Description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_grp_master`
--

CREATE TABLE `blood_grp_master` (
  `Blood_grp_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `Country_cd` varchar(5) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `creditor`
--

CREATE TABLE `creditor` (
  `cr_code` varchar(6) NOT NULL,
  `cr_title` varchar(8) DEFAULT NULL,
  `cr_name` varchar(60) DEFAULT NULL,
  `add_1` varchar(50) NOT NULL,
  `add_2` varchar(50) NOT NULL,
  `add_3` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `mobile1` varchar(25) NOT NULL,
  `mobile2` varchar(25) NOT NULL,
  `district_cd` varchar(10) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency_master`
--

CREATE TABLE `currency_master` (
  `Currency_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district_master`
--

CREATE TABLE `district_master` (
  `district_cd` varchar(5) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `State_cd` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language_master`
--

CREATE TABLE `language_master` (
  `Lang_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `life_sponser`
--

CREATE TABLE `life_sponser` (
  `life_spon_id` int(11) NOT NULL,
  `member_no` varchar(10) NOT NULL,
  `sponser_reason` char(1) NOT NULL,
  `title` varchar(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `relation` char(3) NOT NULL,
  `cele_date` datetime NOT NULL,
  `remark` varchar(50) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_ac_master`
--

CREATE TABLE `main_ac_master` (
  `main_ac` varchar(6) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `acc_type` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_no` varchar(10) NOT NULL,
  `title` varchar(6) NOT NULL,
  `name` varchar(40) NOT NULL,
  `add_1` varchar(40) NOT NULL,
  `add_2` varchar(40) NOT NULL,
  `add_3` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `spon_grp_no` varchar(8) NOT NULL,
  `hundi_no` varchar(8) NOT NULL,
  `district_cd` varchar(5) NOT NULL,
  `Office_cd` varchar(5) NOT NULL,
  `admn_area` varchar(15) NOT NULL,
  `dob` datetime NOT NULL,
  `e_mail1` varchar(25) NOT NULL,
  `e_mail2` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `mobile_1` varchar(15) NOT NULL,
  `mobile_2` varchar(15) NOT NULL,
  `profession_cd` varchar(3) NOT NULL,
  `qual_cd` varchar(3) NOT NULL,
  `subscription` decimal(18,2) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_responsibility`
--

CREATE TABLE `member_responsibility` (
  `member_no` varchar(10) NOT NULL,
  `resp_cd` char(3) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_spon_type`
--

CREATE TABLE `member_spon_type` (
  `member_no` varchar(10) DEFAULT NULL,
  `spon_type` varchar(3) DEFAULT NULL,
  `spon_amount` decimal(18,2) NOT NULL,
  `spon_person` varchar(50) NOT NULL,
  `spon_person_tit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mem_mag_mast`
--

CREATE TABLE `mem_mag_mast` (
  `id_no` decimal(18,0) NOT NULL,
  `member_no` varchar(10) NOT NULL,
  `lang_cd` varchar(3) NOT NULL,
  `no_of_mag` decimal(3,0) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `mag_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office_field_cd`
--

CREATE TABLE `office_field_cd` (
  `office_cd` varchar(8) NOT NULL,
  `name` varchar(60) NOT NULL,
  `add_1` varchar(40) NOT NULL,
  `add_2` varchar(40) NOT NULL,
  `add_3` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `admn_area` varchar(12) NOT NULL,
  `district_cd` varchar(5) NOT NULL,
  `opened_on` datetime NOT NULL,
  `closed` varchar(1) NOT NULL,
  `closed_on` datetime NOT NULL,
  `reason_clo` varchar(30) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pincode_master`
--

CREATE TABLE `pincode_master` (
  `Pincode` varchar(6) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Taluk` varchar(50) NOT NULL,
  `District_cd` varchar(5) NOT NULL,
  `State_cd` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pledge_master`
--

CREATE TABLE `pledge_master` (
  `pledge_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profession_master`
--

CREATE TABLE `profession_master` (
  `Profession_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualification_master`
--

CREATE TABLE `qualification_master` (
  `Qual_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `responsibility_master`
--

CREATE TABLE `responsibility_master` (
  `Resp_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpt_pay_tran`
--

CREATE TABLE `rpt_pay_tran` (
  `tran_no` varchar(8) NOT NULL,
  `tran_date` datetime NOT NULL,
  `rpt_pay` char(1) DEFAULT NULL,
  `rpt_pay_tot` decimal(18,0) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `ent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpt_pay_tran_adjustments`
--

CREATE TABLE `rpt_pay_tran_adjustments` (
  `tran_no` varchar(8) NOT NULL,
  `tran_date` datetime NOT NULL,
  `tran_no_sub` varchar(2) NOT NULL,
  `purpose` varchar(6) NOT NULL,
  `amount` decimal(18,0) NOT NULL,
  `adj_person` varchar(8) NOT NULL,
  `dist_cd` varchar(10) NOT NULL,
  `office_cd` varchar(10) NOT NULL,
  `admn_area` varchar(15) NOT NULL,
  `for_month` char(2) NOT NULL,
  `for_year` char(4) NOT NULL,
  `pledge` varchar(3) NOT NULL,
  `for_field` varchar(4) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `bill_rpt_no` varchar(15) NOT NULL,
  `rpt_adv_no` char(6) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `ent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpt_pay_tran_details`
--

CREATE TABLE `rpt_pay_tran_details` (
  `tran_no` varchar(8) NOT NULL,
  `tran_date` datetime NOT NULL,
  `tran_no_sub` varchar(2) NOT NULL,
  `purpose` varchar(6) NOT NULL,
  `amount` decimal(18,0) NOT NULL,
  `rpt_pay_person` varchar(8) NOT NULL,
  `dist_cd` varchar(10) NOT NULL,
  `office_cd` varchar(10) NOT NULL,
  `admn_area` varchar(15) NOT NULL,
  `for_month` char(2) NOT NULL,
  `for_year` char(4) NOT NULL,
  `pledge` varchar(3) NOT NULL,
  `for_field` varchar(4) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `bill_rpt_no` varchar(15) NOT NULL,
  `rpt_adv_no` char(6) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `ent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpt_pay_tran_inst`
--

CREATE TABLE `rpt_pay_tran_inst` (
  `tran_no` varchar(8) NOT NULL,
  `tran_date` datetime NOT NULL,
  `tran_no_sub` varchar(2) NOT NULL,
  `tran_mode` varchar(3) NOT NULL,
  `ch_dd_no` varchar(25) NOT NULL,
  `ch_dd_dt` datetime NOT NULL,
  `amount` decimal(18,0) NOT NULL,
  `currency_cd` varchar(3) NOT NULL,
  `ex_rate` decimal(7,2) NOT NULL,
  `ac_cd` varchar(8) NOT NULL,
  `rpt_pay` varchar(1) NOT NULL,
  `rpt_pay_person` varchar(10) NOT NULL,
  `realised_dt` datetime NOT NULL,
  `realised_amt` decimal(18,0) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `ent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsoring_grp_master`
--

CREATE TABLE `sponsoring_grp_master` (
  `Spon_grp_no` varchar(8) NOT NULL,
  `title` varchar(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `leader_no` varchar(10) NOT NULL,
  `leader_no_2` varchar(10) NOT NULL,
  `office_cd` varchar(5) NOT NULL,
  `district_cd` varchar(5) NOT NULL,
  `admn_area` varchar(15) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  `given_upto` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spon_grp_spon_type`
--

CREATE TABLE `spon_grp_spon_type` (
  `spon_sl_no` int(11) NOT NULL,
  `spon_grp_no` char(8) DEFAULT NULL,
  `spon_type` char(3) DEFAULT NULL,
  `spon_amount` decimal(18,2) NOT NULL,
  `spon_person` varchar(50) NOT NULL,
  `spon_person_tit` varchar(10) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spon_type_master`
--

CREATE TABLE `spon_type_master` (
  `spon_type` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_no` varchar(15) NOT NULL,
  `title` varchar(6) NOT NULL,
  `name` varchar(40) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `dob` datetime NOT NULL,
  `doj` datetime NOT NULL,
  `dom` datetime NOT NULL,
  `doi` datetime NOT NULL,
  `qualification` varchar(3) NOT NULL,
  `blood_grp` varchar(8) NOT NULL,
  `marital_st` varchar(1) NOT NULL,
  `spouse_no` varchar(15) NOT NULL,
  `office_cd` varchar(8) NOT NULL,
  `admn_area` varchar(12) NOT NULL,
  `district_cd` varchar(8) NOT NULL,
  `designatn` varchar(3) NOT NULL,
  `pf_no` varchar(25) NOT NULL,
  `pres_add1` varchar(40) NOT NULL,
  `pres_add2` varchar(40) NOT NULL,
  `pres_add3` varchar(40) NOT NULL,
  `pres_city` varchar(30) NOT NULL,
  `pres_pin` varchar(6) NOT NULL,
  `pres_dist` varchar(8) NOT NULL,
  `perm_add1` varchar(40) NOT NULL,
  `perm_add2` varchar(40) NOT NULL,
  `perm_add3` varchar(40) NOT NULL,
  `perm_city` varchar(30) NOT NULL,
  `perm_pin` varchar(6) NOT NULL,
  `perm_dist` varchar(8) NOT NULL,
  `perm_phone` varchar(50) NOT NULL,
  `e_mail_id` varchar(60) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobile_1` varchar(15) NOT NULL,
  `mobile_2` varchar(15) NOT NULL,
  `hus_staff_no` varchar(8) NOT NULL,
  `ordian_status` varchar(1) NOT NULL,
  `mother_tongue` varchar(2) NOT NULL,
  `mag_lang` varchar(2) NOT NULL,
  `left_org` varchar(1) NOT NULL,
  `leaving_dt` datetime NOT NULL,
  `left_reason` varchar(12) NOT NULL,
  `ent_date` datetime NOT NULL,
  `user_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_field_exp`
--

CREATE TABLE `staff_field_exp` (
  `Staff_no` varchar(8) NOT NULL,
  `field_cd` varchar(8) NOT NULL,
  `from_dt` datetime NOT NULL,
  `to_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_responsibility_hist`
--

CREATE TABLE `staff_responsibility_hist` (
  `Staff_no` varchar(8) NOT NULL,
  `resp_cd` varchar(3) NOT NULL,
  `from_dt` datetime NOT NULL,
  `to_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `State_cd` varchar(5) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tran_mode_master`
--

CREATE TABLE `tran_mode_master` (
  `Tran_cd` varchar(3) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acct_master`
--
ALTER TABLE `acct_master`
  ADD PRIMARY KEY (`acc_code`),
  ADD KEY `fk39` (`main_ac`);

--
-- Indexes for table `acct_tran`
--
ALTER TABLE `acct_tran`
  ADD PRIMARY KEY (`tran_no`,`tran_date`,`tran_no_sub`),
  ADD KEY `fk54` (`dr_ac`),
  ADD KEY `fk55` (`cr_ac`),
  ADD KEY `fk56` (`dr_dist_cd`),
  ADD KEY `fk57` (`dr_office_cd`),
  ADD KEY `fk58` (`dr_admn_area`),
  ADD KEY `fk59` (`cr_dist_cd`),
  ADD KEY `fk60` (`cr_office_cd`),
  ADD KEY `fk61` (`cr_admn_area`),
  ADD KEY `fk62` (`for_field`),
  ADD KEY `fk63` (`pledge`);

--
-- Indexes for table `ac_op_bal`
--
ALTER TABLE `ac_op_bal`
  ADD PRIMARY KEY (`cl_date`,`acc_code`),
  ADD KEY `fk64` (`acc_code`);

--
-- Indexes for table `admnarea`
--
ALTER TABLE `admnarea`
  ADD PRIMARY KEY (`admn_area`);

--
-- Indexes for table `blood_grp_master`
--
ALTER TABLE `blood_grp_master`
  ADD PRIMARY KEY (`Blood_grp_cd`);

--
-- Indexes for table `country_master`
--
ALTER TABLE `country_master`
  ADD PRIMARY KEY (`Country_cd`);

--
-- Indexes for table `creditor`
--
ALTER TABLE `creditor`
  ADD PRIMARY KEY (`cr_code`),
  ADD KEY `fk38` (`district_cd`);

--
-- Indexes for table `currency_master`
--
ALTER TABLE `currency_master`
  ADD PRIMARY KEY (`Currency_cd`);

--
-- Indexes for table `district_master`
--
ALTER TABLE `district_master`
  ADD PRIMARY KEY (`district_cd`),
  ADD KEY `fk1` (`State_cd`);

--
-- Indexes for table `language_master`
--
ALTER TABLE `language_master`
  ADD PRIMARY KEY (`Lang_cd`);

--
-- Indexes for table `life_sponser`
--
ALTER TABLE `life_sponser`
  ADD PRIMARY KEY (`life_spon_id`,`member_no`),
  ADD KEY `fk27` (`member_no`);

--
-- Indexes for table `main_ac_master`
--
ALTER TABLE `main_ac_master`
  ADD PRIMARY KEY (`main_ac`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_no`),
  ADD KEY `fk14` (`spon_grp_no`),
  ADD KEY `fk15` (`district_cd`),
  ADD KEY `fk16` (`Office_cd`),
  ADD KEY `fk17` (`admn_area`),
  ADD KEY `fk18` (`profession_cd`),
  ADD KEY `fk19` (`qual_cd`);

--
-- Indexes for table `member_responsibility`
--
ALTER TABLE `member_responsibility`
  ADD PRIMARY KEY (`member_no`),
  ADD KEY `fk23` (`resp_cd`);

--
-- Indexes for table `member_spon_type`
--
ALTER TABLE `member_spon_type`
  ADD KEY `fk24` (`member_no`),
  ADD KEY `fk25` (`spon_type`),
  ADD KEY `fk26` (`spon_person`);

--
-- Indexes for table `mem_mag_mast`
--
ALTER TABLE `mem_mag_mast`
  ADD PRIMARY KEY (`id_no`),
  ADD KEY `fk20` (`member_no`),
  ADD KEY `fk21` (`lang_cd`);

--
-- Indexes for table `office_field_cd`
--
ALTER TABLE `office_field_cd`
  ADD PRIMARY KEY (`office_cd`),
  ADD KEY `fk4` (`admn_area`),
  ADD KEY `fk5` (`district_cd`);

--
-- Indexes for table `pincode_master`
--
ALTER TABLE `pincode_master`
  ADD PRIMARY KEY (`Pincode`,`City`),
  ADD KEY `fk2` (`District_cd`),
  ADD KEY `fk3` (`State_cd`);

--
-- Indexes for table `pledge_master`
--
ALTER TABLE `pledge_master`
  ADD PRIMARY KEY (`pledge_cd`);

--
-- Indexes for table `profession_master`
--
ALTER TABLE `profession_master`
  ADD PRIMARY KEY (`Profession_cd`);

--
-- Indexes for table `qualification_master`
--
ALTER TABLE `qualification_master`
  ADD PRIMARY KEY (`Qual_cd`);

--
-- Indexes for table `responsibility_master`
--
ALTER TABLE `responsibility_master`
  ADD PRIMARY KEY (`Resp_cd`);

--
-- Indexes for table `rpt_pay_tran`
--
ALTER TABLE `rpt_pay_tran`
  ADD PRIMARY KEY (`tran_no`,`tran_date`);

--
-- Indexes for table `rpt_pay_tran_adjustments`
--
ALTER TABLE `rpt_pay_tran_adjustments`
  ADD PRIMARY KEY (`tran_no`,`tran_date`,`tran_no_sub`),
  ADD KEY `fk48` (`purpose`),
  ADD KEY `fk49` (`dist_cd`),
  ADD KEY `fk50` (`office_cd`),
  ADD KEY `fk51` (`admn_area`),
  ADD KEY `fk52` (`for_field`),
  ADD KEY `fk53` (`pledge`);

--
-- Indexes for table `rpt_pay_tran_details`
--
ALTER TABLE `rpt_pay_tran_details`
  ADD PRIMARY KEY (`tran_no`,`tran_date`,`tran_no_sub`),
  ADD KEY `fk42` (`purpose`),
  ADD KEY `fk43` (`dist_cd`),
  ADD KEY `fk44` (`office_cd`),
  ADD KEY `fk45` (`admn_area`),
  ADD KEY `fk46` (`for_field`),
  ADD KEY `fk47` (`pledge`);

--
-- Indexes for table `rpt_pay_tran_inst`
--
ALTER TABLE `rpt_pay_tran_inst`
  ADD PRIMARY KEY (`tran_no`,`tran_date`,`tran_no_sub`),
  ADD KEY `fk40` (`ac_cd`),
  ADD KEY `fk41` (`currency_cd`);

--
-- Indexes for table `sponsoring_grp_master`
--
ALTER TABLE `sponsoring_grp_master`
  ADD PRIMARY KEY (`Spon_grp_no`),
  ADD KEY `fk6` (`leader_no`),
  ADD KEY `fk7` (`leader_no_2`),
  ADD KEY `fk8` (`office_cd`),
  ADD KEY `fk9` (`district_cd`),
  ADD KEY `fk10` (`admn_area`);

--
-- Indexes for table `spon_grp_spon_type`
--
ALTER TABLE `spon_grp_spon_type`
  ADD PRIMARY KEY (`spon_sl_no`),
  ADD KEY `fk11` (`spon_grp_no`),
  ADD KEY `fk12` (`spon_type`),
  ADD KEY `fk13` (`spon_person`);

--
-- Indexes for table `spon_type_master`
--
ALTER TABLE `spon_type_master`
  ADD PRIMARY KEY (`spon_type`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_no`),
  ADD KEY `fk28` (`qualification`),
  ADD KEY `fk29` (`blood_grp`),
  ADD KEY `fk30` (`office_cd`),
  ADD KEY `fk31` (`admn_area`),
  ADD KEY `fk32` (`district_cd`),
  ADD KEY `fk33` (`designatn`),
  ADD KEY `fk34` (`pres_dist`),
  ADD KEY `fk35` (`perm_dist`),
  ADD KEY `fk36` (`mother_tongue`),
  ADD KEY `fk37` (`mag_lang`);

--
-- Indexes for table `staff_field_exp`
--
ALTER TABLE `staff_field_exp`
  ADD PRIMARY KEY (`Staff_no`,`field_cd`,`from_dt`);

--
-- Indexes for table `staff_responsibility_hist`
--
ALTER TABLE `staff_responsibility_hist`
  ADD PRIMARY KEY (`Staff_no`,`resp_cd`,`from_dt`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`State_cd`);

--
-- Indexes for table `tran_mode_master`
--
ALTER TABLE `tran_mode_master`
  ADD PRIMARY KEY (`Tran_cd`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acct_master`
--
ALTER TABLE `acct_master`
  ADD CONSTRAINT `fk39` FOREIGN KEY (`main_ac`) REFERENCES `main_ac_master` (`main_ac`);

--
-- Constraints for table `acct_tran`
--
ALTER TABLE `acct_tran`
  ADD CONSTRAINT `fk54` FOREIGN KEY (`dr_ac`) REFERENCES `acct_master` (`acc_code`),
  ADD CONSTRAINT `fk55` FOREIGN KEY (`cr_ac`) REFERENCES `acct_master` (`acc_code`),
  ADD CONSTRAINT `fk56` FOREIGN KEY (`dr_dist_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk57` FOREIGN KEY (`dr_office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk58` FOREIGN KEY (`dr_admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk59` FOREIGN KEY (`cr_dist_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk60` FOREIGN KEY (`cr_office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk61` FOREIGN KEY (`cr_admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk62` FOREIGN KEY (`for_field`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk63` FOREIGN KEY (`pledge`) REFERENCES `pledge_master` (`pledge_cd`);

--
-- Constraints for table `ac_op_bal`
--
ALTER TABLE `ac_op_bal`
  ADD CONSTRAINT `fk64` FOREIGN KEY (`acc_code`) REFERENCES `acct_master` (`acc_code`);

--
-- Constraints for table `creditor`
--
ALTER TABLE `creditor`
  ADD CONSTRAINT `fk38` FOREIGN KEY (`district_cd`) REFERENCES `district_master` (`district_cd`);

--
-- Constraints for table `district_master`
--
ALTER TABLE `district_master`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`State_cd`) REFERENCES `state_master` (`State_cd`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `life_sponser`
--
ALTER TABLE `life_sponser`
  ADD CONSTRAINT `fk27` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk14` FOREIGN KEY (`spon_grp_no`) REFERENCES `sponsoring_grp_master` (`Spon_grp_no`),
  ADD CONSTRAINT `fk15` FOREIGN KEY (`district_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk16` FOREIGN KEY (`Office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk17` FOREIGN KEY (`admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk18` FOREIGN KEY (`profession_cd`) REFERENCES `profession_master` (`Profession_cd`),
  ADD CONSTRAINT `fk19` FOREIGN KEY (`qual_cd`) REFERENCES `qualification_master` (`Qual_cd`);

--
-- Constraints for table `member_responsibility`
--
ALTER TABLE `member_responsibility`
  ADD CONSTRAINT `fk22` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`),
  ADD CONSTRAINT `fk23` FOREIGN KEY (`resp_cd`) REFERENCES `responsibility_master` (`Resp_cd`);

--
-- Constraints for table `member_spon_type`
--
ALTER TABLE `member_spon_type`
  ADD CONSTRAINT `fk24` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`),
  ADD CONSTRAINT `fk25` FOREIGN KEY (`spon_type`) REFERENCES `spon_type_master` (`spon_type`),
  ADD CONSTRAINT `fk26` FOREIGN KEY (`spon_person`) REFERENCES `staff` (`staff_no`);

--
-- Constraints for table `mem_mag_mast`
--
ALTER TABLE `mem_mag_mast`
  ADD CONSTRAINT `fk20` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`),
  ADD CONSTRAINT `fk21` FOREIGN KEY (`lang_cd`) REFERENCES `language_master` (`Lang_cd`);

--
-- Constraints for table `office_field_cd`
--
ALTER TABLE `office_field_cd`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk5` FOREIGN KEY (`district_cd`) REFERENCES `district_master` (`district_cd`);

--
-- Constraints for table `pincode_master`
--
ALTER TABLE `pincode_master`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`District_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`State_cd`) REFERENCES `state_master` (`State_cd`);

--
-- Constraints for table `rpt_pay_tran_adjustments`
--
ALTER TABLE `rpt_pay_tran_adjustments`
  ADD CONSTRAINT `fk48` FOREIGN KEY (`purpose`) REFERENCES `acct_master` (`acc_code`),
  ADD CONSTRAINT `fk49` FOREIGN KEY (`dist_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk50` FOREIGN KEY (`office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk51` FOREIGN KEY (`admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk52` FOREIGN KEY (`for_field`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk53` FOREIGN KEY (`pledge`) REFERENCES `pledge_master` (`pledge_cd`);

--
-- Constraints for table `rpt_pay_tran_details`
--
ALTER TABLE `rpt_pay_tran_details`
  ADD CONSTRAINT `fk42` FOREIGN KEY (`purpose`) REFERENCES `acct_master` (`acc_code`),
  ADD CONSTRAINT `fk43` FOREIGN KEY (`dist_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk44` FOREIGN KEY (`office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk45` FOREIGN KEY (`admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk46` FOREIGN KEY (`for_field`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk47` FOREIGN KEY (`pledge`) REFERENCES `pledge_master` (`pledge_cd`);

--
-- Constraints for table `rpt_pay_tran_inst`
--
ALTER TABLE `rpt_pay_tran_inst`
  ADD CONSTRAINT `fk40` FOREIGN KEY (`ac_cd`) REFERENCES `acct_master` (`acc_code`),
  ADD CONSTRAINT `fk41` FOREIGN KEY (`currency_cd`) REFERENCES `currency_master` (`Currency_cd`);

--
-- Constraints for table `sponsoring_grp_master`
--
ALTER TABLE `sponsoring_grp_master`
  ADD CONSTRAINT `fk10` FOREIGN KEY (`admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk6` FOREIGN KEY (`leader_no`) REFERENCES `member` (`member_no`),
  ADD CONSTRAINT `fk7` FOREIGN KEY (`leader_no_2`) REFERENCES `member` (`member_no`),
  ADD CONSTRAINT `fk8` FOREIGN KEY (`office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk9` FOREIGN KEY (`district_cd`) REFERENCES `district_master` (`district_cd`);

--
-- Constraints for table `spon_grp_spon_type`
--
ALTER TABLE `spon_grp_spon_type`
  ADD CONSTRAINT `fk11` FOREIGN KEY (`spon_grp_no`) REFERENCES `sponsoring_grp_master` (`Spon_grp_no`),
  ADD CONSTRAINT `fk12` FOREIGN KEY (`spon_type`) REFERENCES `spon_type_master` (`spon_type`),
  ADD CONSTRAINT `fk13` FOREIGN KEY (`spon_person`) REFERENCES `staff` (`staff_no`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk28` FOREIGN KEY (`qualification`) REFERENCES `qualification_master` (`Qual_cd`),
  ADD CONSTRAINT `fk29` FOREIGN KEY (`blood_grp`) REFERENCES `blood_grp_master` (`Blood_grp_cd`),
  ADD CONSTRAINT `fk30` FOREIGN KEY (`office_cd`) REFERENCES `office_field_cd` (`office_cd`),
  ADD CONSTRAINT `fk31` FOREIGN KEY (`admn_area`) REFERENCES `admnarea` (`admn_area`),
  ADD CONSTRAINT `fk32` FOREIGN KEY (`district_cd`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk33` FOREIGN KEY (`designatn`) REFERENCES `responsibility_master` (`Resp_cd`),
  ADD CONSTRAINT `fk34` FOREIGN KEY (`pres_dist`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk35` FOREIGN KEY (`perm_dist`) REFERENCES `district_master` (`district_cd`),
  ADD CONSTRAINT `fk36` FOREIGN KEY (`mother_tongue`) REFERENCES `language_master` (`Lang_cd`),
  ADD CONSTRAINT `fk37` FOREIGN KEY (`mag_lang`) REFERENCES `language_master` (`Lang_cd`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
