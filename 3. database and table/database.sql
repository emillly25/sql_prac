-- 데이터베이스 조회
show databases;

-- 데이터베이스 생성
CREATE DATABASE db_name;

-- 데이터베이스 삭제
DROP DATABASE db_name;

-- 데이터베이스 사용하기
USE db_name;


-- 테이블 생성하기
CREATE TABLE table_name(
    key_name value_type,
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT DEFAULT 99
)

-- 테이블 생성시, primary key 생성 방법2
CREATE TABLE table_name(
    key_name value_type,
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT DEFAULT 99,
    PRIMARY KEY(id)
)




-- 사용중인 데이터베이스의 모든 테이블 목록 조회
SHOW tables

-- 테이블의 모든 속성 조회
DESC table_name

--테이블 제거
DROP TABLE table_name