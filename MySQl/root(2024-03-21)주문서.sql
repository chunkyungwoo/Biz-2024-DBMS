CREATE DATABASE tmp_orderDB;

USE tmp_orderDB;

CREATE TABLE tbl_order(
	o_num	VARCHAR(6)		PRIMARY KEY,
	o_date	VARCHAR(10)		,
	o_ccode	VARCHAR(15)		,
	o_pcode1	VARCHAR(6)	,	
	o_pcode2	VARCHAR(6)	,	
	o_pcode3	VARCHAR(6)		
);
DROP TABLE tbl_orderlist;
CREATE TABLE tbl_orderlist(
	l_onum	VARCHAR(6)		PRIMARY KEY,
	l_date	VARCHAR(15)	,	
	l_ccode	VARCHAR(6)	,
	l_pcode	VARCHAR(6)		
);

CREATE TABLE tbl_customer(
	c_code	VARCHAR(6)		PRIMARY KEY,
	c_name	VARCHAR(6)	,
	c_tel	VARCHAR(15)		
);

CREATE TABLE tbl_product(
	p_code	VARCHAR(6)		PRIMARY KEY,
	p_name	VARCHAR(20)		,
	p_item	VARCHAR(6)		,
	p_price	VARCHAR(6)		
);

ALTER TABLE tbl_orderlist
ADD CONSTRAINT FOREIGN KEY fk_ccode(l_ccode)
REFERENCES tbl_customer(c_code);

ALTER TABLE tbl_orderlist
ADD CONSTRAINT FOREIGN KEY fk_pcode(l_pcode)
REFERENCES tbl_product(p_code);

SELECT o_num,o_date,o_ccode,o_pcode3
FROM tbl_order
GROUP BY o_num;

SELECT * FROM tbl_orderlist
ORDER BY l_pcode;

SELECT * FROM tbl_product;

-- 정규화 완료후 불필요한 칼럼삭제
ALTER TABLE tbl_order DROP COLUMN o_pcode1;
ALTER TABLE tbl_order DROP COLUMN o_pcode2;
ALTER TABLE tbl_order DROP COLUMN o_pcode3;

SELECT l_onum,l_ccode AS 고래밥, COUNT(l_onum)
FROM tbl_orderlist
GROUP BY l_onum,l_ccode
ORDER BY l_ccode;

SELECT l_onum,l_ccode AS 고구마깡, COUNT(l_onum)
FROM tbl_orderlist
GROUP BY l_onum,l_ccode
ORDER BY l_ccode;