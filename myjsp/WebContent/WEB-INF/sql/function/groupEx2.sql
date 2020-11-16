SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee GROUP BY job; --특정 칼럼을 기준으로 그룹함 수 실행(여기선 job 별로 그룹화)
--MAX그룹함수의 결과가 job 칼럼의 행 개수와 일치하므로, 그룹함수와 그룹함수의 기준이 되는 칼럼을 동시에 select할 수 있음

SELECT dno as "부서번호", AVG(salary) AS "급여 평균"
FROM employee GROUP BY dno;

SELECT AVG(salary) AS "급여 평균" FROM employee GROUP BY dno;

--SELECT dno, ename, AVG(salary) FROM employee GROUP BY dno; ->그룹화 하지 않은 칼럼을 select 할 수 없음
SELECT dno, job, count(*), SUM(salary) 
FROM employee
GROUP BY dno, job
ORDER BY dno, job; --여러 칼럼을 그룹화해야 그 그룹들을 select 할 수 있음
--이 경우, salary의 sum그룹함수 결과는 부서번호와 직업 별로 계산됨

SELECT job, AVG(salary) FROM employee
WHERE job = 'CLERK'
GROUP BY job;
--SELECT job, AVG(salary) FROM employee
--WHERE AVG(salary) > = 3000
--GROUP BY job;
SELECT job, AVG(salary) FROM employee
GROUP BY job
HAVING AVG(salary) >= 3000; --그룹함수의 조건을 거는 HAVING 키워드

SELECT dno, MAX(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

SELECT job, count(*), SUM(salary)
FROM employee
WHERE job not like '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >= 5000
ORDER BY SUM(salary);

SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

--혼자해보기
SELECT * FROM employee;
--1번
SELECT MAX(salary) AS "Maximum",
    MIN(salary) AS "Mininum",
    SUM(salary) AS "Sum",
    ROUND(AVG(salary)) AS "Average"
FROM employee;    

--2번
SELECT job AS "Job",
    MAX(salary) AS "Maximum",
    MIN(salary) AS "Mininum",
    SUM(salary) AS "Sum",
    ROUND(AVG(salary)) AS "Average"
FROM employee
GROUP BY job;    

--3번
SELECT job AS "JOB", COUNT(*)
FROM employee
GROUP BY job;

--4번
SELECT COUNT(manager) FROM employee;

--5번
SELECT MAX(salary)-MIN(salary) AS "DIFFERENCE" FROM employee;

--6번
SELECT job, MIN(salary)
FROM employee
WHERE manager IS NOT NULL
GROUP BY job
HAVING NOT MIN(salary) < 2000
ORDER BY MIN(salary) DESC;
SELECT job, MIN(salary)
FROM employee
GROUP BY job
HAVING NOT MIN(salary) < 2000
ORDER BY MIN(salary) DESC;

--7번
SELECT dno, COUNT(*), ROUND(AVG(salary), 2)
FROM employee
GROUP BY dno
ORDER BY dno;

--8번 
SELECT DECODE(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') AS "dname",
    DECODE(dno, 10, 'NEW YORK',
                20, 'DALLAS',
                30, 'CHICAGO',
                40, 'BOSTON') AS "Location",
    COUNT(*) AS "Number of People",
    ROUND(AVG(salary)) AS "Salary"
FROM employee
GROUP BY dno;    

--9번
SELECT job, dno, 
    DECODE(dno, 10, SUM(salary)) AS "부서 10", 
    DECODE(dno, 20, SUM(salary)) AS "부서 20", 
    DECODE(dno, 30, SUM(salary)) AS "부서 30", 
    SUM(salary) AS "총액"
FROM employee
GROUP BY job, dno
ORDER BY dno;