SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee GROUP BY job; --Ư�� Į���� �������� �׷��� �� ����(���⼱ job ���� �׷�ȭ)
--MAX�׷��Լ��� ����� job Į���� �� ������ ��ġ�ϹǷ�, �׷��Լ��� �׷��Լ��� ������ �Ǵ� Į���� ���ÿ� select�� �� ����

SELECT dno as "�μ���ȣ", AVG(salary) AS "�޿� ���"
FROM employee GROUP BY dno;

SELECT AVG(salary) AS "�޿� ���" FROM employee GROUP BY dno;

--SELECT dno, ename, AVG(salary) FROM employee GROUP BY dno; ->�׷�ȭ ���� ���� Į���� select �� �� ����
SELECT dno, job, count(*), SUM(salary) 
FROM employee
GROUP BY dno, job
ORDER BY dno, job; --���� Į���� �׷�ȭ�ؾ� �� �׷���� select �� �� ����
--�� ���, salary�� sum�׷��Լ� ����� �μ���ȣ�� ���� ���� ����

SELECT job, AVG(salary) FROM employee
WHERE job = 'CLERK'
GROUP BY job;
--SELECT job, AVG(salary) FROM employee
--WHERE AVG(salary) > = 3000
--GROUP BY job;
SELECT job, AVG(salary) FROM employee
GROUP BY job
HAVING AVG(salary) >= 3000; --�׷��Լ��� ������ �Ŵ� HAVING Ű����

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

--ȥ���غ���
SELECT * FROM employee;
--1��
SELECT MAX(salary) AS "Maximum",
    MIN(salary) AS "Mininum",
    SUM(salary) AS "Sum",
    ROUND(AVG(salary)) AS "Average"
FROM employee;    

--2��
SELECT job AS "Job",
    MAX(salary) AS "Maximum",
    MIN(salary) AS "Mininum",
    SUM(salary) AS "Sum",
    ROUND(AVG(salary)) AS "Average"
FROM employee
GROUP BY job;    

--3��
SELECT job AS "JOB", COUNT(*)
FROM employee
GROUP BY job;

--4��
SELECT COUNT(manager) FROM employee;

--5��
SELECT MAX(salary)-MIN(salary) AS "DIFFERENCE" FROM employee;

--6��
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

--7��
SELECT dno, COUNT(*), ROUND(AVG(salary), 2)
FROM employee
GROUP BY dno
ORDER BY dno;

--8�� 
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

--9��
SELECT job, dno, 
    DECODE(dno, 10, SUM(salary)) AS "�μ� 10", 
    DECODE(dno, 20, SUM(salary)) AS "�μ� 20", 
    DECODE(dno, 30, SUM(salary)) AS "�μ� 30", 
    SUM(salary) AS "�Ѿ�"
FROM employee
GROUP BY job, dno
ORDER BY dno;