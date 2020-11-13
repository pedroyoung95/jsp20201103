SELECT sysdate FROM dual; --dual table�� �⺻ ����Ǿ��ִ� ���̺�

SELECT LOWER(ename) AS ename FROM employee; --��Ī�� ����ϸ� jsp���Ͽ��� ª�� �ۼ� ����
SELECT UPPER(ename) AS NAME FROM employee;
SELECT initcap(ename) AS NAME FROM employee;
SELECT initcap('oracle mania') AS NAME FROM dual;

SELECT 'oracle mania',
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    initcap('Oracle mania') FROM dual;
    
SELECT ename, LOWER(ename), JOB, initcap(JOB) FROM employee;

SELECT eno, ename, dno FROM employee WHERE LOWER(ename)='scott';

SELECT eno, ename, dno FROM employee WHERE initcap(ename)='Scott';

SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) AS LENGTH FROM employee;
SELECT LENGTH('�����α׷���') FROM dual;
SELECT ename, lengthb(ename) len FROM employee;
SELECT lengthb('�����α׷���') FROM dual; --�ѱ��� 3byte�̹Ƿ�, ����Ʈ ���̰� ���� ���̿� 2��

SELECT LENGTH('OracleMania'), LENGTH('����Ŭ�ŴϾ�') FROM dual;
SELECT lengthb('OracleMania'), lengthb('����Ŭ�ŴϾ�') FROM dual;

SELECT CONCAT(ename, JOB) FROM employee; --concat(para1, para2) : �� ���ڿ��� ���ϴ� �Լ�
SELECT ename || ', ' || JOB FROM employee; -- ||������ : ���ڿ��� ���ϴ� ������(���ϴ� ���ڿ� ���� ���� ����)

SELECT ename, substr(ename, 1, 3) FROM employee; --sql������ ���ڿ��� �ε����� 1���� ����
--SUBSTR(�����ҹ��ڿ�, �����ε�����ȣ, �����ҹ��ڰ���)
SELECT ename, substr(ename, -2, 2) FROM employee; --�Ųٷ� ���� ���� �ε��� ��� ����

SELECT 'Oracle', 'mania', CONCAT('Oracle', 'mania') FROM dual;
SELECT substr('Oracle mania', 4, 3),
    substr('Oracle mania', -4, 3) FROM dual;
SELECT * FROM employee WHERE substr(ename, -1, 1)='N';
SELECT * FROM employee WHERE substr(hiredate, 1, 2)='87';
SELECT * FROM employee WHERE substr(to_char(hiredate, 'yyyy-mm-dd'), 1, 4)='1987'; --��¥�� ���ڷ� �����ؼ� ����ϴ� ���� ����

SELECT ename, instr(ename, 'A') FROM employee; 
--instr(���, ã������, ������ġ, �� ��° �߰�) 
--ã�� ���ڰ� ������ 0
select instr('Tiger Tea Tire Table Tablet Ton', 'T', 2, 2) from employee;
select instr('Oracle mania', 'a') from dual;
select instr('Oracle mania', 'a', 5, 2) from dual; 
--3��° �Ķ���� : Ž�� ���� ��ġ / 4��° �Ķ���� : ã������ ���ڰ� ���� ���̸� �� �� �� ��° �������� ����
select * from employee where instr(ename, 'R', 3, 1)=3;
select * from employee where instr(ename, 'R')=3; --���� 3, 4��° �Ķ���Ͱ� �־�� �ϳ�?
