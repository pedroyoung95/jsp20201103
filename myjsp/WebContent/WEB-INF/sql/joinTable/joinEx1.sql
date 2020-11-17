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

--5��
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno AND ename = '%A%';
