-- Active: 1728541559230@@127.0.0.1@3306
-- Table 구조 확인
PRAGMA table_info('examples');

-- 1. Create a table
CREATE TABLE example (
  ExamId INTEGER PRIMARY KEY AUTOINCREMENT, -- 자동으로 증가하는 pk
  LastName VARCHAR(50) NOT NULL,
  FirstName VARCHAR(50) NOT NULL
);

-- 2. 열 추가
ALTER TABLE example
ADD COLUMN
  Country VARCHAR(100) NOT NULL DEFAULT 'default value';
-- sqlite는 단일 문을 사용하여 한번에 여러 열을 추가하는 것을 지원하지 않음
ALTER TABLE example
ADD COLUMN
  Age INTEGER NOT NULL DEFAULT 0;
-- 필드명 Address 열 추가, 필수 입력 , 기본 값 설정
ALTER TABLE example
ADD COLUMN
  Address TEXT NOT NULL DEFAULT 'default value';

-- 2.1 열 이름 수정
Alter TABLE example
RENAME COLUMN Address TO PostCode ;

-- 2.3 열 삭제
ALTER TABLE example
DROP COLUMN PostCode ;

-- 2.4 테이블 이름 변경
ALTER TABLE examples
RENAME TO example;

-- 3. 테이블 삭제
DROP TABLE new_examples;

DROP TABLE examples;


-- sqlite는 컬럼 수정 불가
-- 대신 테이블의 이름을 바꾸고, 새 테이블을 만들고 데이터를 새 테이블에 복사하는 방식을 사용
