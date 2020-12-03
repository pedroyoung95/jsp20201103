--KEY : 각 레코드(row)를 유의하게 구분할 수 있는 컬럼
--이메일을 UNIQUE에 따라 작성하면 각 이메일 값은 row마다 다르므로, row를 구분하게 만들어주는 컬럼, 즉 KEY가 됨
--이름, 주소, 생일 총 3개의 여러 개 칼럼의 조합으로 각 row를 구분하는 KEY가 될 수 있음
CREATE TABLE const05(
    email VARCHAR2(30),
    name VARCHAR2(30),
    ssn VARCHAR2(30),
    address VARCHAR2(30),
    birth DATE
);
SELECT * FROM const05;

--PRIMARY KEY
--각 레코드를 유일하게 구분하는 칼럼
--유의할 점 : 변하지 않는 값 -> 키 칼럼을 새로 만들기 추천  ex>자동으로 늘어나는 정수

CREATE TABLE const06(
    id NUMBER PRIMARY KEY, --키 칼럼은 NOT NULL UNIQUE 제약사항이 필요한데, PRIMARY KEY 키워드가 한 번에 그 기능을 담당
    name VARCHAR2(30)
);
INSERT INTO const06 VALUES(1, 'a');
INSERT INTO const06 VALUES(NULL, 'b');
INSERT INTO const06 VALUES(1, 'c');
INSERT INTO const06 VALUES(2, 'd');
SELECT * FROM const06;

--FOREIGN KEY
CREATE TABLE const07_emp
AS 
SELECT * FROM employee;

CREATE TABLE const07_dep
AS
SELECT * FROM department;

SELECT eno, ename, dno FROM const07_emp;
SELECT * FROM const07_dep;
INSERT INTO const07_emp(eno, ename, dno)
VALUES(8787, 'abc', 50);
COMMIT;

DESC department;
CREATE TABLE const08_dep(
    dno NUMBER(2) PRIMARY KEY,
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);
INSERT INTO const08_dep
SELECT * FROM department;
SELECT * FROM const08_dep;

CREATE TABLE const08_emp(
    name VARCHAR2(30), 
    dno NUMBER(2) REFERENCES const08_dep --dno칼럼은 다른 테이블의 PRIMARY KEY칼럼을 참조하게 됨(dno칼럼은 참조 키가 됨)
);
INSERT INTO const08_emp(name, dno)
VALUES('a', 10);
INSERT INTO const08_emp(name, dno)
VALUES('b', 50);
INSERT INTO const08_emp(name, dno)
VALUES('c', NULL); --FOREIGN KEY는 NULL값과 무관함
COMMIT;