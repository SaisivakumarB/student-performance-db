-- Top Students by Total Marks
SELECT s.name, c.course_name, m.total
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Marks m ON e.enroll_id = m.enroll_id
ORDER BY m.total DESC;

-- Attendance vs. Performance
SELECT s.name, a.attended, m.total
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Attendance a ON e.enroll_id = a.enroll_id
JOIN Marks m ON e.enroll_id = m.enroll_id;
