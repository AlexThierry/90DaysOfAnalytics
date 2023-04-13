ALTER TABLE staff_db.staffdemographic
ADD BirthDay DATE;

ALTER TABLE staff_db.staffdemographic
DROP COLUMN BirthDay;

INSERT INTO staff_db.staffdemographic
VALUES (113,'Alex','Thierry',25,'Male','2022-05-23');

DELETE FROM staff_db.staffdemographic
WHERE StaffID = 113;

UPDATE staff_db.staffdemographic
SET BirthDay = '2022-05-21'
WHERE StaffID = 101;