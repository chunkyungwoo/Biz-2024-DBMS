CREATE TABLE tbl_student(
    s_num	VARCHAR2(5)		PRIMARY KEY,
    s_name	nVARCHAR2(5)	NOT NULL	,
    s_department	nVARCHAR2(15)	NOT NULL	,
    s_grade	VARCHAR2(3)	NOT NULL	,
    s_tel	VARCHAR2(13),		
    s_addr	nVARCHAR2(100)
);

SELECT * FROM tbl_student;

CREATE TABLE tbl_score(
    s_num	VARCHAR2(5)		PRIMARY KEY,
    s_subject	nVARCHAR2(10)	NOT NULL
);

SELECT * FROM tbl_score;

CREATE TABLE tbl_student_score(
    s_stnum	VARCHAR2(5)	NOT NULL,
    s_scnum	VARCHAR2(5)	NOT NULL,
    s_score	VARCHAR2(3)	NOT NULL,
        CONSTRAINT ah_pk PRIMARY KEY(s_stnum, s_scnum)	
);

SELECT * FROM tbl_student_score;

SELECT COUNT(*) FROM tbl_student_score;

DROP TABLE tbl_score;
DROP TABLE tbl_student_score;


ALTER TABLE tbl_student_score
ADD CONSTRAINT fk_student
FOREIGN KEY (s_stnum)
REFERENCES tbl_student(s_num);

ALTER TABLE tbl_student_score
ADD CONSTRAINT fk_score
FOREIGN KEY (s_scnum)
REFERENCES tbl_score(s_num);

SELECT s_stnum AS 수학 ,COUNT(s_stnum)
FROM tbl_student_score
GROUP BY s_stnum
ORDER BY s_stnum;
