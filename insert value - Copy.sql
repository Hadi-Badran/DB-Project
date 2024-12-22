--table grade :

INSERT INTO grade (grade_id, name, grade_description)
VALUES (1, 'First Grade', 'This is the first grade in the school');
  
INSERT INTO grade (grade_id, name, grade_description)
VALUES (2, 'Second Grade', 'This is the second grade in the school');

INSERT INTO grade (grade_id, name, grade_description)
VALUES (3, 'Third Grade', 'This is the third grade in the school');


INSERT INTO grade (grade_id, name, grade_description)
VALUES (4, 'Ninth Grade', 'First year of high school, core subjects.');

INSERT INTO grade (grade_id, name, grade_description)
VALUES (5, 'Tenth Grade', 'Exploring specialized courses and subjects');

INSERT INTO grade (grade_id, name, grade_description)
VALUES (6, 'Eleventh Grade', 'Ppreparing for college readiness and tests');

INSERT INTO grade (grade_id, name, grade_description)
VALUES (7, 'Twelfth Grade', 'Final high school grade');

--___________________________________________________
--table teacher:

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (1, 'ali.mustafa@gmail.com', 'aliPass001', 'Ali', 'Mustafa', TO_DATE('1982-07-22', 'YYYY-MM-DD'), '0567536165', '059133106', 1, SYSDATE, '192.168.2.1');

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (2, 'sobhi.musa@gmail.com', 'sobhiPass234', 'Sobhi', 'Mustafa', TO_DATE('1992-01-11', 'YYYY-MM-DD'), '0592144896', '0567536165', 0, SYSDATE, '192.168.2.2');

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (3, 'mariam.adel@gmail.com', 'mariamPass789', 'Mariam', 'Adel', TO_DATE('1988-03-15', 'YYYY-MM-DD'), '0598971234', '0568976543', 1, SYSDATE, '192.168.3.3');

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (4, 'hadi.mohammad@gmail.com', 'hadiPass001', 'Hadi', 'Mohammad', TO_DATE('1985-03-10', 'YYYY-MM-DD'), '0123456789', '0598861902', 1, SYSDATE, '192.168.4.1');

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (5, 'ahmad.imad@egmail.com', 'ahmadPass123', 'Ahmad', 'Imad', TO_DATE('1990-05-15', 'YYYY-MM-DD'), '1234567890', '0598817229', 1, SYSDATE, '192.168.4.2');

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (6, 'salim.ahmadxz@hot mail.com', 'salimPass234', 'Salim', 'Ahmad', TO_DATE('1987-07-20', 'YYYY-MM-DD'), '2345678901', '7890123460', 1, SYSDATE, '192.168.4.3');

INSERT INTO teacher (teacher_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (7, 'sarah.miller_new@gmail.com', 'sarahPassword567', 'Sarah', 'Miller', TO_DATE('1988-09-09', 'YYYY-MM-DD'), '6789012345', '9876543211', 1, SYSDATE, '192.168.2.3');


--_____________________________________________________
--table classroom :


INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (1, 2024, 1, 'A', 1, 'This is the first grade classroom.', 1);

INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (2, 2024, 2, 'B', 1, 'This is the second grade classroom.', 2);

INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (3, 2024, 3, 'A', 0, 'This is the third grade classroom.', 3);

INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (4, 2024, 4, 'C', 1, 'This is the ninth grade classroom.', 4);

INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (5, 2024, 5, 'D', 1, 'This is the tenth grade classroom.', 5);

INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (6, 2024, 6, 'A', 0, 'This is the eleventh grade classroom.', 6);

INSERT INTO classroom (classroom_id, year, grade_id, section, status, remarks, teacher_id)
VALUES (7, 2024, 7, 'B', 1, 'This is the twelfth grade classroom.', 7);


--_________________________________
--table parent:

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (1, 'hadi@gmail.com', 'hadiPass123', 'Hadi', 'Kamal', TO_DATE('1980-02-15', 'YYYY-MM-DD'), '0591234567', '0569876543', 1, SYSDATE, '192.168.1.1');

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (2, 'mohammad@yahoo.com', 'mohammadPass234', 'Mohammad', 'Salim', TO_DATE('1985-05-10', 'YYYY-MM-DD'), '0592233445', '0567788990', 1, SYSDATE, '192.168.1.2');

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (3, 'heba@hotmail.com', 'hebaPass567', 'Heba', 'Mustafa', TO_DATE('1990-09-20', 'YYYY-MM-DD'), '0593344556', '0561122334', 1, SYSDATE, '192.168.1.3');

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (4, 'ali@outlook.com', 'aliPass789', 'Ali', 'Omar', TO_DATE('1975-11-05', 'YYYY-MM-DD'), '0594455667', '0569988776', 1, SYSDATE, '192.168.1.4');

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (5, 'raed@gmail.com', 'raedPass321', 'Raed', 'Ahmed', TO_DATE('1982-06-25', 'YYYY-MM-DD'), '0595566778', '0568899776', 1, SYSDATE, '192.168.1.5');

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (6, 'sobhi@gmail.com', 'sobhiPass654', 'Sobhi', 'Tariq', TO_DATE('1995-03-15', 'YYYY-MM-DD'), '0596677889', '0567766554', 1, SYSDATE, '192.168.1.6');

INSERT INTO parent (parent_id, email, password, fname, lname, dob, phone, mobile, status, last_login_date, last_login_ip)
VALUES (7, 'sami.jamal@gmail.com', 'samiPass987', 'Sami', 'Jamal', TO_DATE('1988-12-12', 'YYYY-MM-DD'), '0597788990', '0563344556', 1, SYSDATE, '192.168.1.7');

--_________________________________________
--table student:

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (1, 'omar.hadi@gmail.com', 'omarPass001', 'Omar', 'Hadi', TO_DATE('2010-03-15', 'YYYY-MM-DD'), '0591234561', '0569876541', 1, SYSDATE, 1, SYSDATE, '192.168.2.1');

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (2, 'lara.mohammad@gmail.com', 'laraPass234', 'Lara', 'Mohammad', TO_DATE('2011-06-20', 'YYYY-MM-DD'), '0592233446', '0567788991', 2, SYSDATE, 1, SYSDATE, '192.168.2.2');

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (3, 'khaled.heba@gmail.com', 'khaledPass567', 'Khaled', 'Heba', TO_DATE('2012-09-05', 'YYYY-MM-DD'), '0593344557', '0561122335', 3, SYSDATE, 1, SYSDATE, '192.168.2.3');

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (4, 'mona.ali@gmail.com', 'monaPass789', 'Mona', 'Ali', TO_DATE('2010-01-25', 'YYYY-MM-DD'), '0594455668', '0569988777', 4, SYSDATE, 1, SYSDATE, '192.168.2.4');

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (5, 'yousef.raed@gmail.com', 'yousefPass321', 'Yousef', 'Raed', TO_DATE('2011-04-10', 'YYYY-MM-DD'), '0595566779', '0568899777', 5, SYSDATE, 1, SYSDATE, '192.168.2.5');

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (6, 'aya.sobhi@gmail.com', 'ayaPass654', 'Aya', 'Sobhi', TO_DATE('2009-12-18', 'YYYY-MM-DD'), '0596677890', '0567766555', 6, SYSDATE, 1, SYSDATE, '192.168.2.6');

INSERT INTO student (student_id, email, password, fname, lname, dob, phone, mobile, parent_id, date_of_join, status, last_login_date, last_login_ip)
VALUES (7, 'nour.sami@gmail.com', 'nourPass987', 'Nour', 'Sami', TO_DATE('2008-07-15', 'YYYY-MM-DD'), '0597788991', '0563344557', 7, SYSDATE, 1, SYSDATE, '192.168.2.7');


--table classroom_student:

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (1, 1);

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (1, 2);

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (2, 3);

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (3, 4);

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (4, 5);

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (5, 6);

INSERT INTO classroom_student (classroom_id, student_id)
VALUES (6, 7);

--__________________________________
--table attendance:

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), 1, 1, 'Present and participated in class.');

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), 2, 0, 'Absent due to illness.');

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), 3, 1, 'Present but quiet.');

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-02', 'YYYY-MM-DD'), 4, 1, 'On time and participated.');

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-02', 'YYYY-MM-DD'), 5, 0, 'Absent, no notice given.');

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-02', 'YYYY-MM-DD'), 6, 1, 'Present and asked questions.');

INSERT INTO attendance (date_of_attendance, student_id, status, remark)
VALUES (TO_DATE('2024-01-03', 'YYYY-MM-DD'), 7, 1, 'Late to class but participated.');




--____________________________________________
--table exam_tybe:


INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (1, 'Incomplete Exam', 'Retake exam for incomplete subjects.');

INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (2, 'First Term Exam', 'First term exam for all subjects.');

INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (3, 'Mid-Term Math', 'Mid-term exam for Mathematics.');

INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (4, 'Final Science Exam', 'Final exam for Science.');

INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (5, 'Oral English Exam', 'Oral exam for English.');

INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (6, 'Special Class Exam', 'Special exam for Sarah’s class.');

INSERT INTO exam_type (exam_type_id, name, description_exam)
VALUES (7, 'Advanced Exam', 'Advanced exam for Hadi students.');


--________________________________________________________________

--table exam :

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (1, 1, 'Incomplete Exam for Math', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (2, 2, 'First Term Exam for Science', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (3, 3, 'Mid-Term Exam for Math', TO_DATE('2024-02-05', 'YYYY-MM-DD'));

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (4, 4, 'Final Science Exam', TO_DATE('2024-03-20', 'YYYY-MM-DD'));

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (5, 5, 'Oral English Exam', TO_DATE('2024-03-25', 'YYYY-MM-DD'));

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (6, 6, 'Special Exam for Sarah’s Class', TO_DATE('2024-04-01', 'YYYY-MM-DD'));

INSERT INTO exam (exam_id, exam_type_id, name, start_date)
VALUES (7, 7, 'Advanced Exam for Hadi Students', TO_DATE('2024-04-10', 'YYYY-MM-DD'));

--____________________________________________
--table course:

INSERT INTO course (course_id, name, description, grade_id)
VALUES (1, 'Mathematics', 'Basic arithmetic and algebra', 1);

INSERT INTO course (course_id, name, description, grade_id)
VALUES (2, 'Science', 'Introduction to natural sciences', 2);

INSERT INTO course (course_id, name, description, grade_id)
VALUES (3, 'English', 'Basic reading and writing skills', 3);

INSERT INTO course (course_id, name, description, grade_id)
VALUES (4, 'History', 'Overview of world history', 4);

INSERT INTO course (course_id, name, description, grade_id)
VALUES (5, 'Physics', 'Basic concepts of physics', 5);

INSERT INTO course (course_id, name, description, grade_id)
VALUES (6, 'Chemistry', 'Introduction to chemical reactions', 6);

INSERT INTO course (course_id, name, description, grade_id)
VALUES (7, 'Biology', 'Study of living organisms', 7);


--________________________________________________________
--table  exam_result:

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (1, 1, 1, '70');   

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (2, 2, 2, '90');  

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (3, 3, 3, '88');  

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (4, 4, 4, '85'); 

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (5, 5, 5, '60'); 

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (6, 6, 6, '95'); 

INSERT INTO exam_result (exam_id, student_id, course_id, marks)
VALUES (7, 7, 7, '95');  
--________________________________________________________________________








