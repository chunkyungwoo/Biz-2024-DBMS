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