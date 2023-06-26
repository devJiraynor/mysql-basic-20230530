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
INSERT INTO sample_table (column2) VALUES (2.5);

# SELECT
# 테이블에서 데이터를 검색할 때 사용하는 명령어

# 1. SELECT column1, column2, ... FROM 테이블명;
# 2. SELECT * FROM 테이블명;
# 3. SELECT column1, column2, ... FROM 테이블명 WHERE 조건;

# 1번 검색 명령어 : 해당 테이블에서 선택한 컬럼에 대해서만 데이터를 검색
# 2번 검색 명령어 : 해당 테이블에서 모든 데이터를 검색
# 3번 검색 명령어 : 해당 테이블에서 특정한 조건에 만족하는 데이터만 검색

SELECT column1, column2 FROM sample_table;
SELECT * FROM sample_table;
SELECT * FROM sample_table WHERE column2 > 1;

# UPDATE
# 테이블에서 레코드 혹은 필드(데이터)를 수정할 때 사용하는 명령어

# UPDATE 테이블명 SET column1 = value1, ... [WHERE 조건];

# 변경하고자 하는 컬럼에 대해서 값을 지정하는 것
# WHERE 문이 지정되지 않으면 모든 데이터에 대해서 수정 작업이 이루어짐

UPDATE sample_table SET column3 = true;
# 삽입 혹은 수정 작업을 할 때는 삽입하려는 컬럼의 데이터의 길이를 주의해야함
UPDATE sample_table SET column4 = '수정 문자열' WHERE column4 IS NULL;

# DELETE
# 테이블에서 특정 혹은 전체 레코드를 삭제할 때 사용하는 명령어

# DELETE FROM 테이블명 [WHERE 조건];

# 해당 테이블에서 데이터를 삭제함, 만약 WHERE 조건을 입력하지 않으면 해당 테이블의 모든 데이터가 삭제됨

DELETE FROM sample_table WHERE column2 = 3.14; 
DELETE FROM sample_table;

# TRUNCATE TABLE 테이블명;
# 모든 데이터를 삭제하는 것 뿐만 아니라 해당 테이블을 초기 상태로 되돌려 놓음
TRUNCATE TABLE sample_table;

# WHERE
# DML 중 검색, 수정, 삭제에 대해서 특정한 조건에 부합하는 레코드에 대해서만
# 작업이 이루어지도록 하는 연산자

# WHERE 조건을 잘 적는것 만으로도 대부분의 작업을 수월하게 할 수 있음
# WHERE 조건에는 비교연산자 / 논리연사자가 들어옴

# SQL의 연산자
# 비교연산자
# = : 좌항이 우항과 같은지를 비교
# !=, <> : 좌항이 우항과 다른지를 비교
# <, <= : 좌항이 우항보다 작은지, 작거나 같은지를 비교
# >, >= : 좌항이 우항보다 큰지, 크거나 같은지를 비교
# <=> : 좌항과 우항이 모두 null이면 true, 하나라도 null이 아니면 false
# IS : 좌항이 우항과 같은지를 비교 (true, false, unknown 일 때)
# IS NOT : 좌항이 우항과 다른지를 비교 (true, false, unknown 일 때)
# IS NULL : 좌항이 null이면 true, 아니면 false
# IS NOT NULL : 좌항이 null이 아니면 true, null이면 false
# BETWEEN min AND max : 좌항이 min보다 크거나 같으면서 max보다 작거나 같으면 true, 아니면 false
# NOT BETWEEN min AND max : 좌항이 min보다 작으면서 max보다 크면 true, 아니면 false
# IN() : 인자로 전달된 리스트의 값이 존재하면 true, 아니면 false
# NOT IN() : 인자로 전달된 리스트의 값이 존재하지 않으면 true, 존재하면 false



