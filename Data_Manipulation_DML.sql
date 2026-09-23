SELECT *
FROM customers;

INSERT INTO customers (id, first_name, country, score)
VALUES
	(6, 'Chris', 'UK', 600),
	(7, 'Sankalp', 'India', 1000),
	(8, 'Anne', 'USA', NULL);

UPDATE customers
SET
	score = 100
WHERE id = 8;

UPDATE customers
SET
	country = 'Canada',
	score = 200
WHERE id = 8;

DELETE FROM customers
WHERE id > 5;

CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

SELECT *
FROM persons;

-- Insert data from 'customers' to 'persons'
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
id,
first_name,
NULL,
'Unknown'
FROM customers;

DROP TABLE persons;

-- Two ways of Deleting Complete Data from a Table. Truncate is faster that delete
DELETE FROM persons;
TRUNCATE TABLE persons;

--For Merge refer to Google AI Mode
