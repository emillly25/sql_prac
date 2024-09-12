distinct 중복 제거해서 null도 카운팅 안함

-- COUNT
SELECT COUNT(*) FROM books; -- 전체 row 카운팅 (null도 카운팅)
SELECT COUNT(author_lname) FROM books;
-- DISTINCT (중복 제거해서 카운팅 + null은 카운팅 x)
SELECT COUNT(DISTINCT author_lname) FROM books;  

-- GROUP BY
-- group by target_column -> target_column을 기준으로 그룹을 만듬(내부적)
-- 그리고 그 그룹 기준으로 select 를 진행.
-- COUNT(*) => 해당 그룹내 row갯수
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- 에러케이스
SELECT title FROM books GROUP BY author_lname;
--왜냐면 author 기준으로 그룹을 나눴는데, 해당 그룹에 들어있는 row들이 각기 다른 title을 갖고 있을텐데, 뭘 하나로 특정해서 값을 말하기 어렵기 때문.
-- ex. author1 (책1, 책2, 책3) => group

--혼합형도 가능
GROUP BY author_lname ORDER BY books_written DESC;


-- 다중 GROUP BY
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*) FROM books GROUP BY author;