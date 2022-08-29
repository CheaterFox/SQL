CREATE TABLE employee(
id SERIAL PRIMARY KEY,
full_name VARCHAR(50) NOT NULL,
birthday DATE,
email VARCHAR(100));

--- ***************

UPDATE employee
SET full_name = 'Angelina Fox',
	birthday = '1996-12-03',
	email = 'an_fox@uk.com'
WHERE id = 1
RETURNING *;

UPDATE employee
SET full_name = 'Michelle Fox',
	birthday = '1997-02-03',
	email = 'mic_fox@uk.com'
WHERE full_name = 'Angelina Fox'
RETURNING *;

UPDATE employee
SET full_name = 'Anna Fox',
	birthday = '1990-05-03',
	email = 'ann_fox@uk.com'
WHERE full_name = 'Michelle Fox' AND
	birthday = '1997-02-03'
RETURNING *;

UPDATE employee
SET full_name = 'Micheal Fox',
	birthday = '1986-12-03',
	email = 'm_fox@uk.com'
WHERE email = 'ann_fox@uk.com'
RETURNING *;

UPDATE employee
SET full_name = 'Angelina Fox',
	birthday = '1996-12-03',
	email = 'an_fox@uk.com'
WHERE full_name LIKE 'M%'
RETURNING *;

--- ***************

DELETE FROM employee
WHERE full_name = 'Angelina Fox';

DELETE FROM employee
WHERE birthday = '1999-05-03';

DELETE FROM employee
WHERE id = 25;

DELETE FROM employee
WHERE email LIKE 'a%';

DELETE FROM employee;
