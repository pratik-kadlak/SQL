
-- Type	Storage (Bytes)	Minimum Value Signed	Minimum Value Unsigned	Maximum Value Signed	Maximum Value Unsigned
-- TINYINT	1	-128	0	127	255
-- SMALLINT	2	-32768	0	32767	65535
-- MEDIUMINT	3	-8388608	0	8388607	16777215
-- INT	4	-2147483648	0	2147483647	4294967295
-- BIGINT	8	-2^63	0	2^63-1	2^64-1

-- if we put decimal values in INT col then it wont give error instead it will dicard the after decimal values 
-- and will only save the nereat integer

-- The DECIMAL and NUMERIC types store exact numeric data values. These types are used when it is important to preserve
-- exact precision, for example with monetary data. In MySQL, NUMERIC is implemented as DECIMAL, so the following remarks 
-- about DECIMAL apply equally to NUMERIC.

-- In a DECIMAL column declaration, the precision and scale can be (and usually is) specified. For example:
-- salary DECIMAL(5,2)
-- In this example, 5 is the precision and 2 is the scale. The precision represents the number of significant digits that
--  are stored for values, and the scale represents the number of digits that can be stored following the decimal point.

-- Standard SQL requires that DECIMAL(5,2) be able to store any value with five digits and two decimals, 
-- so values that can be stored in the salary column range from -999.99 to 999.99.


-- The FLOAT and DOUBLE types represent approximate numeric data values. MySQL uses four bytes for single-precision 
-- values and eight bytes for double-precision values.

