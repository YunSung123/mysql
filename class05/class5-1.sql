-- DDL (구조를 만든다)

-- 데이터 베이스 생성
DROP DATABASE school; -- 데이터 베이스 삭제
CREATE DATABASE school; -- 데이터 베이스 생성
use school; -- 스쿨 사용

-- 테이블 생성
CREATE TABLE student (
	student_id INT PRIMARY KEY,
    name VARCHAR(50) not null,
    grade int not null,
    major varchar(50) not null,
    phone varchar(20)
);

-- drop table studnet;

-- 테이블 구조 확인
desc student;

-- 테이블 생성 된 이후에 추가로 칼럼을 넣고 싶다면?
alter table student add column email varchar(100);

-- 컬럼 삭제
alter table student drop column email;