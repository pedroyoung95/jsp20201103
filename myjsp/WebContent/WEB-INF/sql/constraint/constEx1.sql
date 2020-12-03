--테이블 만들 시 제약사항(Constraint) 만들기
--not null : 컬럼의 값에 NULL은 안 됨
--unique : 유일한 값만 저장
--check : 지정된 값(범위)만 가능
--foreign key(외래 키, 참조 키) : 다른 table에 저장되어 있는 값만 가능
--primary key(주요 키, 키) : not null + unique 를 결합한 형태
--테이블 생성시 데이터 타입 다음에 제약사항을 적으면 됨

--NOT NULL
CREATE TABLE const01(
    name VARCHAR(30) NOT NULL,
    age NUMBER
);
INSERT INTO const01 VALUES('abc', 30);
INSERT INTO const01 VALUES(NULL, 40); 
INSERT INTO const01 VALUES('a', NULL);
INSERT INTO const01 (age) VALUES(50); -- name컬럼에 아무것도 넣지 않는, NULL상태가 되므로 제약사항에 위반되어서 실행X
INSERT INTO const01 VALUES('', 30); --오라클에서는 빈 스트링도 NULL
INSERT INTO const01 VALUES(' ', 30); --공백 한 칸은 NULL이 아니라서 허용됨
SELECT * FROM const01;

CREATE TABLE customer(
    id VARCHAR(20) NOT NULL,
    pwd VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    phone VARCHAR(30),
    address VARCHAR(100)
);
INSERT INTO customer 
VALUES(NULL, NULL, NULL, '010-111-1111', 'SEOUL');
SELECT * FROM customer;

--UNIQUE : 기존 값과 겹치는 경우 추가 불가
CREATE TABLE const02(
    email VARCHAR2(30) UNIQUE,
    name VARCHAR2(30)
);
INSERT INTO const02(email, name)
VALUES('a', 'b');
INSERT INTO const02(email, name)
VALUES('a', 'c'); --email컬럼에 이미 존재하는 값이 있어서 UNIQUE에 위배
INSERT INTO const02 VALUES('c', 'b');
INSERT INTO const02 (name) VALUES('c');
INSERT INTO const02 (name) VALUES('c'); --NULL은 값이 없는 것이므로 값이 겹치는 것과는 무관
SELECT * FROM const02;

--CHECK : 조건을 만족한 값만 추가 가능
CREATE TABLE const03(
    name VARCHAR2(30),
    age NUMBER CHECK(age > 0)
);
INSERT INTO const03(name, age)
VALUES('a', 30);
INSERT INTO const03 VALUES('b', 0); --제약사항 위반
INSERT INTO const03 (name) VALUES('c'); --NULL은 CHECK과는 무관하므로 값 추가 가능
SELECT * FROM const03;

COMMIT;

--제약사항 여러 개 사용 : 제악사항 키워드를 띄어쓰기로 나열해서 작성
CREATE TABLE const04(
    email VARCHAR2(30) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
    name VARCHAR2(30)
);

INSERT INTO const04 (email, name)
VALUES(NULL,  'a');
INSERT INTO const04(email, name)
VALUES('a', 'b');
INSERT INTO const04(email, name)
VALUES('a@g', 'c');
INSERT INTO const04(email, name)
VALUES('a@g', 'd');
SELECT * FROM const04;