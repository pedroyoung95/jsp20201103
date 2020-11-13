SELECT sysdate FROM dual; --dual table은 기본 내장되어있는 테이블

SELECT LOWER(ename) AS ename FROM employee; --별칭을 사용하면 jsp파일에서 짧게 작성 가능
SELECT UPPER(ename) AS NAME FROM employee;
SELECT initcap(ename) AS NAME FROM employee;
SELECT initcap('oracle mania') AS NAME FROM dual;

SELECT 'oracle mania',
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    initcap('Oracle mania') FROM dual;
    
SELECT ename, LOWER(ename), JOB, initcap(JOB) FROM employee;

SELECT eno, ename, dno FROM employee WHERE LOWER(ename)='scott';

SELECT eno, ename, dno FROM employee WHERE initcap(ename)='Scott';

SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) AS LENGTH FROM employee;
SELECT LENGTH('웹프로그래밍') FROM dual;
SELECT ename, lengthb(ename) len FROM employee;
SELECT lengthb('웹프로그래밍') FROM dual; --한글은 3byte이므로, 바이트 길이가 글자 길이에 2배

SELECT LENGTH('OracleMania'), LENGTH('오라클매니아') FROM dual;
SELECT lengthb('OracleMania'), lengthb('오라클매니아') FROM dual;

SELECT CONCAT(ename, JOB) FROM employee; --concat(para1, para2) : 두 문자열을 더하는 함수
SELECT ename || ', ' || JOB FROM employee; -- ||연산자 : 문자열을 더하는 연산자(더하는 문자열 갯수 제한 없음)

SELECT ename, substr(ename, 1, 3) FROM employee; --sql에서는 문자열의 인덱스가 1부터 시작
--SUBSTR(추출할문자열, 시작인덱스번호, 추출할문자개수)
SELECT ename, substr(ename, -2, 2) FROM employee; --거꾸로 세는 음수 인덱스 사용 가능

SELECT 'Oracle', 'mania', CONCAT('Oracle', 'mania') FROM dual;
SELECT substr('Oracle mania', 4, 3),
    substr('Oracle mania', -4, 3) FROM dual;
SELECT * FROM employee WHERE substr(ename, -1, 1)='N';
SELECT * FROM employee WHERE substr(hiredate, 1, 2)='87';
SELECT * FROM employee WHERE substr(to_char(hiredate, 'yyyy-mm-dd'), 1, 4)='1987'; --날짜는 문자로 변경해서 사용하는 것이 안전

SELECT ename, instr(ename, 'A') FROM employee; 
--instr(대상, 찾을문자, 시작위치, 몇 번째 발견) 
--찾는 문자가 없으면 0
select instr('Tiger Tea Tire Table Tablet Ton', 'T', 2, 2) from employee;
select instr('Oracle mania', 'a') from dual;
select instr('Oracle mania', 'a', 5, 2) from dual; 
--3번째 파라미터 : 탐색 시작 위치 / 4번째 파라미터 : 찾으려는 문자가 여러 개이면 그 중 몇 번째 문자인지 결정
select * from employee where instr(ename, 'R', 3, 1)=3;
select * from employee where instr(ename, 'R')=3; --굳이 3, 4번째 파라미터가 있어야 하나?
