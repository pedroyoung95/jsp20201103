--데이터 (record, row)추가
--INSERT INTO table_name(col1, col2) VALUES(val1, val2);
--1번째 컬럼과 값끼리 매칭, 2번째 컬람과 값끼리 매칭(컬럼과 넣을 값을 꼭 순서에 맞게 대입해야 함
CREATE TABLE dept_copy
AS
SELECT * FROM department
WHERE 0=1;
DESC dept_copy;

INSERT INTO dept_copy --컬럼을 안 적으면 values의 값들이 테이블의 칼럼 순서에 맞게 자동으로 추가됨
VALUES(10, 'ACCOUNTING', 'NEW YORK') ;
SELECT * FROM dept_copy;

INSERT INTO dept_copy(dno, dname, loc)
VALUES(20, 'DALLAS', 'RESEARCH');
SELECT * FROM dept_copy;

COMMIT; --데이터 변경은 항상 변경 이전으로 돌아갈 수 있기 때문에, 확정짓기 위해서 COMMIT실행문을 실행시켜야 함

--NULL
--값을 안 넣는 경우
DESC dept_copy;
INSERT INTO dept_copy(dno, dname)
VALUES(30, 'SALES');
SELECT * FROM dept_copy;

INSERT INTO dept_copy(dno, dname, loc)
VALUES(40, 'OPERATIONS', NULL);
SELECT * FROM dept_copy;

--oracle에서는 NULL과 ''(빈 스트링)을 같은 것을 봄(빈 스트링을 넣으면 NULL로 처리)
INSERT INTO dept_copy
VALUES(50, 'COMPUTING', '');
SELECT * FROM dept_copy;

CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate, dno FROM employee WHERE 0=1;
SELECT * FROM emp_copy;

COMMIT;


