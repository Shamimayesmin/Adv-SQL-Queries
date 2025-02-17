create table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    published_date DATE
);

SELECT * FROM courses;

-- date = YYYY-MM-DD

INSERT INTO
    courses (
        course_name,
        description,
        published_date
    )
VALUES (
        'SQL Basics',
        'Learn the fundamentals of SQL',
        '2024-01-10'
    ),
    (
        'Advanced SQL Queries',
        'Master complex SQL queries',
        NULL
    ),
    (
        'Database Administration',
        NULL,
        NULL
    ),
    (
        'Data Analytics with SQL',
        'Using SQL for data analysis',
        '2024-04-25'
    ),
    (
        'SQL Performance Optimization',
        'Techniques to improve SQL query performance',
        '2024-05-30'
    );


    -- Update database table row
    -- UPDATE table_name
    -- SET
    -- column1 = value1,
    -- coloumn2 = value2,
    -- WHERE condition



    UPDATE courses
    SET
    course_name = 'SQL FOR BEGINNERS',
    description = 'Dummy text'
    WHERE course_id >1 OR course_id<5;
    -- WHERE course_id >1 AND course_id<5;
    -- WHERE course_id =1;

-- Update any column if you don't want to put data
update courses
SET
course_name = 'pg',
description = NULL
WHERE course_id =1


    -- Delete row
    DELETE FROM courses
    WHERE course_id =2;