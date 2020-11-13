SELECT to_char(sysdate, 'mon') FROM dual;
SELECT to_char(sysdate, 'hh') FROM dual;
SELECT to_char(sysdate, 'hh24') FROM dual;
SELECT to_char(sysdate, 'hh24:mi:ss') FROM dual; --날짜 및 시간 단위 간 기호는 /, -, : 아무거나 쓰거나 안 써도 됨
SELECT ename, hiredate, 
    to_char(hiredate, 'yy-mm'),
    to_char(hiredate, 'YYYY/MM/DD DAY')
FROM employee;    
SELECT to_char(sysdate, 'yyyy/mm/dd, hh24:mi:ss') FROM dual;
SELECT ename, to_char(salary, 'L999,999') FROM employee; --L을 붙이면 통화기호가 들어감.
SELECT to_char(9956789, '999,999,999') FROM dual; --두 번째 파라미터는 전체 자리수를 지정
SELECT to_char(9956789, '000,000,000') FROM dual; --빈 자리수는 0으로 채워짐
SELECT to_char(9956789, '999,999,999.999') FROM dual;
SELECT to_char(9956789, '999,999,999.000') FROM dual;

SELECT TO_DATE('20201113', 'yyyymmdd') FROM dual;
SELECT
to_char(
    TO_DATE('2020-11-13 01:30:20', 'yyyy-mm-dd hh:mi:ss')
    , 'yyyy-mm-dd hh:mi:ss')
FROM dual;    
SELECT ename, hiredate 
FROM employee 
WHERE hiredate=TO_DATE(19810220, 'yyyymmdd');

SELECT to_number('100,000', '999,999') - to_number('50,000', '999,999') FROM dual;

--혼자해보기 p.137~
--1번
SELECT substr(hiredate, 1, 2) 년도, substr(hiredate, 4, 2) 달 FROM employee;

--2번
SELECT * FROM employee WHERE substr(hiredate, 4, 2)='04';

--3번
SELECT * FROM employee WHERE MOD(eno, 2) = 0;

--4번
SELECT hiredate, to_char(hiredate, 'yy/mon/dd dy') FROM employee;--일수와 요일 표시 형식 반드시 띄워쓰기로 구분해야 함!

--5번
SELECT TRUNC(sysdate - TO_DATE(20200101, 'yyyy/mm/dd')) FROM dual;