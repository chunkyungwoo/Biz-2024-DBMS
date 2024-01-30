CREATE DATABASE bookDB;



CREATE TABLE tbl_book (
b_isbn VARCHAR(13) PRIMARY KEY,
b_title VARCHAR(100) NOT NULL,
b_author VARCHAR(100) NOT NULL,
b_publisher VARCHAR(100) NOT NULL,
b_price INT NOT NULL,
b_discount INT ,
b_description VARCHAR(8000) ,
b_pubdate VARCHAR(10) ,
b_link VARCHAR(125) ,
b_image VARCHAR(125)
);
USE bookDB;
INSERT INTO tbl_book(b_isbn,b_title,b_author,b_publisher,b_price,b_discount)
VALUES ('979118','왕이된 남자1','김선덕','북라이프','14000','12600');

CREATE DATABASE memberDB;

USE memberDB;

CREATE TABLE tbl_member (
m_id VARCHAR(20) PRIMARY KEY,
m_password VARCHAR(125) NOT NULL,
m_mail VARCHAR(125) NOT NULL,
m_name VARCHAR(12) NOT NULL
);

