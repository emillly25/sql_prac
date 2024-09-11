-- DISTINCT (row에서 중복값 제거)
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books; --새로 만든 column에 대해서도 가능!
SELECT DISTINCT author_fname, author_lname FROM books; --컬럼 여러개면 모든 컬럼이 다 같아야 중복으로 인식

-- ORDER BY
SELECT * FROM books ORDER BY author_lname; --기본 알파벳/숫자 오름차순 정렬 (ASC)
SELECT * FROM books ORDER BY author_lname DESC; --내림차순 정렬(DESC)

-- order 조건 순서대로 정렬 (1순위. author_lname, 동일한 값 -> 2순위 author_fname 적용)
SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY author_lname, author_fname;

-- order by N 면 select하는 column 중 N번째꺼 기준으로 정렬한다는 의미(직관적이기 않아서 덜 사용)
SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 2 desc;
SELECT title, author_lname FROM books ORDER BY 2,1; --1순위는 author_lname(2번째 컬럼), 2순위는 title(1번째 컬럼) 이라는 뜻


-- LIMIT(offset,cnt)
SELECT * FROM books LIMIT 1; --갯수 제한
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5; --정렬 후 갯수 제한 가능
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5; -- select한 row중 0번 건너뛰고(즉 처음부터) 상위 5개만 가져오자.
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,5; -- select한 row중 1번 건너뛰고(2번 row부터) 상위 5개만 가져오자.
SELECT title FROM books LIMIT 5, 123219476457; -- row갯수보다 더 큰 값을 cnt로 넣어줘도 괜찮음 에러 x


-- LIKE
-- % : 0개 이상의 문자가 존재하는지 체크
-- _ : 정확히 1개 자리의 문자를 체크
-- \ 사용해서 이스케이프로 찐 %와 찐 _ 를 구분할 수 있음
SELECT title, author_fname, author_lname, pages FROM books WHERE author_fname LIKE '%da%'; -- 'da' 라는 문자 앞뒤로 문자가 있던 없던 그런 문자열 찾기
SELECT * FROM books WHERE author_fname LIKE '____';-- ____(언더바4개) = 4글자 문자열 찾기
SELECT * FROM books WHERE author_fname LIKE '_a_'; -- 한문자_a_한문자 => 문자열 찾기 (정확히 3글자임)