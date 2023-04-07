SELECT *
FROM staff_db.staffdemographic
LEFT JOIN staff_db.staffsalary
ON staffdemographic.StaffID = staffsalary.StaffID
UNION
SELECT *
FROM staff_db.staffdemographic
RIGHT JOIN staff_db.staffsalary
ON staffdemographic.StaffID = staffsalary.StaffID;
