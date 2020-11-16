SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee GROUP BY job; --특정 칼럼을 기준으로 그룹함 수 실행(여기선 job 별로 그룹화)
--MAX그룹함수의 결과가 job 칼럼의 행 개수와 일치하므로, 그룹함수와 그룹함수의 기준이 되는 칼럼을 동시에 select할 수 있음

SELECT dno as "부서번호", AVG(salary) AS "급여 평균"
FROM employee GROUP BY dno;

SELECT AVG(salary) AS "급여 평균" FROM employee GROUP BY dno;

--SELECT dno, ename, AVG(salary) FROM employee GROUP BY dno; ->그룹화 하지 않은 칼럼을 select 할 수 없음
SELECT dno, job, count(*), SUM(salary) 
FROM employee
GROUP BY dno, job
ORDER BY dno, job; --여러 칼럼을 그룹화해야 그 그룹들을 select 할 수 있음
--이 경우, salary의 sum그룹함수 결과는 부서번호와 직업 별로 계산됨