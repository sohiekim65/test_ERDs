-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);
-- Error Code: 1062. Duplicate entry 'B1' for key 'auth_names.PRIMARY' 테이블에 값이 들어가있다

INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1');
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('ADMIN', 'B2');
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('MANAGER', 'B3');

-- DELETE FROM table_name WHERE condition;
DELETE FROM auth_names 
WHERE UNIQUE_ID IN('B1', 'B2')
;

DELETE FROM auth_names 
WHERE AUTH_NAME='MANAGER'
;

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- HERE condition;
UPDATE auth_names
SET UNIQUE_ID ='B2'
WHERE UNIQUE_ID ='B4'
;

SELECT *
FROM auth_names
;