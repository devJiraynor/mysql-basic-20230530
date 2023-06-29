# 회원가입
INSERT INTO user VALUES ('email@email.com', 'P!ssw0rd', 'nickname1', '010-1111-1111', '부산광역시 부산진구', '에이원프라자 4층', null);
INSERT INTO user VALUES ('email2@email.com', 'P!ssw0rd', 'nickname2', '010-1111-1112', '부산광역시 부산진구', '에이원프라자 4층', null);
INSERT INTO user VALUES ('email3@email.com', 'P!ssw0rd', 'nickname3', '010-1111-1113', '부산광역시 부산진구', '에이원프라자 4층', null);

SELECT * FROM user;

# 로그인
SELECT * FROM user WHERE email = 'email@email.com' AND password = 'P!ssw0rd';

# 게시글 작성
INSERT INTO board (writer_email, title, content, image)
VALUES ('email@email.com', '게시글 제목', '게시글 내용', null);
INSERT INTO board (writer_email, title, content, image)
VALUES ('email@email.com', '게시글 제목2', '게시글 내용2', null);
INSERT INTO board (writer_email, title, content, image)
VALUES ('email2@email.com', '게시글 제목3', '게시글 내용3', null);

SELECT * FROM board;

# Alias
# 컬럼이나 테이블에 별칭을 지정하고 할때 
# 컬럼이나 테이블 뒤에 'AS'를 붙여 별칭을 부여할 수 있음
SELECT B.board_number AS '게시물 번호', B.writer_email AS '작성자 이메일'
FROM board AS B;

# Inner Join
# 두 테이블에서 조건에 일치하는 레코드를 반환
# SELECT column1, ... FROM table1
# INNER JOIN table2
# ON table1.column = table2.column;

SELECT * FROM user
INNER JOIN board
ON user.email = board.writer_email;

# LEFT OUTER JOIN
# from에 위치한 테이블의 모든 레코드와 join으로 붙은 테이블에서 조건에 일치하는 레코드를 반환
# join으로 붙은 테이블에서 일치하는 레코드가 없다면 null을 반환

SELECT * FROM user
LEFT OUTER JOIN board
ON user.email = board.writer_email;

# RIGHT OUTER JOIN
# join으로 붙은 테이블의 모든 레코드와 from에 위치한 테이블에서 조건에 일치하는 레코드를 반환
# from에 위치한 테이블에서 일치하는 레코드가 없다면 null을 반환

SELECT * FROM board AS b
RIGHT OUTER JOIN user AS u
ON u.email = b.writer_email;

# FULL OUTER JOIN
# 두 테이블의 모든 레코드를 반환하고 각각에 일치하는 레코드가 없으면 null을 반환

-- SELECT * 
-- FROM board
-- FULL JOIN user
-- ON user.email = board.writer_email;

SELECT * FROM user 
LEFT OUTER JOIN board 
ON user.email = board.writer_email
UNION
SELECT * FROM user 
RIGHT OUTER JOIN board 
ON user.email = board.writer_email;

# 최신 게시물 
# 게시물 번호 / 게시물 제목 / 게시물 내용 / 게시물 이미지 / 조회수 / 작성일
# 작성자 프로필 사진 / 작성자 닉네임 [/ 댓글 수 / 좋아요 수]

SELECT 
	b.board_number AS board_number, 
    b.title, 
    b.content, 
    b.image, 
	b.view_count, 
    b.write_datetime,
	u.profile_image, 
    u.nickname
FROM board AS b
INNER JOIN user AS u
ON b.writer_email = u.email
ORDER BY write_datetime DESC;

# 서브쿼리
# SQL 문 내부에 작성되는 또 다른 쿼리를 지칭
# 서브쿼리를 이용하면 복잡한 검색 조건을 사용 할 수 있음

# WHERE 절에서 서브쿼리

# 예시: nickname이 nickname1인 유저가 작성한 게시물의 전체 컬럼을 검색
SELECT * FROM board
WHERE writer_email IN (
	SELECT email FROM user WHERE nickname = 'nickname1'
);

