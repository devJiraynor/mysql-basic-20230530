# DML (Data Manipulation Language - 데이터 조작어)
# 테이블에서 실제 데이터를 삽입, 수정, 삭제, 검색을 할 때 사용되는 명령어

# INSERT
# 테이블에 레코드(실제 데이터)를 삽입할 때 사용하는 명령어

# 1. INSERT INTO 테이블명 VALUES (value1, value2, ...);
# 2. INSERT INTO 테이블명 (column1, column2, ...) VALUES (value1, value2, ...);

# 1번 삽입 명령어: 해당 테이블의 모든 컬럼에 대해서 데이터를 삽입하는 명령어
#               데이터를 테이블의 컬럼의 순서에 맞게 모두 입력을 해야함
# 2번 삽입 명령어: 해당 테이블의 지정한 컬럼에 대해서 데이터를 삽입하는 명령어
#               삽입하고자 하는 컬럼의 순서에 맞게 매핑하여 데이터를 입력 해야함
#               지정한 컬럼의 수와 데이터의 수가 같아야하고 데이터의 타입도 같아야함
#               필수 값으로 지정이 되어있다면 무조건 입력을 해야함
INSERT INTO sample_table VALUES (1, 1.0, 0, '문자열', 'TEXT', '2023-06-26', '15:04:00', '2023-06-26 15:04:00');
INSERT INTO sample_table (column1, column2) VALUES (1, 3.14);

# SELECT
# 테이블에서 데이터를 검색할 때 사용하는 명령어

# 1. SELECT column1, column2, ... FROM 테이블명;
# 2. SELECT * FROM 테이블명;
# 3. SELECT column1, column2, ... FROM 테이블명 WHERE 조건;

# 1번 검색 명령어 : 해당 테이블에서 선택한 컬럼에 대해서만 데이터를 검색
# 2번 검색 명령어 : 해당 테이블에서 모든 데이터를 검색
# 3번 검색 명령어 : 해당 테이블에서 특정한 조건에 만족하는 데이터만 검색

SELECT column1, column2 FROM sample_table;


