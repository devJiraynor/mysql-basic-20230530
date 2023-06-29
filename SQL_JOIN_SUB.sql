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

SELECT board_number AS '게시물 번호', writer_email AS '작성자 이메일'
FROM board;

# 최신 게시물 
# 게시물 번호 / 게시물 제목 / 게시물 내용 / 게시물 이미지 / 조회수 / 작성일
# 작성자 프로필 사진 / 작성자 닉네임 [/ 댓글 수 / 좋아요 수]


