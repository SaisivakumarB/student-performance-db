INSERT INTO Students (name, email, dob, gender)
VALUES 
('Alice Johnson', 'alice@example.com', '2001-03-15', 'Female'),
('Bob Smith', 'bob@example.com', '2000-07-22', 'Male');

INSERT INTO Courses (course_name, credits)
VALUES
('Mathematics', 3),
('History', 2);

INSERT INTO Enrollments (student_id, course_id, semester)
VALUES
(1, 1, 'Fall2024'),
(2, 2, 'Fall2024');

INSERT INTO Marks (enroll_id, midterm, final, total)
VALUES
(1, 40, 50, 90),
(2, 35, 45, 80);

INSERT INTO Attendance (enroll_id, total_classes, attended)
VALUES
(1, 40, 38),
(2, 40, 36);
