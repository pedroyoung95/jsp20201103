SELECT sysdate FROM dual; --sysdate�� dual ���̺��� ����ؾ� ��
SELECT sysdate + 1 FROM dual; --��¥�� ���� ����
SELECT sysdate -1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;
SELECT sysdate-1 ����, sysdate ����, sysdate+1 ���� FROM dual;
SELECT ROUND(sysdate - hiredate) �ٹ��ϼ� FROM employee; 

SELECT ROUND(sysdate) FROM dual;--���ĸ� �Ѿ�� �ݿø��ؼ� �������� ����
SELECT ROUND(sysdate, 'YEAR') FROM dual;--�� ���� �ݿø�
SELECT ROUND(sysdate, 'MONTH') FROM dual;--�� ���� �ݿø�(�ش� ���� ������ ������ �������� ����)

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;
SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT
    MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd')) --TO_DATE : ���ڿ��� ��¥�� ��ȯ�ϴ� casting �Լ�
FROM dual;
SELECT
    MONTHS_BETWEEN(SYSDATE, TO_DATE('2021-01-13', 'yyyy-mm-dd'))
FROM dual;
SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) FROM employee;

SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

SELECT sysdate, NEXT_DAY(sysdate, '�����') FROM dual;

SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;
