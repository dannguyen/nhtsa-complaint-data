CREATE TABLE `recalls` (
`bulno` char(16) default null, # 1. service bulletin number
`bulrep` char(16) default null, # 2. replacement service bulletin number
`id` int(9) default null, # 3. nhtsa item number
`buldte` date default null, # 4. date of bulletin
`compname` varchar(128) default null, # 5. code for failing component
`make` varchar(25) default null, # 6. vehicle/equipment make
`model` varchar(256) default null, # 7. vehicle/equipment model
`year` char(4) default null, # 8. model year, 9999 if unknown or n/a
`datea` date default null, # 9. date added to file
`summary` varchar(240) default null, # 10. description of summary
  KEY `bulno_on_bulletins` (`bulno`),
  KEY `make_on_bulletins` (`make`),
  KEY `model_on_bulletins` (`model`),
  KEY `datea_on_bulletins` (`datea`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

