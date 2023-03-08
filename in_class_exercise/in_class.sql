

CREATE TABLE STUDENT
    (StudentNumber INT PRIMARY KEY,
    sName VARCHAR(50),
    Class INT,
    Major VARCHAR(50));

CREATE TABLE COURSE
    (CourseNumber VARCHAR(50) PRIMARY KEY,
    CourseName VARCHAR(50),
    CreditHours INT,
    Department VARCHAR(50));

CREATE TABLE SECTION
      (SectionIdentifier INT PRIMARY KEY,
        CourseNumber VARCHAR(50),
        Semester VARCHAR(50),
        FOREIGN KEY(CourseNumber) REFERENCES COURSE(CourseNumber),
        sYear INT,
        Instructor VARCHAR(50));


CREATE TABLE PREREQUISITE
    (CourseNumber VARCHAR(50),
    FOREIGN KEY(CourseNumber) REFERENCES COURSE(CourseNumber),
    PrerequisiteNumber VARCHAR(50),
    FOREIGN KEY(PrerequisiteNumber) REFERENCES COURSE(CourseNumber),
    PRIMARY KEY (CourseNumber, PrerequisiteNumber));

CREATE TABLE GRADE_REPORT
    (Grade VARCHAR(50),
    StudentNumber INT,
    FOREIGN KEY(StudentNumber) REFERENCES STUDENT(StudentNumber)
                    ON DELETE CASCADE,
    SectionIdentifier INT,
    FOREIGN KEY(SectionIdentifier) REFERENCES SECTION(SectionIdentifier)   
                    ON DELETE CASCADE,
    PRIMARY KEY (StudentNumber, SectionIdentifier));


INSERT INTO STUDENT
VALUES (17, 'Smith', 1, 'CS'),
       (8, 'Brown', 2, 'CS');

INSERT INTO COURSE
VALUES ('CS1310', 'Intro to Computer Science', 4, 'CS'),
        ('CS3320', 'Data Structures', 4, 'CS'),
        ('MATH2410', 'Discrete Mathematics', 3, 'MATH'),
        ('CS3380', 'Database', 3, 'CS');

INSERT INTO SECTION
VALUES (85, 'MATH2410', 'Fall', 98, 'King'),
        (92, 'CS1310', 'Fall', 98, 'Anderson'),
        (102, 'CS3320', 'Spring', 99, 'Knuth'),
        (112, 'MATH2410', 'Fall', 99, 'Chang'),
        (119, 'CS1310', 'Fall', 99, 'Anderson'),
        (135, 'CS3380', 'Fall', 99, 'Stone');


INSERT INTO GRADE_REPORT
VALUES ('B', 17, 112),
        ('C', 17, 119),
        ('A', 8, 85),
        ('A', 8, 92),
        ('B', 8, 102),
        ('A', 8, 135);

INSERT INTO PREREQUISITE
VALUES ('CS3380', 'CS3320'),
        ('CS3380', 'MATH2410'),
        ('CS3320', 'CS1310');

SELECT * FROM STUDENT;
SELECT * FROM COURSE;
SELECT * FROM SECTION;
SELECT * FROM GRADE_REPORT;
SELECT * FROM PREREQUISITE;




    



    
    