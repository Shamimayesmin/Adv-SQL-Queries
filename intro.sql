-- ## CREATE DATABASE
-- CREATE DATABASE db1;

-- ## RENAME DATABASE
-- ALTER DATABASE db1 RENAME TO db2;

-- ## DELETE DATABASE
-- DROP DATABASE db1;

-- ## Create a student table
-- CREATE TABLE student (
--     student_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     cgpa NUMERIC(1, 2)
-- )


-- ## Rename a table
-- ALTER TABLE student RENAME TO learners;

-- ## DELETE a table
-- DROP TABLE learners;


-- ## create a table with CONSTRAINTS

-- CREATE Table "users"(
--     user_id SERIAL PRIMARY KEY,
--     user_name VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
    
-- )
-- OR
-- CREATE Table "user1"(
--     user_id SERIAL,
--     user_name VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     PRIMARY KEY(user_id, user_name)
-- )
-- OR
CREATE Table "user2"(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
)

-- ##1 (insert data in a table)
insert into user2 (user_id, user_name,email, age) VALUES (1, 'abc', 'abc@gmail.com', 56);

-- ##2 (insert data in a table)
INSERT INTO user2(user_name,email) VALUES('shamima','shamima@.com'),('alina' , 'alina@ph.com');

-- ## 3 (insert data in a table)
INSERT INTO user2
 VALUES(1,'shamima','shamima@.com'),(2, 'alina' , 'alina@ph.com');

-- ## Delete all rows in a table without deleting the table
TRUNCATE TABLE user2


-- ## Alter table
-- Add a column , drop a colum, change datatype of a colum
-- Rename a colum, set DETAULT value for a COLUMN
-- Add CONSTRAINT to a COLUMN, drop CONSTRAINT for a column
-- table rename
-- ALTER TABLE table_name action

-- Add a column
ALTER TABLE user2
add column password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

-- Delete a column
ALTER Table user2 
DROP COLUMN age;

-- Change data type of column
ALTER TABLE user2 add column deno int;

ALTER TABLE user2
alter column deno type text;

--  Set default value
ALTER TABLE user2
 alter COLUMN deno set DEFAULT 'bangladesh';

-- Remove default value
 ALTER TABLE user2
 alter COLUMN deno DROP DEFAULT;

--  Rename a column
ALTER TABLE user2
RENAME COLUMN deno to demo;

-- Add a constraint
ALTER Table user2
alter COLUMN demo set not null;

-- Drop a constraint
ALTER Table user2
alter COLUMN demo DROP not null;

-- Add a constraint
ALTER Table user2
ADD CONSTRAINT unique_email UNIQUE(email);

-- Delete a constraint
ALTER TABLE user2
DROP CONSTRAINT unique_email;

 INSERT into user2 value(4, 'shamimass', 'alina1@gmail.com');

-- ## Can see all table data
SELECT * from user2;
