/**Project: Design a store database**/

/**Create a store for an Ice Cream Shop. The table should include 5 columns, at least 15 items.**/

CREATE TABLE Ice_Cream_Table(Item_ID INTEGER PRIMARY KEY, Brand TEXT, Flavor TEXT, Price  INTEGER, Rate INTEGER);

INSERT INTO Ice_Cream_Table VALUES(1, "Häagen-Dazs", "Pumpkin", 5, 3);
INSERT INTO Ice_Cream_Table VALUES(2, "Häagen-Dazs", "Apple", 4, 4);
INSERT INTO Ice_Cream_Table VALUES(3, "Friendly's", "Banana", 5, 1);
INSERT INTO Ice_Cream_Table VALUES(4, "Great Value", "Straweberry", 4.25, 2);
INSERT INTO Ice_Cream_Table VALUES(5, "Friendly's", "Choclate", 3, 5);
INSERT INTO Ice_Cream_Table VALUES(6, "Talenti", "Mango", 6.99, 5);
INSERT INTO Ice_Cream_Table VALUES(7, "Ben & Jerry's", "Saturday Night", 7.09, 5);
INSERT INTO Ice_Cream_Table VALUES(8, "Turkey Hill", "Vanilla", 3, 2);
INSERT INTO Ice_Cream_Table VALUES(9, "Baskin-Robbins", "Caramel", 5.88, 5);
INSERT INTO Ice_Cream_Table VALUES(10, "Baskin-Robbins", "Cherry", 5.65, 2);
INSERT INTO Ice_Cream_Table VALUES(11, "So Delicious", "Peanut Butter", 5, 4);
INSERT INTO Ice_Cream_Table VALUES(12, "So Delicious", "Cookies N' Cream", 2.35, 5);
INSERT INTO Ice_Cream_Table VALUES(13, "Great Value", "Rainbow", 2.99, 5); 
INSERT INTO Ice_Cream_Table VALUES(14, "Ben & Jerry's", "Salted Caramel Brownie", 5, 4);
INSERT INTO Ice_Cream_Table VALUES(15, "Talenti", "Blueberry Crumble", 6.45, 4);

/** Select statement to order items by price.**/

SELECT * FROM Ice_Cream_Table
ORDER BY Price;

/** Statistic to show flavors rated 5.**/
SELECT * FROM ICE_CREAM_TABLE
where Rate = 5;
