create table student_grades(
	student_id serial primary key,
	course_id varchar(5),
	student_name varchar(150),
	grade varchar(2)
)

select * from student_grades

insert into student_grades(student_id, course_id, student_name, grade) values (101, 'CS101', 'Shruti Yadav', 'B')
insert into student_grades(student_id, course_id, student_name, grade) values (102, 'CS102', 'Tejas Patel', 'B+'), (103, 'CS103', 'Astha Gupta', 'A'), (104, 'CS104', 'Reyansh Jha', 'C')

UPDATE student_grades
SET grade = CASE 
    WHEN student_id = 101 THEN 'A-'
    WHEN student_id = 102 THEN 'B'
    WHEN student_id = 103 THEN 'A+'
    ELSE grade
END
WHERE student_id IN (101, 102, 103)

select * from student_grades

UPDATE student_grades
SET grade = CASE 
    WHEN student_id = 104 THEN 'A'
    ELSE grade
END
WHERE student_id IN (104)

select * from student_grades

  