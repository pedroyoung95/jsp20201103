--테이블 명 변경
--RENAME old_name TO new_name;
RENAME dept20 TO emp20;
DESC emp20;
SELECT * FROM emp20;

--테이블 제거
--DROP TABLE table_name;
DROP TABLE emp20;
DESC emp20;

--테이블 내 모든 데이터 제거
--TRUNCATE TABLE table_name
TRUNCATE TABLE dept_second;
DESC dept_second;
SELECT * FROM dept_second;

--혼자해보기
DROP TABLE dept;
--1번
CREATE TABLE dept(
    dno NUMBER(2),
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);

--2번
CREATE TABLE emp(
    eno NUMBER(4),
    ename VARCHAR2(10),
    dno NUMBER(2)
);

--3번
ALTER TABLE emp
MODIFY ename VARCHAR2(25);
DESC emp;

--4번
CREATE TABLE employee2(emp_id, name, sal, dept_id)
AS
SELECT eno, ename, salary, dno FROM employee;
DESC employee2;
SELECT * FROM employee2;

--5번
DROP TABLE emp;

--6번
RENAME employee2 TO emp;

--7번
ALTER TABLE dept
DROP COLUMN dname;
DESC dept;