SELECT * FROM employee; --14개 행, 8개 열
SELECT * FROM department; --4개 행, 3개 열
SELECT * FROM employee, department; --두 테이블을 comma로 나열
--열은 두 테이블의 열을 합친 값
--행은 두 테이블의 행을 곱한 값

SELECT eno, ename, dname FROM employee, department; --서로 다른 이름의 칼럼은 칼럼명을 지정안해도 됨
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department; --이름이 같은 칼럼은 어떤 테이블의 칼럼인지 명시를 해줘야 함

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

--equi join
SELECT * FROM employee, department WHERE employee.dno = department.dno;
SELECT eno, ename, dname FROM employee, department
WHERE employee.dno = department.dno and eno = 7788;
SELECT eno, ename, dname, employee.dno FROM employee, department 
WHERE employee.dno = department.dno AND eno = 7788;

--테이블 별칭 부여
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno AND e.eno = 7788; --테이블에 별칭은 공백을 두고 별칭 지정

--혼자해보기

--1번
SELECT ename, e.dno, dname 
FROM employee e, department d
WHERE e.dno = d.dno AND ename = 'SCOTT';

--2번
SELECT ename, dname, loc FROM employee e JOIN department d ON e.dno = d.dno;

--3번
SELECT dno, job, loc FROM employee JOIN department USING(dno) WHERE dno = 10;

--4번
SELECT ename, dname, loc FROM employee NATURAL JOIN department WHERE commission IS NOT NULL;

--5번
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno AND ename like '%A%';

--6번
SELECT ename, job, dno, dname FROM employee NATURAL JOIN department WHERE loc = 'NEW YORK';

--join keyword(INNER JOIN, JOIN이라는 키워드를 안에 작성하는 조인 방법)
SELECT * FROM employee NATURAL JOIN department; --NATURAL JOIN 공통 칼럼을 조사한 후 자동으로 조인 수행(같은 칼럼명이 존재해야 함)
SELECT * FROM employee e NATURAL JOIN department
WHERE e.eno=7788; --공통 칼럼이 이름과 타입 둘 다 같아야 함

--JOIN USING
SELECT * FROM employee JOIN department USING(dno); --기준이 되는 공통칼럼을 USING으로 지정(공통 칼림이 이름만 같아도 됨)
    --NATURAL JOIN과 결과가 동일
SELECT e.eno, e.ename, d.dname, dno
FROM employee e JOIN department d USING(dno)
WHERE e.eno = 7788; --NATURAL JOIN, JOIN USING은 공통칼럼을 알아서 조사하므로, 모호성 신경 안 써도 됨

--JOIN ON
SELECT * FROM employee e JOIN department d ON e.dno = d.dno; --칼럼명, 칼럼타입 모두 달라도 JOIN기준을 설정 가능
SELECT * FROM employee e JOIN department d ON e.dno = d.dno
WHERE eno = 7788;
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e JOIN department d 
ON e.dno = d.dno
WHERE eno = 7788; --on은 키워드를 안 쓰는 join과 마찬가지로, 공통 칼럼의 모호성을 제거해줘야 함
