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

--���� �� ���� ����
/*
IN ���� �ϳ��� ������
ANY, SOME �ϳ� �̻��� �����ϸ�
ALL ��� �����ϸ�
*/
SELECT dno FROM department
WHERE dno <= 20;

SELECT ename, dno FROM employee 
WHERE dno IN (SELECT dno 
                FROM department
                WHERE dno <= 20); --IN : ���� ������ ������� �ϳ��� ��ġ�ϴ� �� ������ ��

SELECT eno, ename FROM employee
WHERE (dno, salary) IN (SELECT dno, MIN(salary) FROM employee
                    GROUP BY dno); --���� �÷��� �������� �� �� ���� 
                    
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY(SELECT salary FROM employee WHERE job = 'SALESMAN')
AND job != 'SALESMAN'; --ANY�� ������ ������ ���̱� ������, �ְ� ������ �۰ų� �ּ� ������ ũ�⸸ �ϸ� true
--ANY�� ����� SOME�� �����ϱ� ������ SOME�� �ٲ㵵 ����

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL (SELECT salary FROM employee WHERE job = 'SALESMAN')
AND job ! ='SALESMAN';
                    
--ȥ���غ���

--1��
SELECT ename, job FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

--2��
SELECT ename, job FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--3��
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

--4��
    --SELECT job, ROUND(AVG(salary),1) FROM employee GROUP BY job;
SELECT job, ROUND(AVG(salary), 1) FROM employee
GROUP BY job
HAVING ROUND(AVG(salary), 1)  = (SELECT MIN(ROUND(AVG(salary),1)) FROM employee GROUP BY job);

--5��
SELECT ename, salary, dno FROM employee
WHERE salary IN (SELECT MIN(salary) FROM employee GROUP BY dno);

SELECT eno, ename, job, salary FROM employee
WHERE job != 'SALESMAN' AND salary <ANY (SELECT salary FROM employee WHERE job = 'SALESMAN');

SELECT eno, ename, job, salary FROM employee 
WHERE job != 'SALESMAN' AND salary <ALL (SELECT salary FROM employee WHERE job = 'SALESMAN'); 

--ȥ���غ���

--6��
SELECT eno, ename, job, salary FROM employee 
WHERE job != 'ANALYST' AND salary < ANY (SELECT salary FROM employee WHERE job = 'ANALYST');

--7�� 
SELECT ename FROM employee
WHERE eno IN (SELECT eno FROM employee WHERE manager IS NULL);

--8��
SELECT ename FROM employee
WHERE eno IN (SELECT eno FROM employee WHERE manager IS NOT NULL);

--9��
SELECT ename, hiredate FROM employee 
WHERE dno = (SELECT dno FROM employee WHERE ename = 'BLAKE' ) and ename != 'BLAKE';

--10��
SELECT eno, ename FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee)
ORDER BY salary;

--11��
SELECT eno, ename FROM employee
WHERE dno in (SELECT dno FROM employee WHERE ename LIKE '%K%');

--12��
SELECT ename, dno, job FROM employee
WHERE dno = (SELECT dno FROM department WHERE loc = 'DALLAS');

--13��
SELECT ename, salary FROM employee
WHERE manager = (SELECT eno FROM employee WHERE ename='KING');

--14��
SELECT dno, ename, job FROM employee
WHERE dno = (SELECT dno FROM department WHERE dname = 'RESEARCH');

--15��
SELECT eno, ename, salary FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee)
AND dno IN (SELECT dno FROM employee WHERE ename LIKE '%M%');

--16��
SELECT job, AVG(salary) FROM employee
GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary)) FROM employee GROUP BY job);

--17��
SELECT ename FROM employee 
WHERE eno in (SELECT manager FROM employee);

SELECT * FROM employee;

