SELECT * FROM employee;
SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno; --조인 조건 중 null값이 있는 행은 조인 결과로 얻어지지 않음 

--NULL까지 표시하는 JOIN이 OUTER JOIN(NULL표시 안하는 JOIN은 INNER JOIN)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno; --왼쪽 테이블의 칼럼의 빈 값(NULL)들도 꺼내서 연결
--또다른 LEFT OUTER JOIN(오라클에서만 적용되는 문법)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);


SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno; --오른쪽 테이블의 칼럼의 빈 값(NULL)들도 꺼내서 연결
--또다른 RIGHT OUTER JOIN(오라클에서만 적용되는 문법)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno; --두 테이블의 모든 빈 값들을 포함해서 조인(마치 합집합)

SELECT employees.ename || '의 직속상관은' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

--혼자해보기
SELECT * FROM employee;
--7번
SELECT employees.ename AS "Employee", employees.manager AS "Emp#", manager.eno AS "Manager", manager.ename "Mgr#"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;
--8번
SELECT employees.ename AS "Employee", employees.manager AS "Emp#", manager.eno AS "Manager", manager.ename "Mgr#"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno
ORDER BY employees.eno DESC;
--9번
SELECT employees.ename AS "이름", employees.dno AS "부서번호", coworker.ename AS "동료"
FROM employee employees, employee coworker
WHERE employees.dno = coworker.dno
AND employees.ename = 'SCOTT'
AND coworker.ename != 'SCOTT';
--10번
SELECT other.ename AS "ENAME", other.hiredate AS "HIREDATE"
FROM employee ward, employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename ='WARD'
ORDER BY other.hiredate ASC;
--11번
SELECT junior.ename, junior.hiredate, senior.ename, senior.hiredate
FROM employee junior, employee senior
WHERE junior.hiredate <= senior.hiredate
AND junior.manager = senior.eno;