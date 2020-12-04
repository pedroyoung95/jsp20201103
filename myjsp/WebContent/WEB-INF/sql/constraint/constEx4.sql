--NOT NULL
--CHECK
--UNIQUE
--FOREIGN KEY
--PRIMARY KEY

SELECT * FROM user_constraints; --제약사항을 작성할 때마다 오라클에서 저장을 해줌(해당 테이블은 작성된 제약사항을 모아둔 테이블)

--기본적으로 제약 사항이름은 오라클에서 자동으로 지정함. 그러나 제약 사항이름을 지어줄 수 있음.
CREATE TABLE customer(
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE, --제약 사항이름을 CONSTRAINT키워드 옆에 작성하면 됨(작성한 이름은 대문자로 들어감)
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR(100)
);
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

--책 253쪽
DROP TABLE customer;
CREATE TABLE customer(
    id VARCHAR2(20),
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR(100),
    CONSTRAINT customer_id_pk PRIMARY KEY(id) --PRIMARY KEY를 따로 빼서 작성했는데, 이름을 추가하기 위해 CONSTRAINT키워드 추가
);
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

--책 255쪽
CREATE TABLE emp_second(
    eno NUMBER(4) CONSTRAINT emp_second_eno_pk PRIMARY KEY,
    ename VARCHAR2(10),
    job VARCHAR2(9),
    dno NUMBER(2) CONSTRAINT emp_second_dno_fk REFERENCES department
);
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'EMP_SECOND%';

--책 256쪽
DROP TABLE emp_second;
CREATE TABLE emp_second(
    eno NUMBER(4) CONSTRAINT emp_second_eno_pk PRIMARY KEY,
    ename VARCHAR2(10),
    salary NUMBER(7, 2) CONSTRAINT emp_second_salary_min CHECK(salary>0)
);
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'EMP_SECOND%';