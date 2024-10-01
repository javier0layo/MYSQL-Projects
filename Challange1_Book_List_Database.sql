/** Challenge: Book list database **/

/**1. Create a table to store the list of books**/


CREATE TABLE favoriteBooks(id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO favoriteBooks VALUES (1, "Database Processing", 4);
SELECT * FROM favoriteBooks;

INSERT INTO favoriteBooks VALUES(2, "Computer Network and Internets", 3);
INSERT INTO favoriteBooks VALUES(3, "Murach's Python Programming", 5);

SELECT * FROM favoriteBooks;
