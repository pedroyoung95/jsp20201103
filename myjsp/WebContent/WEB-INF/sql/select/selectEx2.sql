--키워드는 대문자, 칼럼이나 태이블 이름은 소문자로 작성하는게 관습
--WHERE : 원하는 자료를 골라내는 필터 역할
select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH'; -- '=' 기호 하나가 '같다'의 의미
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000; --숫자 데이터는 따옴표 없이 작성
SELECT * FROM employee WHERE ename <= 'G'; --이름 알파벳이 G포함 그 이전까지인 경우의 자료만 선택
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH'; --<>도 '같지 않다'의 의미
SELECT * FROM employee WHERE ename ^= 'SMITH'; --^=도 '같지 않다'의 의미
SELECT * FROM employee WHERE hiredate = '1981/02/20'; --날짜데이터는 'yyyy/mm/dd' 형식으로 표시

SELECT * FROM employee WHERE salary >= 1500;
SELECT * FROM employee WHERE dno = 10;
SELECT * FROM employee WHERE ename = 'SCOTT';
SELECT * FROM employee WHERE hiredate <= '1981/01/01';

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000;
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR salary >3000;
SELECT * FROM employee WHERE NOT salary > 3000;
SELECT * FROM employee WHERE ename > 'C' AND salary > 2000 AND dno != 30;

SELECT * FROM employee WHERE dno = 10 AND job='MANAGER';
SELECT * FROM employee WHERE dno = 10 OR job='MANAGER';
SELECT * FROM employee WHERE NOT dno = 10;
SELECT * FROM employee WHERE dno <> 10;
SELECT * FROM employee WHERE salary >= 1000 AND salary <= 1500;
SELECT * FROM employee WHERE salary < 1000 OR salary >1500;
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;

SELECT * FROM employee WHERE salary BETWEEN 1000 AND 1500;
SELECT * FROM employee WHERE salary >= 1000 AND salary <= 1500;
SELECT * FROM employee WHERE salary NOT BETWEEN 1000 AND 1500;
SELECT * FROM employee WHERE salary < 1000 OR salary > 1500;
SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee WHERE commission IN(300, 500, 1400);
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;
SELECT * FROM employee WHERE commission NOT IN (300, 500, 1400);
SELECT * FROM employee WHERE commission != 300 AND commission != 500 AND commission != 1400;

--혼자 해보기 p.65~
SELECT ename, salary, salary+300 FROM employee;

SELECT ename, salary, salary*12+100 FROM employee ORDER BY salary*12+100 DESC;
SELECT ename, salary, salary*12+100 AS "연간 총수입" FROM employee ORDER BY "연간 총수입" DESC;

SELECT ename, salary FROM employee WHERE salary > 2000 ORDER BY salary DESC;

SELECT ename, dno FROM employee WHERE eno = 7788;

SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

SELECT ename, job, hiredate FROM employee WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

SELECT ename, dno FROM employee WHERE dno BETWEEN 20 AND 30 ORDER BY ename ASC;

SELECT ename, salary, dno FROM employee WHERE salary BETWEEN 2000 AND 3000 AND dno BETWEEN 20 AND 30 ORDER BY ename;

SELECT ename, hiredate FROM employee WHERE hiredate LIKE '81%'; --왜 1981%은 안 되는지?

SELECT ename, JOB FROM employee WHERE MANAGER IS NULL;

SELECT ename, salary, commission FROM employee WHERE commission IS NOT NULL ORDER BY salary, commission;

SELECT ename FROM employee WHERE ename LIKE '__R%';

SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';

SELECT ename, JOB, salary FROM employee WHERE JOB IN ('CLERK', 'SALESMAN') AND salary NOT IN (950, 1600, 1300);

SELECT ename, salary, commission FROM employee WHERE commission >= 500;