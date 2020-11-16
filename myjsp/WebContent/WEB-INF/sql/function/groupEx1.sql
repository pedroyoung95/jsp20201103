SELECT commission, nvl(commission, 0) FROM employee;

--그룹합수는 하나 이상의 행을 그룹으로 묶어서 실행되는 함수
SELECT SUM(salary) FROM employee; 
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;
SELECT COUNT(salary) FROM employee; --해당 칼럼의 자료 개수
SELECT COUNT(*) FROM employee; --테이블의 몇 개의 레코드(행)이 있는지

SELECT MAX(hiredate), MIN(hiredate) FROM employee;

SELECT SUM(commission) AS "커미션 총액" FROM employee; --그룹함수는 null을 자동으로 제외하고 실행함

SELECT COUNT(commission) AS "커미션 받는 사원 수" FROM employee;

SELECT COUNT(job) AS "직업의 개수" FROM employee;
SELECT COUNT(DISTINCT job) AS "중복을 제외한 직업의 개수" FROM employee; --count할 때 중복을 제외하려면 distinct 사용

--SELECT ename, MAX(salary) FROM employee; -> 그룹함수를 사용하면 그룹함수가 아닌 것과 같이 사용X(서브 쿼리문을 곁들여야 함)
SELECT ename FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee); --그룹함수의 결과가 다른 쿼리문의 부분이 되는 서브 쿼리문

