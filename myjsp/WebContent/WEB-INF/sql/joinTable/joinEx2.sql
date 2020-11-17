SELECT * FROM employee;
SELECT * FROM salgrade;
SELECT * FROM employee e, salgrade s;

SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal; --각 테이블의 행의 값이 정확히 일치하지 않을 때의 조인은 NON-EQUI JOIN임

SELECT ename, salary, grade FROM employee, salgrade
WHERE salary BETWEEN losal AND hisal;

SELECT e.ename, d.dname, e.salary, s.grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno AND salary BETWEEN losal AND hisal; --행의 값이 일치하지 않아도 되므로, 두 개의 상의 테이블 조인 가능

SELECT s.grade FROM employee e, salgrade s 
WHERE e.ename  = 'WARD'AND e.salary BETWEEN s.losal AND s.hisal;
