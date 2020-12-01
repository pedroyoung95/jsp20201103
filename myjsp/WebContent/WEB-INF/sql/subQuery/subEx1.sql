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
                    
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY(SELECT salary FROM employee WHERE job = 'SALESMAN')
AND job != 'SALESMAN'; --ANY는 임의의 값과의 비교이기 때문에, 최고 값보다 작거나 최소 값보다 크기만 하면 true
--ANY의 결과는 SOME과 동일하기 때문에 SOME과 바꿔도 가능

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL (SELECT salary FROM employee WHERE job = 'SALESMAN')
AND job ! ='SALESMAN';
                    
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

SELECT eno, ename, job, salary FROM employee
WHERE job != 'SALESMAN' AND salary <ANY (SELECT salary FROM employee WHERE job = 'SALESMAN');

SELECT eno, ename, job, salary FROM employee 
WHERE job != 'SALESMAN' AND salary <ALL (SELECT salary FROM employee WHERE job = 'SALESMAN'); 

--혼자해보기

--6번
SELECT eno, ename, job, salary FROM employee 
WHERE job != 'ANALYST' AND salary < ANY (SELECT salary FROM employee WHERE job = 'ANALYST');

--7번 
SELECT ename FROM employee
WHERE eno IN (SELECT eno FROM employee WHERE manager IS NULL);

--8번
SELECT ename FROM employee
WHERE eno IN (SELECT eno FROM employee WHERE manager IS NOT NULL);

--9번
SELECT ename, hiredate FROM employee 
WHERE dno = (SELECT dno FROM employee WHERE ename = 'BLAKE' ) and ename != 'BLAKE';

--10번
SELECT eno, ename FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee)
ORDER BY salary;

--11번
SELECT eno, ename FROM employee
WHERE dno in (SELECT dno FROM employee WHERE ename LIKE '%K%');

--12번
SELECT ename, dno, job FROM employee
WHERE dno = (SELECT dno FROM department WHERE loc = 'DALLAS');

--13번
SELECT ename, salary FROM employee
WHERE manager = (SELECT eno FROM employee WHERE ename='KING');

--14번
SELECT dno, ename, job FROM employee
WHERE dno = (SELECT dno FROM department WHERE dname = 'RESEARCH');

--15번
SELECT eno, ename, salary FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee)
AND dno IN (SELECT dno FROM employee WHERE ename LIKE '%M%');

--16번
SELECT job, AVG(salary) FROM employee
GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary)) FROM employee GROUP BY job);

--17번
SELECT ename FROM employee 
WHERE eno in (SELECT manager FROM employee);

SELECT * FROM employee;

