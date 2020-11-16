SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission AS NUM FROM employee; --null과 계산하면 null이 나옴(null을 처리해야 함)
SELECT ename, commission, nvl(commission, 0) FROM employee;

SELECT ename, salary, commission,
    nvl(commission, 0),
    salary*12+nvl(commission, 0)
FROM employee
ORDER BY JOB;    

SELECT ename, salary, commission,
    nvl2(commission, salary * 12 + commission, salary * 12) 
--NVL2(expr1, expr2, expr3) : expr1이 null이 아니면 expr2 반환, null이면 expr3 반환
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
FROM employee ORDER BY dno; --swictch case 문과 유사

SELECT ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNITING'
         WHEN dno=20 THEN 'RESEARCH'
         WHEN dno=30 THEN 'SALES'
         WHEN dno=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
    END AS DNAME
FROM employee ORDER BY dno;    

--혼자해보기
select * from employee;
--6번
SELECT eno, ename, NVL2(manager, manager, 0) FROM employee ORDER BY eno;

--7번
SELECT eno, ename, job, salary, 
    DECODE(job, 'ANAYLYST', salary+200,
                'SALESMAN', salary+180,
                'MANAGER', salary+150,
                'CLERK', salary+100,
                salary) AS update_salary 
FROM employee ORDER BY eno;
