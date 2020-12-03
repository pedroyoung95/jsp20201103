--UPDATE
--데이터를 변경하는 명령문
--UPDATE table_name SET col1=val1, col2=val2, , , (WHERE~);
--WHERE절이 없으면 모든 record에 영향을 미침
SELECT * FROM dept_copy;

UPDATE dept_copy
SET dname='PROGRAMMING'
WHERE dno=10;

UPDATE dept_copy SET dname='HR';

UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno=10;

UPDATE dept_copy
SET loc=(SELECT loc FROM dept_copy WHERE dno=20)
WHERE dno=10;

UPDATE dept_copy
SET dname=(SELECT dname FROM dept_copy WHERE dno=30),
    loc=(SELECT loc FROM dept_copy WHERE dno=30)
WHERE dno=10;

--혼자해보기 

--5번
UPDATE emp_copy
SET dno=10
WHERE eno=7788;
SELECT * from emp_copy;

--6번
UPDATE emp_copy
SET (job, salary)=(SELECT job, salary FROM emp_copy WHERE eno=7499)
WHERE eno=7788;
SELECT * from emp_copy WHERE eno in (7499, 7788);

--7번
UPDATE emp_copy
SET dno=(SELECT dno FROM emp_copy WHERE eno=7369)
WHERE job=(SELECT job FROM emp_copy WHERE eno=7369);
SELECT * from emp_copy WHERE job='CLERK';

--DELETE
--DELETE (FROM) table_name WHERE ~ ;(WHERE절 생략하면 모든 레코드가 지워짐)
DELETE dept_copy WHERE dno=10;

DELETE dept_copy;
SELECT * FROM dept_copy;

DELETE emp_copy
WHERE dno=(SELECT dno FROM department WHERE dname='SALES');
SELECT * FROM emp_copy;

--혼자해보기 
DROP TABLE dept_copy;
SELECT * FROM dept_copy;
--8번
CREATE TABLE dept_copy
AS
SELECT * FROM department;

--9번
DELETE FROM dept_copy
WHERE dname='RESEARCH';

--10번
DELETE dept_copy
WHERE dno in (10, 40);
ROLLBACK;
COMMIT;