--
CREATE TABLE  data_type_ex1(
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3, 2)
);
INSERT INTO data_type_ex1 (num1)  VALUES(0);
INSERT INTO data_type_ex1 (num1)  VALUES(0.01);
INSERT INTO data_type_ex1 (num1)  VALUES(9999999999999); --NUMBER를 파라미터 없이 타입을 설정하면 거의 대부분의 자리 수 받을 수 있음

INSERT INTO data_type_ex1 (num2) VALUES(0);
INSERT INTO data_type_ex1 (num2) VALUES(5.5);
INSERT INTO data_type_ex1 (num2) VALUES(99);
INSERT INTO data_type_ex1 (num2) VALUES(100);

INSERT INTO data_type_ex1 (num3) VALUES(0.01);
INSERT INTO data_type_ex1 (num3) VALUES(0.015); --반올림 해서 자리수 맞춤
INSERT INTO data_type_ex1 (num3) VALUES(10.015); --불가
COMMIT;
SELECT * FROM data_type_ex1;
