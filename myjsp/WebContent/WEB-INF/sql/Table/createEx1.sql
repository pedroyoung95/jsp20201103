--테이블 정의 시, 칼럼 정의가 꼭 필요
--*데이터 타입 이름이 데이터베이스 프로그램마다 다름
--데이터 타입(책 17쪽)
--수 : NUMBER
--NUMBER(값)  : 값이 3이면 1000이상 표시 못 함
--NUMBER(값1, 값2) : 값1은 총 길이, 값2는 소수점 밑의 길이
--ex>NUMBER(3, 2)  : 10이상 표시 못 함

--문자열
--VARCHAR2(값) : 가변길이 / 값은 byte 수
--CHAR(값) : 고정길이 / 값은 byte수

--날짜시간 : DATE
CREATE TABLE table1 (
    col1 NUMBER(3, 1), --숫자 길이가 총 3자리, 소수 밑으로 1자리까지
    col2 VARCHAR2(6), --가변길이 문자열, 6byte까지
    col3 CHAR(4), --고정길이 문자열 4byte까지
    col4 DATE --날짜시간
);
SELECT * FROM table1;
DESC table1; --테이블 정보 확인

CREATE TABLE dept(
    dno NUMBER(2), --숫자 길이 총 2자리까지 저장
    dname VARCHAR2(14), --가변길이 문자열 14byte까지
    loc VARCHAR2(13)); --가변길이 문자열 13byte까지
    
SELECT * FROM dept;



--서브쿼리로 테이블 작성 시, 칼럼을 꼭 정의할 필요X
--만약 칼럼을 명시적으로 정의한다면, 칼럼 수, 데이터 타입이  서브쿼리와 일치해야 함
CREATE TABLE dept_second
AS 
SELECT *
FROM department;

SELECT * FROM dept_second;

CREATE TABLE dept20
AS
SELECT eno, ename, salary *12 annsal
FROM employee
WHERE dno = 20;

SELECT * FROM dept20;

CREATE TABLE dept_third
AS
SELECT dno, dname
FROM DEPT
WHERE 0=1;

SELECT * FROM dept_third;
