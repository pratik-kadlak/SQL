CREATE TABLE houses (
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

-- add a constraint
ALTER TABLE houses ADD CONSTRAINT positive_pprice CHECK (purchase_price > 0);

INSERT INTO houses (purchase_price, sale_price) VALUES (10, 20);
INSERT INTO houses (purchase_price, sale_price) VALUES (-10, 20); -- constraint failed

-- drop a constraint
ALTER TABLE houses DROP CONSTRAINT positive_pprice;
INSERT INTO houses (purchase_price, sale_price) VALUES (-10, 20); -- now it gets added