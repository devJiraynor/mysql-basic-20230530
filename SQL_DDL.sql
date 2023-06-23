# DDL (Data Definition Language / 데이터 정의어)
# 데이터베이스, 테이블, 인덱스, 뷰 등의 스키마를 정의하는데 사용되는 명령어

# CREATE
# 데이터베이스, 테이블, 인덱스, 뷰 등을 생성할 때 사용하는 명령어

# 데이터베이스 생성
CREATE DATABASE sample_database;

# 데이터베이스 선택
USE sample_database;

# 테이블 생성
CREATE TABLE sample_table (
	column1 INT,			# INT : 정수
    column2 DOUBLE,			# DOUBLE : 실수
    column3 BOOLEAN,		# BOOLEAN : 논리 (0: false, 1: true)
    column4 VARCHAR(10),	# VARCHAR(길이) : 길이를 제한한 문자열
    column5 TEXT,			# TEXT : 길이를 제한하지 않은 문자열
    column6 DATE,			# DATE : 날짜
    column7 TIME,			# TIME : 시간
    column8 DATETIME		# DATETIME : 날짜 및 시간
);




