SELECT sysdate FROM dual; --sysdate는 dual 테이블에서 사용해야 함
SELECT sysdate + 1 FROM dual; --날짜에 연산 가능
SELECT sysdate -1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, round(sysdate - hiredate) FROM employee;
SELECT sysdate-1 어제, sysdate 오늘, sysdate+1 내일 FROM dual;
SELECT round(sysdate - hiredate) 근무일수 FROM employee; 

SELECT round(sysdate) FROM dual;--오후를 넘어가면 반올림해서 다음날이 나옴
SELECT round(sysdate, 'YEAR') FROM dual;--연 단위 반올림
SELECT round(sysdate, 'MONTH') FROM dual;--월 단위 반올림(해당 월의 절반이 지나면 다음달이 나옴)

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;
SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT ename, sysdate, hiredate, TRUNC(months_between(sysdate, hiredate)) FROM employee;

SELECT ename, hiredate, add_months(hiredate, 6) FROM employee;

SELECT sysdate, next_day(sysdate, '토요일') FROM dual;

SELECT ename, hiredate, last_day(hiredate) FROM employee;
