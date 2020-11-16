SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission AS NUM FROM employee; --null�� ����ϸ� null�� ����(null�� ó���ؾ� ��)
SELECT ename, commission, nvl(commission, 0) FROM employee;

SELECT ename, salary, commission,
    nvl(commission, 0),
    salary*12+nvl(commission, 0)
FROM employee
ORDER BY JOB;    

SELECT ename, salary, commission,
    nvl2(commission, salary * 12 + commission, salary * 12) 
--NVL2(expr1, expr2, expr3) : expr1�� null�� �ƴϸ� expr2 ��ȯ, null�̸� expr3 ��ȯ
FROM employee
ORDER BY JOB;

SELECT nullif('A', 'A'), nullif('A', 'B') FROM dual;

SELECT COALESCE('a', 'b', NULL, 'c') FROM dual;
SELECT COALESCE(NULL, 'b', 'a', 'c') FROM dual;
SELECT COALESCE(NULL, NULL, 'd', 'c') FROM dual;
SELECT ename, salary, commission, COALESCE(commission, salary, 0) FROM employee ORDER BY JOB;

SELECT ename, dno,
    decode(dno, 10, 'ACCOUNTING',
                20, 'RESEARCH',
                30, 'SALES',
                40, 'OPERATIONS',
                'DEFAULT') AS dname
FROM employee ORDER BY dno; --swictch case ���� ����

SELECT ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNITING'
         WHEN dno=20 THEN 'RESEARCH'
         WHEN dno=30 THEN 'SALES'
         WHEN dno=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
    END AS DNAME
FROM employee ORDER BY dno;    

--ȥ���غ���
select * from employee;
--6��
SELECT eno, ename, NVL2(manager, manager, 0) FROM employee ORDER BY eno;

--7��
SELECT eno, ename, job, salary, 
    DECODE(job, 'ANAYLYST', salary+200,
                'SALESMAN', salary+180,
                'MANAGER', salary+150,
                'CLERK', salary+100,
                salary) AS update_salary 
FROM employee ORDER BY eno;
