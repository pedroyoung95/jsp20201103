SELECT sysdate FROM dual; --sysdate�� dual ���̺��� ����ؾ� ��
SELECT sysdate + 1 FROM dual; --��¥�� ���� ����
SELECT sysdate -1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, round(sysdate - hiredate) FROM employee;
SELECT sysdate-1 ����, sysdate ����, sysdate+1 ���� FROM dual;
SELECT round(sysdate - hiredate) �ٹ��ϼ� FROM employee; 

SELECT round(sysdate) FROM dual;--���ĸ� �Ѿ�� �ݿø��ؼ� �������� ����
SELECT round(sysdate, 'YEAR') FROM dual;--�� ���� �ݿø�
SELECT round(sysdate, 'MONTH') FROM dual;--�� ���� �ݿø�(�ش� ���� ������ ������ �������� ����)

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;
SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT ename, sysdate, hiredate, TRUNC(months_between(sysdate, hiredate)) FROM employee;

SELECT ename, hiredate, add_months(hiredate, 6) FROM employee;

SELECT sysdate, next_day(sysdate, '�����') FROM dual;

SELECT ename, hiredate, last_day(hiredate) FROM employee;
