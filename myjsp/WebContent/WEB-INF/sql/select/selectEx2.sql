--Ű����� �빮��, Į���̳� ���̺� �̸��� �ҹ��ڷ� �ۼ��ϴ°� ����
--WHERE : ���ϴ� �ڷḦ ��󳻴� ���� ����
select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH'; -- '=' ��ȣ �ϳ��� '����'�� �ǹ�
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000; --���� �����ʹ� ����ǥ ���� �ۼ�
SELECT * FROM employee WHERE ename <= 'G'; --�̸� ���ĺ��� G���� �� ���������� ����� �ڷḸ ����
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH'; --<>�� '���� �ʴ�'�� �ǹ�
SELECT * FROM employee WHERE ename ^= 'SMITH'; --^=�� '���� �ʴ�'�� �ǹ�
SELECT * FROM employee WHERE hiredate = '1981/02/20'; --��¥�����ʹ� 'yyyy/mm/dd' �������� ǥ��

SELECT * FROM employee WHERE salary >= 1500;
SELECT * FROM employee WHERE dno = 10;
SELECT * FROM employee WHERE ename = 'SCOTT';
SELECT * FROM employee WHERE hiredate <= '1981/01/01';

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000;
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR salary >3000;
SELECT * FROM employee WHERE NOT salary > 3000;
SELECT * FROM employee WHERE ename > 'C' AND salary > 2000 AND dno != 30;

SELECT * FROM employee WHERE dno = 10 AND job='MANAGER';
SELECT * FROM employee WHERE dno = 10 OR job='MANAGER';
SELECT * FROM employee WHERE NOT dno = 10;
SELECT * FROM employee WHERE dno <> 10;
SELECT * FROM employee WHERE salary >= 1000 AND salary <= 1500;
SELECT * FROM employee WHERE salary < 1000 OR salary >1500;
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;

SELECT * FROM employee WHERE salary BETWEEN 1000 AND 1500;
SELECT * FROM employee WHERE salary >= 1000 AND salary <= 1500;
SELECT * FROM employee WHERE salary NOT BETWEEN 1000 AND 1500;
SELECT * FROM employee WHERE salary < 1000 OR salary > 1500;
SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee WHERE commission IN(300, 500, 1400);
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;
SELECT * FROM employee WHERE commission NOT IN (300, 500, 1400);
SELECT * FROM employee WHERE commission != 300 AND commission != 500 AND commission != 1400;

--ȥ�� �غ��� p.65~
SELECT ename, salary, salary+300 FROM employee;

SELECT ename, salary, salary*12+100 FROM employee ORDER BY salary*12+100 DESC;
SELECT ename, salary, salary*12+100 AS "���� �Ѽ���" FROM employee ORDER BY "���� �Ѽ���" DESC;

SELECT ename, salary FROM employee WHERE salary > 2000 ORDER BY salary DESC;

SELECT ename, dno FROM employee WHERE eno = 7788;

SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

SELECT ename, job, hiredate FROM employee WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

SELECT ename, dno FROM employee WHERE dno BETWEEN 20 AND 30 ORDER BY ename ASC;

SELECT ename, salary, dno FROM employee WHERE salary BETWEEN 2000 AND 3000 AND dno BETWEEN 20 AND 30 ORDER BY ename;

SELECT ename, hiredate FROM employee WHERE hiredate LIKE '81%'; --�� 1981%�� �� �Ǵ���?

SELECT ename, JOB FROM employee WHERE MANAGER IS NULL;

SELECT ename, salary, commission FROM employee WHERE commission IS NOT NULL ORDER BY salary, commission;

SELECT ename FROM employee WHERE ename LIKE '__R%';

SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';

SELECT ename, JOB, salary FROM employee WHERE JOB IN ('CLERK', 'SALESMAN') AND salary NOT IN (950, 1600, 1300);

SELECT ename, salary, commission FROM employee WHERE commission >= 500;