DROP TABLE GRADE_REPORT;
DROP TABLE PREREQUISITE;


CREATE TABLE STUDENT
    (StudentNumber INT PRIMARY KEY,
    sName VARCHAR(50),
    Class INT,
    Major VARCHAR(50));

CREATE TABLE COURSE
    (CourseNumber INT PRIMARY KEY,
    CourseName VARCHAR(50),
    CreditHours INT,
    Department VARCHAR(50));

CREATE TABLE SECTION
      (SectionIdentifier INT PRIMARY KEY,
        CourseNumber INT,
        Semester VARCHAR(50),
        FOREIGN KEY(CourseNumber) REFERENCES COURSE(CourseNumber),
        sYear INT,
        Instructor VARCHAR(50));


CREATE TABLE PREREQUISITE
    (CourseNumber INT,
    FOREIGN KEY(CourseNumber) REFERENCES COURSE(CourseNumber),
    PrerequisiteNumber INT,
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




    



    
    