--테이블 변경
--ALTER TABLE
--컬럼 추가, 컬럼 변경, 컬럼 삭제

--컬럼 추가
--ALTER TABLE table_name ADD(new_col DATATYPE,,,);
--추가된 컬럼을 맨 뒤에 붙게 됨
ALTER TABLE dept20
ADD(birth DATE);
DESC dept20;

--컬럼 변경
--ALTER TABLE table_name MODIFY(colName DATATYPE,,,);
ALTER TABLE dept20 MODIFY ename VARCHAR2(30);
DESC dept20;
--컬럼 변경 시 수나 문자열의 길이 또는 byte는 더 큰 값으로만 변경 가능(이미 존재하는 데이터 손실 발생)

--칼럼 제거
--ALTER TABLE table_name DROP col_name;
ALTER TABLE dept20 DROP COLUMN  ename;
DESC dept20;