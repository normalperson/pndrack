ALTER TABLE smplate
 ADD sp_status VARCHAR(20) DEFAULT 'ACTIVE' COMMENT 'ACTIVE (Current active using) DAMAGE (Plate damage) THROW (Throw because no repeat order)' AFTER sp_createdby;

