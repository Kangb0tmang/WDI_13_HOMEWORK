-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns
-- 1. Get all information about all authors
SELECT * FROM authors;

-- 2. Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;

-- 3. Get all authors born in the 20th century or later
SELECT * FROM authors WHERE birth_year > 1900;

-- 4. Get all authors born in the USA
SELECT name, nationality LIKE '%United States of America%';

-- 5. Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;

-- 6. Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1985;

-- 7. Get only the title of all books.
SELECT title FROM books;

-- 8. Get just the year that 'A Dance with Dragons' was published
-- Cry when you realize how long it's been
SELECT title, publication_date FROM books
WHERE title LIKE '%A Dance with Dragons%';

-- 9. Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';

-- 10. Add yourself as an author
INSERT INTO authors(name, nationality, birth_year)
VALUES ('Jon Kang', 'Malaysia', 1991);

-- 11. Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books(title, publication_date, author_id)
VALUES ('Fantasy NBA for dummies', 2017, 9);

INSERT INTO books(title, publication_date, author_id)
VALUES ('The Life of Kang', 2017, 9);

-- 12. Update one of your books to have a new title
UPDATE books SET title = 'The Life of Kang: Ball is Life'
WHERE id = 70;

-- 13. Delete your books
DELETE FROM books
WHERE id IN (69, 70);

-- 14. Delete your author entry
DELETE FROM authors
WHERE id = 9;
