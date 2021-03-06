# mysql
# The SQL to create the table based on NHTSA's import instructions
# http://www-odi.nhtsa.dot.gov/downloads/folders/Complaints/Import_Instructions.pdf
CREATE TABLE `complaints` (
  `cmplid` char(9) DEFAULT NULL,
  `odino` char(9) DEFAULT NULL,
  `mfr_name` char(40) DEFAULT NULL,
  `make` char(25) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  `crash` char(1) DEFAULT NULL,
  `faildate` date DEFAULT NULL,
  `fire` char(1) DEFAULT NULL,
  `injured` int(3) DEFAULT NULL,
  `deaths` int(3) DEFAULT NULL,
  `compdesc` varchar(150) DEFAULT NULL,
  `city` char(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `vin` char(11) DEFAULT NULL,
  `datea` date DEFAULT NULL,
  `ldate` date DEFAULT NULL,
  `miles` int(8) DEFAULT NULL,
  `occurences` int(5) DEFAULT NULL,
  `cdescr` varchar(2048) DEFAULT '',
  `cmpl_type` char(4) DEFAULT NULL,
  `police_rpt_yn` char(1) DEFAULT NULL,
  `purch_dt` char(8) DEFAULT NULL,
  `orig_owner_yn` char(1) DEFAULT NULL,
  `anti_brakes_yn` char(1) DEFAULT NULL,
  `cruise_cont_yn` char(1) DEFAULT NULL,
  `num_cyls` int(3) DEFAULT NULL,
  `drive_train` char(4) DEFAULT NULL,
  `fuel_sys` char(4) DEFAULT NULL,
  `fuel_type` char(4) DEFAULT NULL,
  `trans_type` char(4) DEFAULT NULL,
  `veh_speed` int(4) DEFAULT NULL,
  `dot` char(20) DEFAULT NULL,
  `tire_size` char(30) DEFAULT NULL,
  `loc_of_tire` char(4) DEFAULT NULL,
  `tire_fail_type` char(4) DEFAULT NULL,
  `orig_equip_yn` char(1) DEFAULT NULL,
  `manuf_dt` char(8) DEFAULT NULL,
  `seat_type` char(4) DEFAULT NULL,
  `restraint_type` char(4) DEFAULT NULL,
  `dealer_name` char(40) DEFAULT NULL,
  `dealer_tel` char(20) DEFAULT NULL,
  `dealer_city` char(30) DEFAULT NULL,
  `dealer_state` char(2) DEFAULT NULL,
  `dealer_zip` char(10) DEFAULT NULL,
  `prod_type` char(4) DEFAULT NULL,
  `repaired_yn` char(1) DEFAULT NULL,
  `medical_attn` char(1) DEFAULT NULL,
  KEY `cmplid_on_complaints` (`cmplid`),
  KEY `make_and_faildate_on_complaints` (`make`, `faildate`),
  KEY `mfr_name_and_faildate_on_complaints` (`mfr_name`, `faildate`),
  KEY `model_on_complaints` (`model`),
  KEY `faildate_and_model_on_complaints` (`faildate`,`model`),
  KEY `faildate_on_complaints` (`faildate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- For comparison's sake:

