-- MAX/MIN
SELECT MAX(pages) FROM books;
SELECT MIN(author_lname) FROM books;

-- 서브 쿼리로 사용가능
SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- GROUP BY에서도 사용 가능
-- 해당 그룹내의 row들에 대해서 Min/max 값 계산
SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;

-- SUM
-- 전체 total sum 계산
SELECT SUM(pages) FROM books;
-- 해당 group 내의 row끼리 sum 계산
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;

-- AVG
-- 전체 total avg 계산
SELECT AVG(pages) FROM books;
-- 해당 group 내의 row끼리 avg 계산
SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;
