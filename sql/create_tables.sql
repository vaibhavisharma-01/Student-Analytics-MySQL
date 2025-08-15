CREATE TABLE students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  gender CHAR(1),
  age INT
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  credits INT
);

CREATE TABLE marks (
  student_id INT,
  course_id INT,
  marks INT,
  PRIMARY KEY(student_id, course_id),
  FOREIGN KEY(student_id) REFERENCES students(student_id),
  FOREIGN KEY(course_id) REFERENCES courses(course_id)
);
