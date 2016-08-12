<?php

// Create table
$object -> sql_query("CREATE TABLE IF NOT EXISTS `pstfiles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` int(11) NOT NULL,
  `FILEPATH` varchar(255) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILESIZE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`HARDWARE_ID`)
)  ENGINE=INNODB ;");

?>
