CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

ALTER TABLE persons
DROP COLUMN phone;

SELECT *
FROM persons;

INSERT INTO persons (id, person_name, birth_date, phone, email)
VALUES
(1, 'John Cena', '1995-02-26', '9932296996', 'sankalpj01@gmail.com'),
(2, 'Shruti Saxena', '1997-07-31', '8989850800', 'shruti.saxena.01@yandex.com');

--Truncate all rows but keep the structure intact
TRUNCATE TABLE persons;

--Rename a Table
EXEC sp_rename 'employees', 'persons';

DROP TABLE persons;