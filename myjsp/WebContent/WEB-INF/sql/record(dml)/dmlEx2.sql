--숫자 타입
CREATE TABLE  data_type_ex1(
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3, 2)
);
INSERT INTO data_type_ex1 (num1)  VALUES(0);
INSERT INTO data_type_ex1 (num1)  VALUES(0.01);
INSERT INTO data_type_ex1 (num1)  VALUES(9999999999999); --NUMBER를 파라미터 없이 타입을 설정하면 거의 대부분의 자리 수 받을 수 있음

INSERT INTO data_type_ex1 (num2) VALUES(0);
INSERT INTO data_type_ex1 (num2) VALUES(5.5); --소수점 자리수를 허용하지 않았으므로 반올림
INSERT INTO data_type_ex1 (num2) VALUES(99);
INSERT INTO data_type_ex1 (num2) VALUES(100); --자리수 넘어가는 자료는 추가가 안 됨

INSERT INTO data_type_ex1 (num3) VALUES(0.01);
INSERT INTO data_type_ex1 (num3) VALUES(0.015); --반올림 해서 자리수 맞춤
INSERT INTO data_type_ex1 (num3) VALUES(10.015); --불가
COMMIT;
SELECT * FROM data_type_ex1;

--문자열
CREATE TABLE data_type_ex2(
    char1 CHAR(3), --고정길이 문자열, 3byte 저장
    vchar2 VARCHAR2(6) --가변길이 문자열,  6byte 저장
);
INSERT INTO data_type_ex2(char1) VALUES('');
INSERT INTO data_type_ex2(char1) VALUES('a'); --고정길이이므로, 빈칸을 만들어서 꼭 정해진 byte를 채움
INSERT INTO data_type_ex2(char1) VALUES('abc');
INSERT INTO data_type_ex2(char1) VALUES('abcd');

INSERT INTO data_type_ex2(vchar2) VALUES('abc'); --가변길이이므로, byte가 남으면 채우지 않음
INSERT INTO data_type_ex2(vchar2) VALUES('abcdef');
INSERT INTO data_type_ex2(vchar2) VALUES('abcdefg');
INSERT INTO data_type_ex2(vchar2)VALUES('한');
INSERT INTO data_type_ex2(vchar2)VALUES('한글');
INSERT INTO data_type_ex2(vchar2)VALUES('한글날'); --현 sql프로그램은 한글을 3byte로 계산함
COMMIT;
SELECT * FROM data_type_ex2;

