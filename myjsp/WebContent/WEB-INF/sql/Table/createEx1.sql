--���̺� ���� ��, Į�� ���ǰ� �� �ʿ�
--*������ Ÿ�� �̸��� �����ͺ��̽� ���α׷����� �ٸ�
--������ Ÿ��(å 17��)
--�� : NUMBER
--NUMBER(��)  : ���� 3�̸� 1000�̻� ǥ�� �� ��
--NUMBER(��1, ��2) : ��1�� �� ����, ��2�� �Ҽ��� ���� ����
--ex>NUMBER(3, 2)  : 10�̻� ǥ�� �� ��

--���ڿ�
--VARCHAR2(��) : �������� / ���� byte ��
--CHAR(��) : �������� / ���� byte��

--��¥�ð� : DATE
CREATE TABLE table1 (
    col1 NUMBER(3, 1), --���� ���̰� �� 3�ڸ�, �Ҽ� ������ 1�ڸ�����
    col2 VARCHAR2(6), --�������� ���ڿ�, 6byte����
    col3 CHAR(4), --�������� ���ڿ� 4byte����
    col4 DATE --��¥�ð�
);
SELECT * FROM table1;
DESC table1; --���̺� ���� Ȯ��

CREATE TABLE dept(
    dno NUMBER(2), --���� ���� �� 2�ڸ����� ����
    dname VARCHAR2(14), --�������� ���ڿ� 14byte����
    loc VARCHAR2(13)); --�������� ���ڿ� 13byte����
    
SELECT * FROM dept;



--���������� ���̺� �ۼ� ��, Į���� �� ������ �ʿ�X
--���� Į���� ��������� �����Ѵٸ�, Į�� ��, ������ Ÿ����  ���������� ��ġ�ؾ� ��
CREATE TABLE dept_second
AS 
SELECT *
FROM department;

SELECT * FROM dept_second;

CREATE TABLE dept20
AS
SELECT eno, ename, salary *12 annsal
FROM employee
WHERE dno = 20;

SELECT * FROM dept20;

CREATE TABLE dept_third
AS
SELECT dno, dname
FROM DEPT
WHERE 0=1;

SELECT * FROM dept_third;
