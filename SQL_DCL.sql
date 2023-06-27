# DCL (Data Controll Language - 데이터 제어어)
# 데이터베이스에 보안과 관련된 설정을 관리하는 명령어

# 유저 생성 (DDL)
# 해당 데이터베이스에 대하여 사용자를 생성하는 명령어
# CREATE USER '유저명'@'호스트이름' IDENTIFIED BY '비밀번호';
CREATE USER 'developer1'@'localhost' IDENTIFIED BY 'P!ssw0rd';
CREATE USER 'developer2'@'%' IDENTIFIED BY 'P!ssw0rd';

# GRANT
# 사용자에게 특정 데이터베이스의 특정 테이블에 대하여 
# 특정 작업을 수행할 권한을 부여하는 명령어

# GRANT privilege1, ...
# ON 데이터베이스명.테이블명
# TO '유저이름'@'호스트명';

GRANT SELECT
ON sample_database.namgu 
TO 'developer1'@'localhost';

GRANT UPDATE
ON *.*
TO 'developer1'@'localhost';







