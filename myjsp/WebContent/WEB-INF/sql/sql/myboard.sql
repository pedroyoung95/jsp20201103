DROP TABLE member;

CREATE TABLE  member(
    memberid VARCHAR2(50) PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    password VARCHAR(10) NOT NULL,
    regdate DATE NOT NULL
);

SELECT * FROM member;

---------------------------------

--DROP TABLE article;

CREATE TABLE article(
    article_no NUMBER GENERATED AS IDENTITY,
    writer_id VARCHAR2(50) NOT NULL,
    writer_name VARCHAR2(50) NOT NULL,
    title VARCHAR2(255) NOT NULL,
    regdate DATE NOT NULL,
    moddate DATE NOT NULL,
    read_cnt NUMBER,
    PRIMARY KEY(article_no)
);
SELECT * FROM article;
SELECT * FROM (
SELECT article_no, title, ROW_NUMBER() OVER(ORDER BY article_no DESC) rn
FROM article
--ORDER BY article_no DESC
) WHERE rn BETWEEN 1 AND 5;

--DROP TABLE article_content;

CREATE TABLE article_content(
    article_no NUMBER PRIMARY KEY,
    content VARCHAR2(4000)
);
SELECT * FROM article_content;

------------댓글 
--DROP TABLE reply;

CREATE TABLE reply(
    replyid NUMBER GENERATED AS IDENTITY,
    memberid VARCHAR2(50) NOT NULL,
    article_no NUMBER NOT NULL,
    body VARCHAR2(1000) NOT NULL,
    regdate DATE NOT NULL,
    PRIMARY KEY(replyid)
);
SELECT * FROM reply;
SELECT replyid, memberid, article_no, body, regdate
FROM reply
WHERE article_no=26
ORDER BY replyid DESC;