

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

SELECT NAME, NUMBER_GRADE, ROUND(100 * FRACTION_COMPLETED) AS PERCENT_COMPLETED
FROM STUDENT_GRADES;

SELECT COUNT(*),
CASE
        WHEN NUMBER_GRADE > 90 THEN "A"
        WHEN NUMBER_GRADE > 80 THEN "B"
        WHEN NUMBER_GRADE > 70 THEN "C"
    ELSE "F"
    END AS "letter_grade"
FROM STUDENT_GRADES
GROUP BY LETTER_GRADE;



