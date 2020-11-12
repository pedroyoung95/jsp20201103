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