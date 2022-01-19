-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

-- CREATE TABLE sections (
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   time TEXT,
--   course_id INTEGER FOREIGN KEY REFERENCES courses(id),
--   teacher_id INTEGER FOREIGN KEY REFERENCES teachers(id)
-- );
-- Create the rest of the tables

CREATE TABLE sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  course_id INTEGER,
  teacher_id INTEGER
);


CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id INTEGER,
  section_id INTEGER
);
