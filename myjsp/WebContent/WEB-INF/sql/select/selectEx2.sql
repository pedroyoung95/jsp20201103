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