CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));
//created a second table named bookshelves inside of lab14_normal

INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;
//retrieved bookshelf values from books table in name column.

ALTER TABLE books ADD COLUMN bookshelf_id INT;
//added bookshelf_id column to books table.

UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;
//prepared connection between tables.  id is set to value of bookshelf_id

ALTER TABLE books DROP COLUMN bookshelf;
//modified books table: removed column bookshelf, added bookshelf_id(foreign key)