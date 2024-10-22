
/** Create table for famous people. **/
CREATE TABLE FAMOUSPEOPLE (
    ID INTEGER PRIMARY KEY AUTOINCREMENT, 
    FullName TEXT, 
    Age INTEGER
);

/** Insert famous people data **/
INSERT INTO FAMOUSPEOPLE (FullName, Age) VALUES 
("Taylor Swift", 34),
("Dwayne Johnson", 52),
("Zendaya", 28),
("Ryan Reynolds", 47),
("Ariana Grande", 31),
("Blake Lively", 36),
("Priyanka Chopra", 42),
("John Krasinski", 45);

/** Create table for spouses **/
CREATE TABLE SPOUSE (
    ID INTEGER PRIMARY KEY AUTOINCREMENT, 
    FamousID INTEGER, 
    PartnerFullName TEXT,
    FOREIGN KEY (FamousID) REFERENCES FAMOUSPEOPLE(ID)
);

/** Insert spouse data **/
INSERT INTO SPOUSE (FamousID, PartnerFullName) VALUES 
(4, "Blake Lively"), 
(6, "Ryan Reynolds"), 
(7, "Nick Jonas"), 
(8, "Emily Blunt");

/** Create table for actors **/
CREATE TABLE Actor (
    ID INTEGER PRIMARY KEY AUTOINCREMENT, 
    ActorID INTEGER, 
    PopularRole TEXT, 
    Title TEXT,
    FOREIGN KEY (ActorID) REFERENCES FAMOUSPEOPLE(ID)
);

/** Insert actor data **/
INSERT INTO Actor (ActorID, PopularRole, Title) VALUES 
(2, "Luke Hobbs", "Fast & Furious"), 
(3, "Rue Bennett", "Euphoria"), 
(4, "Deadpool", "Deadpool series"), 
(5, "Cat Valentine", "Victorious"), 
(6, "Serena van der Woodsen", "Gossip Girl"), 
(7, "Alex Parrish", "Quantico"), 
(8, "Jim Halpert", "The Office");

/** Create table for singers **/
CREATE TABLE Singer (
    ID INTEGER PRIMARY KEY AUTOINCREMENT, 
    SingerID INTEGER, 
    Song TEXT, 
    Album TEXT,
    FOREIGN KEY (SingerID) REFERENCES FAMOUSPEOPLE(ID)
);

/** Insert singer data **/
INSERT INTO Singer (SingerID, Song, Album) VALUES 
(1, "Shake It Off", "1989"), 
(5, "Thank U, Next", "Sweetener");

/** List famous person with their partner's name **/
SELECT fp.FullName, sp.PartnerFullName
FROM FamousPeople fp 
JOIN Spouse sp ON fp.ID = sp.FamousID;

/** List famous persons who are both actors and singers **/
SELECT DISTINCT fp.FullName
FROM FamousPeople fp
WHERE fp.ID IN (SELECT a.ActorID FROM Actor a)
AND fp.ID IN (SELECT s.SingerID FROM Singer s);
