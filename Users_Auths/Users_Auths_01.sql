-- auth 접근권한
INSERT INTO auth_names(AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1')
;
INSERT INTO auth_names(AUTH_NAME, UNIQUE_ID)
VALUES ('ADMIN', 'B2')
;
INSERT INTO auth_names(AUTH_NAME, UNIQUE_ID)
VALUES ('MANAGER', 'B3')
;

-- users 회원가입
INSERT INTO users(UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U1', 'Paul', 'paul01@gmail.com', 'IT Billing')
;
INSERT INTO users(UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U2', 'Allen', 'texas@imfblog.org', 'Engineering')
;
INSERT INTO users(UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U3', 'Teddy', 'norway@iotm.com', 'IT Billing')
;
INSERT INTO users(UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U4', 'Paul', 'paul_p@naver.com', 'Developer')
;

-- 접근권한들
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U1', 'B1')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U1', 'B2')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U2', 'B1')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U2', 'B2')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U2', 'B3')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U3', 'B1')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U4', 'B2')
;
INSERT INTO auths(UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U4', 'B1')
;

-- 회원 탈퇴
DELETE FROM auths 
WHERE UNIQUE_ID_USERS='U2'
;
DELETE FROM users 
WHERE UNIQUE_ID='U2'
;
DELETE FROM auths 
WHERE UNIQUE_ID_USERS='U4'
;
DELETE FROM users 
WHERE UNIQUE_ID='U4'
;

-- 테이블 확인
SELECT *
FROM auth_names
;
SELECT *
FROM users
;
SELECT *
FROM auths
;