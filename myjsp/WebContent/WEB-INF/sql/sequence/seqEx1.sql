TRUNCATE TABLE post;
CREATE TABLE post(
    title VARCHAR2(255),
    body VARCHAR2(255)
);
INSERT INTO post(title, body)
VALUES('abc', 'def');
INSERT INTO post(title, body)
VALUES('abc', 'def');
SELECT * FROM post;
DELETE post WHERE title='abc'; --데이터를 구분해주는 PRIMARY KEY가 있어야 원치 않는 데이터까지 삭제되는 걸 방지

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

INSERT INTO post(id, title, body) VALUES(1, 'abc', 'def');
INSERT INTO post(id, title, body) VALUES(2, 'abc', 'def');

DELETE post WHERE id=1;

INSERT INTO post (id, title, body)
VALUES(3, 'abc', 'def');

SELECT max(id) FROM post; --내가 추가할 id

SELECT max(id) FROM post; --다른 사람이 추가할 id

--키 칼럼을 이용자가 직접 지정하기엔 여러움이 있기에 자동으로 키 칼럼 값을 배정해주는 시퀀스 사용
--PRIMARY KEY 전용 칼럼을 추가하는 것이 필요
--PRIMARY KEY칼럼을 자동으로 만드는 방법이 시퀀스 생성
--SEQUENCE
CREATE SEQUENCE my_seq; --기본 형태로 만들면 1부터 1씩 증가하는 값을 가짐

DELETE post;
COMMIT;

INSERT INTO post(id, title, body)
VALUES(my_seq.nextval, 'abc', 'def');
INSERT INTO post(id, title, body)
VALUES(my_seq.nextval, 'abc', 'def');

SELECT * FROM post;

CREATE SEQUENCE my_seq2
START WITH 100; --시작값 설정

INSERT INTO post(id, title, body)
VALUES(my_seq2.nextval, 'abc', 'def');

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100; --증가값 설정

INSERT INTO post(id, title, body)
VALUES(my_seq3.nextval, 'abc', 'def');

--혼자해보기

--1번
CREATE SEQUENCE emp_seq
MAXVALUE 100000;
SELECT * FROM user_sequences WHERE sequence_name LIKE '%EMP%';

--2번
DROP TABLE emp01;
CREATE TABLE emp01(
    empno NUMBER(4) PRIMARY KEY,
    ename VARCHAR2(10),
    hiredate DATE
);
INSERT INTO emp01 VALUES(EMP_SEQ.nextval, 'julia', sysdate);
SELECT * FROM emp01;

SELECT * FROM user_sequences;

SELECT my_seq2.currval FROM dual; --현재 시퀀스 값 알아내기(currval키워드 사용)
SELECT my_seq2.nextval FROM dual;

--시퀀스 제거 : 'DROP SEQUENCE 시퀀스명;'
DROP SEQUENCE my_seq;

--시퀀스 수정
ALTER SEQUENCE my_seq3
INCREMENT BY 1000;

--테이블 개수 만큼 시퀀스를 만들지 않고, 자동으로 증가하는 값을 만드는 방법이 오라클 12 C 버전 부터 존재
CREATE TABLE t1;
CREATE SEQUENCE s1;
CREATE TABLE t2;
CREATE SEQUENCE s2;
--자동 증가 컬럼
CREATE TABLE t1(
    id NUMBER GENERATED ALWAYS --GENERATED ALWAYS로 자동증가임을 명시
        as IDENTITY(
            START WITH 1
            INCREMENT BY 1 --IDENTITY에서 시퀀스 설정처럼 착성
            ),
        name VARCHAR2(30)
);
INSERT INTO t1(name) VALUES('jane');
INSERT INTO t1(name) VALUES('donald');
SELECT * FROM t1;
SELECT * FROM user_sequences;