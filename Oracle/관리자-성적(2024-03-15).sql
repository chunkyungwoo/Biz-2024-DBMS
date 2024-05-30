-- 여기는 관리자 화면입니다.

/*
TableSpace : schoolDB
DataFile : c:/app/data/schoolDB.dbf
초기크기 : 00
자동확장 : 00

사용자 : schoolUser
비번 : 12341234

접속 프로파일 생성
*/

CREATE TABLESPACE schoolDB
DataFile 'c:/app/data/schoolDB.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

ALTER SESSION SET "_ORACLE_SCRIPT" = true;

CREATE USER schoolUser IDENTIFIED BY 12341234
DEFAULT TABLESPACE schoolDB;

// 권한주기
GRANT DBA TO schoolUser;

// 접속권한주기
GRANT CREATE SESSION TO schoolUser;