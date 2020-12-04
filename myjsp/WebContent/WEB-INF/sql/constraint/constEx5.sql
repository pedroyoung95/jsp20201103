--제약 사항 추가
DROP TABLE emp_copy;
CREATE TABLE emp_copy
AS
SELECT * FROM employee;

SELECT * FROM emp_copy;
SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';
SELECT * FROM user_constraints
WHERE table_name='EMP_COPY'; --테이블 복사해도 제약 사항은 복사 안 됨

ALTER TABLE emp_copy
ADD PRIMARY KEY(eno); --키 제약 사항, CHECK 제약 사항은 ALTER TABLE ~ ADD로 제약 사항을 추가(ADD만 사용 가능)

DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY(dno); --CONSTRAINT키워드로 제약 사항 이름 설정 가능

SELECT * FROM user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE emp_copy
ADD CONSTRAINT emp_copy_dno_fk
FOREIGN KEY(dno) REFERENCES dept_copy(dno);

ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL; 
--NOT NULL, UNIQUE 제약 사항은 ADD나 MODIFY다음에 칼럼명을 작성하고 제약 사항 타입을 마지막에 작성

--제약 사항 지우기
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn; --'DROP CONSTRAINT 제약사항이름' 으로 DROP을 통해 제약 사항 삭제
SELECT * FROM user_constraints WHERE table_name='EMP_COPY';

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C008973;

SELECT * FROM user_constraints WHERE table_name='DEPT_COPY';
ALTER TABLE emp_copy
DROP CONSTRAINT EMP_COPY_DNO_FK; --키 제약사항은 이름을 쓰거나, PRIMARY KEY라고 키워드로 작성해도 됨
ALTER TABLE dept_copy
DROP PRIMARY KEY; --참조당한 경우, 함부로 지울 수 없음 -> CASCADE를 이용하거나 참조하는 테이블에서 FOREIGN KEY를 먼저 제거해야 함
ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE; --CASCADE를 사용하면 참조키와 주요키 지우는 걸 한 번에 실행

--혼자해보기

--1번
DROP TABLE emp_sample;

CREATE TABLE emp_sample
AS
SELECT * FROM employee WHERE 0=1;

ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_pk PRIMARY KEY(eno);

SELECT * FROM user_constraints WHERE table_name='EMP_SAMPLE';

--2번
DROP TABLE dept_sample;

CREATE TABLE dept_sample
AS
SELECT * FROM employee WHERE 0=1;

ALTER TABLE dept_sample
ADD CONSTRAINT my_dept_pk PRIMARY KEY(dno);

SELECT * FROM user_constraints WHERE table_name='DEPT_SAMPLE';

--3번
ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_dept_fk 
FOREIGN KEY(dno) REFERENCES department(dno);
SELECT * FROM user_constraints WHERE table_name='EMP_SAMPLE';

--4번
ALTER TABLE emp_sample
ADD CONSTRAINT emp_commission_min CHECK(commission > 0);
SELECT * FROM user_constraints WHERE table_name='EMP_SAMPLE';



