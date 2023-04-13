ALTER TABLE staff_db.staffdemographic
ADD StartDate DATE;

INSERT INTO staff_db.staffdemographic
VALUES (113,'Alex','Thierry',18,'Male','2022-06-30');

WITH staff_start_date
AS (SELECT StartDate 
	FROM staff_db.staffdemographic
    WHERE StaffID=113)
SELECT DAY(StartDate)
FROM staff_start_date;

SELECT DATEDIFF('2025-01-13','2022-04-19');

SELECT NOW();

SELECT FirstName, LENGTH(FirstName) AS Length_FirstName
FROM staff_db.staffdemographic;

SELECT FirstName, LastName , CONCAT(FirstName," ",LastName) AS FullName
FROM staff_db.staffdemographic;

SELECT JobTitle, SUBSTRING(JobTitle,2,5) AS Substring_JobTitle
FROM staff_db.staffsalary;

SELECT JobTitle, LEFT(JobTitle,2) AS FirstTwoCharacters
FROM staff_db.staffsalary;

SELECT JobTitle, RIGHT(JobTitle,2) AS LastTwoCharacters
FROM staff_db.staffsalary;

SELECT LOCATE("days","90daysofanalytics") AS TextLocated;

SELECT REPLACE("90daysofanalytics","analytics","SQL") AS ReplacedText;