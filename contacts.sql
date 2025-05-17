CREATE DATABASE test_db;
USE test_db;

CREATE TABLE contacts(
    id int PRIMARY KEY,
    name varchar(255),
    email varchar(255),
    major varchar(255),
    whenfirstmeet varchar(255),
);


ALTER TABLE contacts
ADD phone int;


ALTER TABLE contacts
MODIFY COLUMN phone varchar(255);

ALTER TABLE contacts
ADD whenfirstmeet varchar(255) DEFAULT '2023-10-01';

ALTER TABLE contacts
DROP COLUMN email;

#-- Insert some sample data
insert into contacts (id, name, major, whenfirstmeet) values
(1, 'zhanwen','tam', 'grad');

INSERT INTO contacts (id, name, major, whenfirstmeet) VALUES
(2, 'yangfan','me', 'grad');


INSERT INTO contacts (id, name, major, whenfirstmeet) VALUES
(3, 'huacong','ce', 'undergrad'),
(4, 'chunlin','ce', 'undergrad');

INSERT INTO contacts (id, name, major, whenfirstmeet) VALUES
(5, 'z','econ', 'grad');

DELETE FROM contacts WHERE name = 'z';

REPLACE INTO contacts (id, name, major, whenfirstmeet) VALUES
(5, 'z','econ', 'grad');

UPDATE contacts 
SET whenfirstmeet = 'benke' WHERE whenfirstmeet = 'undergrad';