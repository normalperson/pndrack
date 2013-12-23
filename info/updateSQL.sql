update fcmenu
set mn_title = 'Aging Report',
    mn_code = 'RPTAGING',
    mn_func = 'rptaging'
where mn_id = 12

ALTER TABLE smshelfgroup
 DROP sg_code;
