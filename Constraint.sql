# Constraint (제약조건)
# 각 테이블의 각 컬럼에 적용이 되는 데이터 입력 및 수정에 대한 규칙을 정의
# 제약조건을 통해서 DBMS의 무결성을 보장해 줌

# NOT NULL
# NOT NULL 제약조건이 지정되어있는 컬럼에는 삽입 및 수정 작업에서 필수로
# 데이터를 입력해야 함
CREATE TABLE not_null_table (
	column1 INT,
    column2 INT,
    not_null_column INT NOT NULL
);

INSERT INTO not_null_table (column1, column2, not_null_column) 
VALUES (1, 2, 3);

UPDATE not_null_table SET not_null_column = null;

# UNIQUE
# UNIQUE 제약조건이 지정되어 있는 컬럼에는 각 레코드에서 해당하는 컬럼 값을
# 중복하여 삽입 혹은 수정할 수 없음

CREATE TABLE unique_table (
	column1 INT,
    unique_column INT UNIQUE
);

INSERT INTO unique_table VALUES (1, 1);
INSERT INTO unique_table VALUES (1, 2);

UPDATE unique_table SET unique_column = 2;

# UNIQUE 제약조건을 적용하면 해당 컬럼에 INDEX가 자동으로 생성됨
SELECT * FROM unique_table WHERE column1 = 1;
SELECT * FROM unique_table WHERE unique_column = 2;



