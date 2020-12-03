--DML(Data Manipulation Language)
--INSERT, UPDATE, DELETE

CREATE TABLE bank(
    name VARCHAR2(255),
    money NUMBER
);

INSERT INTO bank VALUES('ironman', 500);
INSERT INTO bank VALUES('captain', 700);

COMMIT;

SELECT * FROM bank;

--captain이 ironman에게 200원 이체(두 개의 커리가 하나의 업무)
--COMMIT이나 ROLLBACK으로 결정되는 하나의 업무 묶음을 '트랜잭션'이라고 부름
UPDATE BANK 
SET money = 500
WHERE name='captain';


--만약 이전 커리에서 문제가 발생해서 이후 커리가 실행되지 않으면 업무상 문제 발생
--따라서 둘 중에 하나라도 문제가 발생하면 둘 다 실행되지 않는 것이 안전함
--중간에 문제 발생 시 되돌아가기 위한 해결책으로 ROLLBACK 명령문 실행
--아무 문제 없이 잘 진행되었다면 영구 저장하기 위해 COMMIT 명령문 실행

UPDATE BANK 
SET money = 700
WHERE name='ironman';

ROLLBACK;