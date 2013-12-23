
-- insert into fcmenu (mn_code, mn_parentid, mn_title, mn_status, mn_order, mn_webflag, mn_class, mn_func) values ('PCKGSETUP', 6, 'Package Setup', 'ACTIVE', 4300, 'Y', 'Setting', 'packagesetup');

CREATE TABLE `pflex`.`smorgpackage` (
  `op_id` INT NOT NULL AUTO_INCREMENT,
  `op_orgid` INT NULL,
  `op_packageid` INT NULL,
  `op_created` DATETIME NULL,
  `op_createby` VARCHAR(50) NULL,
  `op_status` TINYINT NULL DEFAULT 0,
  `op_startdate` DATE NULL,
  `op_enddate` DATE NULL,
  PRIMARY KEY (`op_id`));
  
commit;