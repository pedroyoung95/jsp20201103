--숫자 타입
CREATE TABLE  data_type_ex1(
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3, 2)
);
INSERT INTO data_type_ex1 (num1)  VALUES(0);
INSERT INTO data_type_ex1 (num1)  VALUES(0.01);
INSERT INTO data_type_ex1 (num1)  VALUES(9999999999999); --NUMBER를 파라미터 없이 타입을 설정하면 거의 대부분의 자리 수 받을 수 있음

INSERT INTO data_type_ex1 (num2) VALUES(0);
INSERT INTO data_type_ex1 (num2) VALUES(5.5); --소수점 자리수를 허용하지 않았으므로 반올림
INSERT INTO data_type_ex1 (num2) VALUES(99);
INSERT INTO data_type_ex1 (num2) VALUES(100); --자리수 넘어가는 자료는 추가가 안 됨

INSERT INTO data_type_ex1 (num3) VALUES(0.01);
INSERT INTO data_type_ex1 (num3) VALUES(0.015); --반올림 해서 자리수 맞춤
INSERT INTO data_type_ex1 (num3) VALUES(10.015); --불가
COMMIT;
SELECT * FROM data_type_ex1;

--문자열
CREATE TABLE data_type_ex2(
    char1 CHAR(3), --고정길이 문자열, 3byte 저장
    vchar2 VARCHAR2(6) --가변길이 문자열,  6byte 저장
);
INSERT INTO data_type_ex2(char1) VALUES('');
INSERT INTO data_type_ex2(char1) VALUES('a'); --고정길이이므로, 빈칸을 만들어서 꼭 정해진 byte를 채움
INSERT INTO data_type_ex2(char1) VALUES('abc');
INSERT INTO data_type_ex2(char1) VALUES('abcd');

INSERT INTO data_type_ex2(vchar2) VALUES('abc'); --가변길이이므로, byte가 남으면 채우지 않음
INSERT INTO data_type_ex2(vchar2) VALUES('abcdef');
INSERT INTO data_type_ex2(vchar2) VALUES('abcdefg');
INSERT INTO data_type_ex2(vchar2)VALUES('한');
INSERT INTO data_type_ex2(vchar2)VALUES('한글');
INSERT INTO data_type_ex2(vchar2)VALUES('한글날'); --현 sql프로그램은 한글을 3byte로 계산함
COMMIT;
SELECT * FROM data_type_ex2;

--날짜
--DATE
CREATE TABLE data_type_ex3(
    date1 DATE
);
SELECT sysdate FROM DUAL;
INSERT INTO data_type_ex3 VALUES(sysdate);
INSERT INTO data_type_ex3 VALUES('2020/11/01'); --프로그램 혹은 버전 마다 받을 수 있는 날짜 형식이 다를 수 있음
INSERT INTO data_type_ex3 VALUES(TO_DATE('2020-11-10', 'YYYY-MM-DD'));
INSERT INTO data_type_ex3 VALUES(TO_DATE('2020-09-09 17:33:22', 'YYYY-MM-DD HH24:MI:SS'));
SELECT * FROM data_type_ex3;
SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS')
FROM data_type_ex3; --시간을 안 적은 값은 00:00:00으로 입력됨
COMMIT;

INSERT INTO emp_copy
VALUES(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);
SELECT * FROM emp_copy;

INSERT INTO emp_copy
VALUES(7010, 'TOM', 'MANAGER', TO_DATE('2012, 05, 01' , 'YYYY, MM, DD'), 20);
SELECT * FROM emp_copy;

INSERT INTO emp_copy
VALUES(7020, 'JERRY', 'SALESMAN', SYSDATE, 30);
SELECT * FROM emp_copy;
COMMIT;

--혼자해보기

--1번
CREATE TABLE emp_insert
AS
SELECT * FROM employee WHERE 0=1;
DESC emp_insert;
SELECT * FROM emp_insert;

--2번
INSERT INTO emp_insert
VALUES(1, 'JEONGTY', 'STUDENT', '', SYSDATE, 2700, 230, 10);
SELECT * FROM emp_insert;

--3번
INSERT INTO emp_insert
VALUES(2, 'AHNHJ', 'STUDENT', NULL, SYSDATE-1,  1150, NULL,20);
SELECT * FROM emp_insert;

--4번
DROP TABLE emp_copy;
CREATE TABLE emp_copy 
AS
SELECT * FROM employee;
DESC emp_copy;
SELECT * FROM emp_copy;

DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;
SELECT * FROM dept_copy;
INSERT INTO dept_copy
SELECT * FROM department; --INSERT INTO문 뒤에 SELEECT문을 이어 작성하면 테이블 내용 자체를 추가
SELECT * FROM dept_copy;
