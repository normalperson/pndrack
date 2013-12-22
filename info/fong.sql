insert into fcmenu (mn_code, mn_parentid, mn_title, mn_status, mn_order, mn_webflag, mn_class, mn_func) 
values ('ORGSETUP', 6, 'Org Setting', 'ACTIVE', 4300, 'Y', 'Setting', 'org');

commit;

ALTER TABLE `pflex`.`smcustomer` 
ADD COLUMN `cus_orgid` INT NULL AFTER `cus_contactno`;