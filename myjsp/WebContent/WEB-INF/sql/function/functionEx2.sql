SELECT round(345.1456) FROM dual; --�ݿø� �Լ�
SELECT round(345.1456, 1) FROM dual;
SELECT round(345.1456, 2) FROM dual;
SELECT round(345.1456, -1) FROM dual;
SELECT round(345.1456, -2) FROM dual;
SELECT 98.7654, round(98.7654),
                round(98.7654, 2),
                round(98.7654, -1)
FROM dual;

SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, 2) FROM dual;
SELECT TRUNC(345.1456, -1) FROM dual;
SELECT TRUNC(345.1456, -2) FROM dual;
SELECT 98.7654, TRUNC(98.7654),
                TRUNC(98.7654, 2),
                TRUNC(98.7654, -1)
FROM dual;

SELECT MOD(135, 3) FROM dual; --1�� �Ķ���͸� 2�� �Ķ���ͷ� ���� �������� ���ϴ� �Լ�
SELECT MOD(134, 2) FROM dual;
SELECT MOD(31, 2),
        MOD(31, 5),
        MOD(31, 8)
FROM dual;        
SELECT ename, salary, MOD(salary, 500) FROM employee;

select ceil(345.1456) from dual;
select abs(-15) from dual;
select power(3, 3) from dual; --���� ���ϴ� �Լ�
select sqrt(4) from dual; --������ ���ϴ� �Լ�