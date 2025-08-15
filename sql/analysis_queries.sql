-- Average mark per course
SELECT c.course_name, AVG(m.marks)
FROM marks m JOIN courses c USING(course_id)
GROUP BY c.course_name;

-- Highest scorer
SELECT s.student_name, m.marks
FROM marks m
JOIN students s USING(student_id)
ORDER BY m.marks DESC LIMIT 3;
