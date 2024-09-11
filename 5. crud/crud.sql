-- 테이블에서 특정 컬럼 가져오기
SELECT column_name FROM table_name;


-- 복수개 가능
SELECT column_name1, column_name2 FROM table_name;

-- row 필터링 추가 가능 (WHERE 뒤에 필터링 조건)
SELECT * from table_name WHERE age = 4;

-- alias
SELECT column_name AS alias_name FROM table_name;

--UPDATE (필터조건에 해당되는 row 찾아서 SET 뒤의 내용으로 수정)
UPDATE table_name SET 바꿀조건 WHERE 필터조건
UPDATE cats SET age=14 WHERE name='Misty';

--DELETE
-- 조건에 필터링 되는 row 삭제
DELETE FROM table_name WHERE 필터조건
DELETE FROM cats WHERE cat_id=age;

-- 모든 row 삭제
DELETE FROM table_name;