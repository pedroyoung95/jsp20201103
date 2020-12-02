--데이터 (record, row)추가
--INSERT INTO table_name(col1, col2) VALUES(val1, val2);
--1번째 컬럼과 값끼리 매칭, 2번째 컬람과 값끼리 매칭(컬럼과 넣을 값을 꼭 순서에 맞게 대입해야 함
CREATE TABLE dept_copy
AS
SELECT * FROM department
WHERE 0=1;
DESC dept_copy;

INSERT INTO dept_copy
VALUES(10, 'ACCOUNTING', 'NEW YORK') ;
SELECT * FROM dept_copy;

INSERT INTO dept_copy(dno, dname, loc)
VALUES(20, 'DALLAS', 'RESEARCH');
SELECT * FROM dept_copy;

COMMIT; --데이터 변경은 항상 변경 이전으로 돌아갈 수 있기 때문에, 확정짓기 위해서 COMMIT실행문을 실행시켜야 함


