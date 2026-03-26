-- 샘플 데이터 구축

select * from student;

-- 1. 학생 테이블
insert into student(student_id, name, grade, major, phone) values
(1001, '김철수',2,'컴퓨터공학','010-1234-1234');

insert into student(student_id, name, grade, major, phone) values
(1002, '이영희',3,'컴퓨터공학','010-2222-3333'),
(1003, '박민준',1,'컴퓨터공학','010-3333-4444'),
(1004, '최지아',4,'컴퓨터공학','010-4444-5555'),
(1005, '한수연',2,'컴퓨터공학','010-5555-6666');