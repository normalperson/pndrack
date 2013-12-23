ALTER TABLE smplate
 ADD sp_status VARCHAR(20) DEFAULT 'ACTIVE' COMMENT 'ACTIVE (Current active using) DAMAGE (Plate damage) THROW (Throw because no repeat order)' AFTER sp_createdby;

ALTER TABLE smpackage
 ADD pk_nouser INT AFTER pk_maxplate,
 ADD pk_noorg INT;

ALTER TABLE smshelfsetting
 DROP sf_orgid,
 ADD sf_orgid INT AFTER sf_totalplate;

ALTER TABLE smshelfgroup
 DROP sg_orgid,
 ADD sg_orgid INT AFTER sg_groupname;

ALTER TABLE smplate
 ADD sp_orgid INT AFTER sp_status;

ALTER TABLE smplateslot
 ADD ps_orgid INT AFTER ps_available;

INSERT INTO fcmenu
(mn_code, mn_parentid, mn_title, mn_status, mn_order, mn_group, mn_url, mn_webflag, mn_class, mn_classlist, mn_func, mn_funclist, mn_param) 
VALUES ('CLIUSRSETUP', 50, 'Client User Menu', 'ACTIVE', 4305, '', '', 'Y', 'Setting', '', 'cusersetup', '', '');
