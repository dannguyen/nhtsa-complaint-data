CREATE TABLE `recalls` (
`record_id` number(9) default null, # 1. running sequence number, which uniquely identifies the record.
`campno` varchar(12) default null, # 2. nhtsa campaign number
`make` varchar(40) default null, # 3. vehicle/equipment make
`model` varchar(255) default null, # 4. vehicle/equipment model
`year` INT(4) default null, # 5. model year, 9999 if unknown or n/a
`mfgcampno` varchar(20) default null, # 6. mfr campaign number
`component_name` varchar(256) default null, # 7. component description
`mfr_name` varchar(40) default null, # 8. manufacturer that filed defect/noncompliance report
`bgman` date default null, # 9. begin date of manufacturing
`endman` date default null, # 10. end date of manufacturing
`rcltypecd` varchar(4) default null, # 11. vehicle, equipment or tire report
`potaff` number(9) default null, # 12. potential number of units affected
`odate` date default null, # 13. date owner notified by mfr
`influenced_by` varchar(4) default null, # 14. recall initiator (mfr/ovsc/odi)
`mfgtxt` varchar(40) default null, # 15. manufacturers of recalled vehicles/products
`rcdate` date default null, # 16. report received date
`datea` date default null, # 17. record creation date
`rpno` char(3) default null, # 18. regulation part number
`fmvss` varchar(10) default null, # 19. federal motor vehicle safety standard number
`desc_defect` varchar(2000) default null, # 20. defect summary
`conequence_defect` varchar(2000) default null, # 21. consequence summary
`corrective_action` varchar(2000) default null, # 22. corrective summary
`notes` varchar(2000) default null, # 23. recall notes
`rcl_cmpt_id` varchar(27) default null, # 24. number that uniquely identifies a recalled component.
  KEY `record_id_on_recalls` (`record_id`)
  KEY `make_on_recalls` (`make`),
  KEY `mfr_name_on_recalls` (`mfr_name`),
  KEY `model_on_recalls` (`model`),
  KEY `mfgcampno_on_recalls` (`mfgcampno`),
  KEY `datea_on_recalls` (`datea`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

