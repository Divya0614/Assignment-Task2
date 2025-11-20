USE college;


CREATE TABLE  assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    course_name VARCHAR(100),
    course_id INT NOT NULL,
    description TEXT,
    due_date DATE,
    lesson_id INT NOT NULL
);


INSERT INTO assignments (name, course_name, course_id, description, due_date, lesson_id)
VALUES
('Divya','IT', 1, 'Information technology', '2025-07-03', 1),
('Kaviya','CSE', 2, 'Computer Science and Engineering', '2025-07-02', 2);


ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_course
FOREIGN KEY (course_id) REFERENCES courses(course_id);


ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_lesson
FOREIGN KEY (lesson_id) REFERENCES lessons(lesson_id);

select * from assignments
