CREATE TABLE `investigations` (
  `nhtsa_action_number` char(10) DEFAULT NULL,
  `make` varchar(40) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `mfr_name` varchar(40) DEFAULT NULL,
  `odate` DATE DEFAULT NULL,
  `cdate` DATE DEFAULT NULL,
  `campno` CHAR(12) DEFAULT NULL,
  `subject` VARCHAR(40) DEFAULT NULL,
  `summary` VARCHAR(4000) DEFAULT NULL,
  KEY `nhtsa_action_number_on_inv` (`nhtsa_action_number`),
  KEY `make_on_inv` (`make`),
  KEY `mfr_name_on_inv` (`mfr_name`),
  KEY `model_on_inv` (`model`),
  KEY `campno_on_inv` (`campno`),
  KEY `odate_on_inv` (`odate`),
  KEY `cdate_on_inv` (`cdate`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- Official documentation:
-- DEFECT INVESTIGATIONS

-- The INVESTIGATION file contains all NHTSA safety-related defect investigations
-- opened since 1972.

-- File characteristics:

-- -  All the records are TAB delimited
-- -  All dates are in YYYYMMDD format

-- -  Maximum Record length: 4656

-- Change log:
-- 1.Changed flat file extension from .lst to .txt as of Sept. 14, 2007
-- 2.Field# 11 added as of March 14, 2008

-- Last Updated March 14, 2008


-- FIELDS:
-- =======

--     Note: The CAMPNO field (NHTSA Recall Campaign Number), if present,
--           identifies the recall campaign initiated as a result of the
--           investigation.  The CAMPNO can be used to link to the RECALLS
--           database for additional information.


-- Field#   Name                 Type/Size     Description
-- ------   ----------             ---------       -------------------------------
-- 1        NHTSA ACTION NUMBER    CHAR(10)        NHTSA Identification Number
-- 2        MAKE                   CHAR(25)        Vehicle/Equipment Make
-- 3        MODEL                  CHAR(256)       Vehicle/Equipment Model
-- 4        YEAR                   CHAR(4)         Model Year,
--                                                    9999 if Unknown or N/A
-- 5        COMPNAME               CHAR(256)       Component Description
-- 6        MFR_NAME               CHAR(40)        Manufacturer's Name
-- 7        ODATE                  CHAR(8)         Date Opened (YYYYMMDD)
-- 8        CDATE                  CHAR(8)         Date Closed (YYYYMMDD)
-- 9        CAMPNO                 CHAR(9)         Recall Campaign Number, if applicable
-- 10       SUBJECT                CHAR(40)        Summary Description
-- 11       SUMMARY                CHAR(4000)      Summary Detail
