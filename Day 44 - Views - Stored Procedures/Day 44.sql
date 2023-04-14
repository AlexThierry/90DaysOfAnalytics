CREATE VIEW female_staff AS
SELECT StaffID,Age,Gender
FROM staff_db.staffdemographic
WHERE Gender="Female";

SELECT * 
FROM female_staff;

DROP VIEW female_staff;

DELIMITER //
CREATE PROCEDURE GetAllMale()
BEGIN
	SELECT *
    FROM staff_db.staffdemographic
    WHERE Gender = "Male";
END //

CALL GetAllMale();

DELIMITER //
CREATE PROCEDURE GetStaffByJob( IN Job VARCHAR(15))
BEGIN
	SELECT *
    FROM staff_db.staffsalary
    WHERE JobTitle = Job;
END //

CALL GetStaffByJob("Analyst");

DELIMITER $$
CREATE PROCEDURE GetCountByJob(IN Job VARCHAR(15), OUT total INT)
BEGIN
	SELECT COUNT(JobTitle) INTO total
    FROM staff_db.staffsalary
    WHERE JobTitle = Job;
END $$

CALL GetCountByJob("Analyst",@total);
SELECT @total AS JobCount;