-- DCL (Data control Language) - 권환을 관리한다
 -- 사용자 생성 (사람, 시스템에게 줄 수 있다)

CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password123';


CREATE USER 'user1'@'%' IDENTIFIED BY 'password123';

FLUSH PRIVILEGES;

-- 조회 권한 부여
GRANT
SELECT ON school.student TO 'user1'@'localhost';

GRANT
CREATE ON school.* TO 'user1'@'%';

-- 1. 로컬 접속 계정과 별개로 외부 접속용 계정 모두 만들어 줘야 한다. 필요없다면 로컬은 생성안해도 됨.

CREATE USER 'tenco'@'localhost' IDENTIFIED BY 'asd1234!';


CREATE USER 'tenco'@'%' IDENTIFIED BY 'asd1234!'; -- 모든 IP허용

-- 2. 권한 부여 select, insert ... 추가 가능하다. 모든 권한 부여 (ALL PRIVILEGES)
GRANT ALL PRIVILEGES ON school.* TO 'tenco'@'localhost'; -- *.* RDBMS 안에 모든 db 모든 테이블

GRANT ALL PRIVILEGES ON school.* TO 'tenco'@'%';

-- 3. 권한 확인
SHOW grants
FOR 'tenco'@'localhost';

SHOW grants
FOR 'tenco'@'%';

-- 참고, 추가된 권한이 바로 적용 안될 수 있음.
FLUSH PRIVILEGES; -- 바로 적용

-- 3. 권환 회수
REVOKE ALL PRIVILEGES ON school.*
FROM 'tenco'@'localhost';