CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT ON school.student TO 'user1'@'localhost';

revoke select on school.student from 'user1'@'localhost';

