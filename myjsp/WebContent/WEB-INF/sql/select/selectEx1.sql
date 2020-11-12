SELECT * from employee; --값을 제외하고는 대소문자 구분 안 함
select * from bonus; --record가 없는 테이블
select * from department;
select * from salgrade; --statement는 세미콜론을 종료, 구분됨
--select 칼럼이름 from 태이블이름;

select ename from employee;
select eno, ename from employee;
select ename, eno from employee;
select ename, salary from employee;
select ename, salary, salary*12 from employee;
select ename, salary / 100 from employee;
select ename, salary + 100 from employee;
select ename, salary - 100 from employee;
select ename, salary 월급, salary*12 as 연봉 from employee; --as로 칼럼 이름을 부여할 수 있고, as는 생략 가능
select ename, salary "월 급", salary*12 "연★봉" from employee; --특수문자 또는 공백을 포함하려면 ""로 감싸기
--한 줄 주석
/*
다중 
주석
*/

select * from employee;
select ename, salary, commission, salary + commission from employee; --null과 연산하면 결과는 null
select ename, salary, commission, NVL(commission, 0) from employee; --NVL(columm name, value) : 해당 칼럼의 값이 null이면 두 번째 파라미터 값으로 변환
select ename, salary + NVL(commission,0) 합 from employee;

select distinct dno from employee;
select distinct(dno) from employee;
select * from employee where job='SALESMAN'; 