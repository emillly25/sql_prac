-- CONCAT
SELECT CONCAT(str1,str2) AS alias_name FROM table_name;
SELECT CONCAT(author_fname,' ', author_lname) AS author_name FROM books;

-- CONCAT_WS (구분자로 모든 string 연결)
SELECT CONCAT_WS('-',title, author_fname, author_lname) FROM books;

-- SUBSTRING
SELECT SUBSTRING(target_str, startNo, slicingCnt)
SELECT SUBSTRING('Hello World', 7); -- 해당 글자를 7번째부터 끝까지
SELECT SUBSTRING('Hello World', -3); -- 해당 글자를 뒤에서부터 3번째 부터 끝까지 
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books; -- title 컬럼의 값들을 1번째 글자부터 10개까지만 잘라내서 가져오기

-- REPLACE
SELECT REPLACE(target_str, find_str, replace_str);
SELECT REPLACE('cheese bread coffee milk', ' ', ' and '); --target_str 에서 find_str를 찾아서 replace_str로 교체 
SELECT REPLACE(title, 'e ', '3') FROM books;

-- REVERSE
SELECT REVERSE(target_str); -- target_str를 뒤집어서 반환
SELECT REVERSE('Hello World');
SELECT REVERSE(author_fname) FROM books;


-- CHAR_LENGTH
SELECT CHAR_LENGTH('Hello World'); --글자 길이 반환
SELECT CHAR_LENGTH(title) as length, title FROM books;


-- UPPER/LOWER
SELECT LOWER('Hello World'); -- 소문자로 변환
SELECT UPPER(title) FROM books; --대문자로 변환

-- INSERT
SELECT INSERT(target_str, startNo,cnt,insert_str);
SELECT INSERT('Hello Bobby', 6, 0, 'There'); -- target_str의 startNo번째 부터 cnt갯수 뒤에 insert_srt 삽입

-- LEFT
SELECT LEFT('omghahalol!', 3); -- target_str에서 왼쪽부터 3번째까지 반환

-- RIGHT
SELECT RIGHT('omghahalol!', 4); -- target_str에서 오른쪽부터 4번째까지 반환

-- REPEAT
SELECT REPEAT('ha', 4); -- target_str을 4번 반복

-- TRIM
SELECT TRIM('  pickle  '); -- target_str에서 공백 제거
SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx'); -- target_str의 앞에서부터 나오는 x 제거
SELECT TRIM(BOTH 'x' FROM 'xxxbarxxx'); -- target_str의 모든 x 제거
SELECT TRIM(TRAILING 'x' FROM 'xxxbarxxx'); -- target_str의 뒤에서부터 나오는 x 제거


-- 여러개 조합 가능 
SELECT CONCAT(SUBSTRING(title, 1, 10),'...') AS 'short title' FROM books;
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

