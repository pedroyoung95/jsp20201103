DROP TABLE post;
CREATE TABLE post(
    id NUMBER GENERATED ALWAYS  AS IDENTITY,
    title VARCHAR2(255),
    body VARCHAR2(4000),
    PRIMARY KEY(id)
);
SELECT * FROM post;
--UPDATE post 
--SET body='ttttttttt'
--WHERE id=3;
--ROLLBACK;