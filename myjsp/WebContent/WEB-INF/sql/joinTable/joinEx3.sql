SELECT * FROM employee e, department d;
SELECT * FROM employee e1, employee e2;
SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2 WHERE e1.manager = e2.eno;
    --조인이 자기 자신이라는 점을 빼고는 EQUI JOIN과 동일
    
SELECT employees.ename AS "사원이름", manager.ename AS "직속상관이름"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT employees.ename || '의 직속 상관은' || manager.ename
FROM employee employees, employee manager
WHERE employees.manager = manager.eno; -- '||'는 string을 연결해주는 연산자

SELECT employees.ename 
FROM employee employees, employee manager
WHERE employees.manager = manager.eno
AND  manager.eno = 7902;