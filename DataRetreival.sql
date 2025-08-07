
-- Use the library database
USE librarydb;

-- ------------------------------
-- SELECT statements
-- ------------------------------

-- 1. Select all columns from authors
SELECT * FROM authors;

-- 2. Select specific columns from books
SELECT title, genre FROM books;

-- 3. Select members who joined after 2022
SELECT * FROM members
WHERE joindate > '2022-12-31';

-- 4. Select books of genre 'Fantasy' or 'Romance'
SELECT * FROM books
WHERE genre = 'Fantasy' OR genre = 'Romance';

-- 5. Select books by authors from the UK using JOIN
SELECT b.title, a.name AS author_name
FROM books b
JOIN authors a ON b.authorid = a.authorid
WHERE a.country = 'UK';

-- 6. Select borrowings where return date is between two dates
SELECT * FROM borrowings
WHERE returndate BETWEEN '2024-01-01' AND '2024-02-01';

-- 7. Select members whose names start with 'A'
SELECT * FROM members
WHERE membername LIKE 'A%';

-- 8. Select borrowings with a specific bookid and memberid using AND
SELECT * FROM borrowings
WHERE bookid = 1 AND memberid = 1;

-- 9. Sort books by title alphabetically
SELECT * FROM books
ORDER BY title ASC;

-- 10. List top 2 most recent members to join
SELECT * FROM members
ORDER BY joindate DESC
LIMIT 2;
