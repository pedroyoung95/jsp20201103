SELECT manager FROM employee WHERE eno = 7499;
SELECT ename FROM employee WHERE eno = 7698;
SELECT ename FROM employee 
WHERE eno = (SELECT manager
                FROM employee 
                WHERE eno = 7499);

SELECT ename, dno
FROM employee
WHERE dno = (SELECT dno
                FROM employee
                WHERE ename ='SCOTT');
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);
SELECT dno, min(salary) FROM employee
GROUP BY dno 
HAVING MIN(salary) > (SELECT MIN(salary) FROM employee WHERE dno = 30);

SELECT ename FROM employee
WHERE salary = (SELECT salary FROM employee WHERE eno = 7499);

--다중 행 서브 쿼리
/*
IN 값이 하나라도 있으면
ANY, SOME 하나 이상이 만족하면
ALL 모두 만족하면
*/
SELECT dno FROM department
WHERE dno <= 20;

SELECT ename, dno FROM employee 
WHERE dno IN (SELECT dno 
                FROM department
                WHERE dno <= 20); --IN : 서브 쿼리의 결과값에 하나라도 일치하는 게 있으면 참

SELECT eno, ename FROM employee
WHERE (dno, salary) IN (SELECT dno, MIN(salary) FROM employee
                    GROUP BY dno); --여러 컬럼을 조건으로 걸 수 있음 
                    
--혼자해보기

--1번
SELECT ename, job FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

--2번
SELECT ename, job FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--3번
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

--4번
    --SELECT job, ROUND(AVG(salary),1) FROM employee GROUP BY job;
SELECT job, ROUND(AVG(salary), 1) FROM employee
GROUP BY job
HAVING ROUND(AVG(salary), 1)  = (SELECT MIN(ROUND(AVG(salary),1)) FROM employee GROUP BY job);

--5번
SELECT ename, salary, dno FROM employee
WHERE salary IN (SELECT MIN(salary) FROM employee GROUP BY dno);