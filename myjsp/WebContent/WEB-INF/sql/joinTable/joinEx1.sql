SELECT * FROM employee; --14�� ��, 8�� ��
SELECT * FROM department; --4�� ��, 3�� ��
SELECT * FROM employee, department; --�� ���̺��� comma�� ����
--���� �� ���̺��� ���� ��ģ ��
--���� �� ���̺��� ���� ���� ��

SELECT eno, ename, dname FROM employee, department; --���� �ٸ� �̸��� Į���� Į������ �������ص� ��
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department; --�̸��� ���� Į���� � ���̺��� Į������ ��ø� ����� ��

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

--equi join
SELECT * FROM employee, department WHERE employee.dno = department.dno;
SELECT eno, ename, dname FROM employee, department
WHERE employee.dno = department.dno and eno = 7788;
SELECT eno, ename, dname, employee.dno FROM employee, department 
WHERE employee.dno = department.dno AND eno = 7788;

--���̺� ��Ī �ο�
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno AND e.eno = 7788; --���̺� ��Ī�� ������ �ΰ� ��Ī ����

--ȥ���غ���

--1��
SELECT ename, e.dno, dname 
FROM employee e, department d
WHERE e.dno = d.dno AND ename = 'SCOTT';

--2��
SELECT ename, dname, loc FROM employee e JOIN department d ON e.dno = d.dno;

--3��
SELECT dno, job, loc FROM employee JOIN department USING(dno) WHERE dno = 10;

--4��
SELECT ename, dname, loc FROM employee NATURAL JOIN department WHERE commission IS NOT NULL;

--5��
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno AND ename like '%A%';

--6��
SELECT ename, job, dno, dname FROM employee NATURAL JOIN department WHERE loc = 'NEW YORK';

--join keyword(INNER JOIN, JOIN�̶�� Ű���带 �ȿ� �ۼ��ϴ� ���� ���)
SELECT * FROM employee NATURAL JOIN department; --NATURAL JOIN ���� Į���� ������ �� �ڵ����� ���� ����(���� Į������ �����ؾ� ��)
SELECT * FROM employee e NATURAL JOIN department
WHERE e.eno=7788; --���� Į���� �̸��� Ÿ�� �� �� ���ƾ� ��

--JOIN USING
SELECT * FROM employee JOIN department USING(dno); --������ �Ǵ� ����Į���� USING���� ����(���� Į���� �̸��� ���Ƶ� ��)
    --NATURAL JOIN�� ����� ����
SELECT e.eno, e.ename, d.dname, dno
FROM employee e JOIN department d USING(dno)
WHERE e.eno = 7788; --NATURAL JOIN, JOIN USING�� ����Į���� �˾Ƽ� �����ϹǷ�, ��ȣ�� �Ű� �� �ᵵ ��

--JOIN ON
SELECT * FROM employee e JOIN department d ON e.dno = d.dno; --Į����, Į��Ÿ�� ��� �޶� JOIN������ ���� ����
SELECT * FROM employee e JOIN department d ON e.dno = d.dno
WHERE eno = 7788;
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e JOIN department d 
ON e.dno = d.dno
WHERE eno = 7788; --on�� Ű���带 �� ���� join�� ����������, ���� Į���� ��ȣ���� ��������� ��
