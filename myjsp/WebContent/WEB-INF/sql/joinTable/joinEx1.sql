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

--5번
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno AND ename = '%A%';
