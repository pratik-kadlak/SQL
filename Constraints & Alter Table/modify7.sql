DESC companies;

ALTER TABLE companies MODIFY company_name VARCHAR(100) DEFAULT 'unknown';
DESC companies;

-- use CHANGE to rename a col AND change its datatype
-- ALTER TABLE suppliers 
-- CHANGE business biz_name VARCHAR(50);