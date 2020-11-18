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