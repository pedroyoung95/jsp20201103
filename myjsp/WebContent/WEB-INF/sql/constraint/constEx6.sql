--기본값 갖기
CREATE TABLE const12 (
    id NUMBER DEFAULT 0,
    name VARCHAR2(30)
);
INSERT INTO const12 VALUES(3, 'john');
INSERT INTO const12(name) VALUES('john');
INSERT INTO const12 VALUES(NULL, 'john'); --NULL로 값 추가하면 기본값말고 NULL 그대로 들어옴

SELECT * FROM const12; --DEFAULT가 걸린 칼럼에 값을 넣지 않으면 DEFAULT로 설정된 기본값이 입력됨

SELECT * FROM user_constraints WHERE table_name='CONST12'; --DEFAULT는 제약 사항으로 보이지 않음

SELECT * FROM USER_TAB_COLUMNS
WHERE table_name='CONST12'; --DATA_DEFAULT칼럼에서 DEFAULT로 설정된 기본 값이 나옴