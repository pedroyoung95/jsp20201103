SELECT * FROM employee WHERE ename LIKE 'F%';
SELECT * FROM employee WHERE ename LIKE '%M%';
SELECT * FROM employee WHERE ename LIKE '%N'; -- '%'는 0개 이상의 문자를 대체
SELECT * FROM employee WHERE ename LIKE '_A%';
SELECT * FROM employee WHERE ename LIKE '__A%'; -- '_'는 딱 한 개의 문자를 대체
SELECT * FROM employee WHERE ename NOT LIKE '%A%';

SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

SELECT * FROM employee ORDER BY salary ASC; --기본이 asc이므로 asc는 생략 가능
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee ORDER BY hiredate DESC;
SELECT * FROM employee ORDER BY salary DESC, ename ASC;