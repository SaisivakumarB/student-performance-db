CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    dob DATE,
    gender VARCHAR(10)
);

CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE Enrollments (
    enroll_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    course_id INT REFERENCES Courses(course_id),
    semester VARCHAR(10)
);

CREATE TABLE Marks (
    mark_id SERIAL PRIMARY KEY,
    enroll_id INT REFERENCES Enrollments(enroll_id),
    midterm INT,
    final INT,
    total INT
);

CREATE TABLE Attendance (
    attendance_id SERIAL PRIMARY KEY,
    enroll_id INT REFERENCES Enrollments(enroll_id),
    total_classes INT,
    attended INT
);
