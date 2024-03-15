-- 설치된 MySQL 서버에 있는 저장소를 보여줘
SHOW DATABASES;
-- mysql 이라는 저장소를 사용하겠다.
-- 사용 : 데이터추가, 변경, 삭제, 조회
USE mysql;
SHOW TABLES;

-- 새로운 저장소인 whm0304 만들기
-- 내부스키마 (폴더) 여러가지 내용이포함됨
CREATE DATABASE whm0304;
--  외부 스키마 는 사용자가 보는 스키마
-- 새로운 저장소를 상대로 무언가 일을 하겠다.
-- DBMS(Database Management System) 와 관련된 업무 : CRUD
USE whm0304;
SHOW TABLES;
-- 학생정보 데이터의 각 데이터 제목들
-- 학번,학생이름,학과,학년,전화번호,주소
-- 학생정보 테이블에 저장된 한 학생의 정보(정보하나하나가 객체임, 이름이라는 속성)
-- S0001,갈한수,기계공학과,2,090-4407-3262,경북 경산시 사정동 278-1



CREATE TABLE tbl_student (
	학번 VARCHAR(5), -- 문자열
	학생이름 VARCHAR(5), -- 문자열
	학과 VARCHAR(10), -- 문자열
	학년 VARCHAR(1), -- 문자열
	전화번호 VARCHAR(15), -- 문자열
	주소 VARCHAR(125) -- 문자열
    -- 학생정보 (학번 ~ 주소) = Entity
);
SHOW TABLES;


