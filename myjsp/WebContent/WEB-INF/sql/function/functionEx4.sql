SELECT to_char(sysdate, 'mon') FROM dual;
SELECT to_char(sysdate, 'hh') FROM dual;
SELECT to_char(sysdate, 'hh24') FROM dual;
SELECT to_char(sysdate, 'hh24:mi:ss') FROM dual; --��¥ �� �ð� ���� �� ��ȣ�� /, -, : �ƹ��ų� ���ų� �� �ᵵ ��
SELECT ename, hiredate, 
    to_char(hiredate, 'yy-mm'),
    to_char(hiredate, 'YYYY/MM/DD DAY')
FROM employee;    
SELECT to_char(sysdate, 'yyyy/mm/dd, hh24:mi:ss') FROM dual;
SELECT ename, to_char(salary, 'L999,999') FROM employee; --L�� ���̸� ��ȭ��ȣ�� ��.
SELECT to_char(9956789, '999,999,999') FROM dual; --�� ��° �Ķ���ʹ� ��ü �ڸ����� ����
SELECT to_char(9956789, '000,000,000') FROM dual; --�� �ڸ����� 0���� ä����
SELECT to_char(9956789, '999,999,999.999') FROM dual;
SELECT to_char(9956789, '999,999,999.000') FROM dual;

SELECT TO_DATE('20201113', 'yyyymmdd') FROM dual;
SELECT
to_char(
    TO_DATE('2020-11-13 01:30:20', 'yyyy-mm-dd hh:mi:ss')
    , 'yyyy-mm-dd hh:mi:ss')
FROM dual;    
SELECT ename, hiredate 
FROM employee 
WHERE hiredate=TO_DATE(19810220, 'yyyymmdd');

SELECT to_number('100,000', '999,999') - to_number('50,000', '999,999') FROM dual;

--ȥ���غ��� p.137~
--1��
SELECT substr(hiredate, 1, 2) �⵵, substr(hiredate, 4, 2) �� FROM employee;

--2��
SELECT * FROM employee WHERE substr(hiredate, 4, 2)='04';

--3��
SELECT * FROM employee WHERE MOD(eno, 2) = 0;

--4��
SELECT hiredate, to_char(hiredate, 'yy/mon/dd dy') FROM employee;--�ϼ��� ���� ǥ�� ���� �ݵ�� �������� �����ؾ� ��!

--5��
SELECT TRUNC(sysdate - TO_DATE(20200101, 'yyyy/mm/dd')) FROM dual;