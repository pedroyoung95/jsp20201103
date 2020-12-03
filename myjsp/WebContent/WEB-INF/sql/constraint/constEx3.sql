--칼럼을 따로 모아서 제약사항을  작성할 수 있음
CREATE TABLE const09(
    id NUMBER,
    name VARCHAR2(30),
    PRIMARY KEY (id)
);
INSERT INTO const09(id, name)
VALUES(NULL, 'a');
INSERT INTO const09 VALUES(1, 'a');
INSERT INTO const09 VALUES(1, 'b');
COMMIT;

CREATE TABLE const10(
    name VARCHAR2(30),
    dno NUMBER(2),
    FOREIGN KEY(dno) REFERENCES const08_dep --const08_dep의 PRIMARY KEY를 dno가 참조해서 FOREIGN KEY칼럼이 됨
);
INSERT INTO const10(name, dno)
VALUES('a', 10);
INSERT INTO const10 VALUES('b', 50);
COMMIT;

--다수의 제악사항 작성 방법
CREATE TABLE const11(
    id NUMBER,
    name VARCHAR(30),
    dno NUMBER(2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(dno) REFERENCES const08_dep
);