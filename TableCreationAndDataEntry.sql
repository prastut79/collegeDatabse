connect system
CREATE USER cw IDENTIFIED BY cw;
GRANT DBA TO cw;
CONNECT cw/cw;

Class
~~~~~
CREATE TABLE Class(
    class_id NUMBER PRIMARY KEY,
    class_name VARCHAR(12) NOT NULL
);
DESCRIBE Class;

INSERT ALL 
    INTO CLASS VALUES(1, 'Annapurna')
    INTO CLASS VALUES(2, 'Kanchanjunga')
    INTO CLASS VALUES(3, 'Patan')
    INTO CLASS VALUES(4, 'Edinburg')
    INTO CLASS VALUES(5, 'London')
    INTO CLASS VALUES(6, 'Sagarmatha')
    INTO CLASS VALUES(7, 'Dhaulagiri')
SELECT * FROM DUAL;
SELECT * FROM Class;

Instructor
~~~~~~~~~~
CREATE TABLE Instructor(
    instructor_id NUMBER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    salary NUMBER(6)
);
DESCRIBE Instructor;

INSERT ALL
    INTO Instructor VALUES(1, 'Shavonne Amordad', 100000)
    INTO Instructor VALUES(2, 'Etenesh Barlaam', 10000)
    INTO Instructor VALUES(3, 'Jacya Priyansa', 70000)
    INTO Instructor VALUES(4, 'Barsbara Godiva', 20000)
    INTO Instructor VALUES(5, 'Zakaria Berend', 30000)
    INTO Instructor VALUES(6, 'Sylvana Otso', 55000)
    INTO Instructor VALUES(7, 'Branislav Bronwen', 55000)
SELECT * FROM DUAL;
SELECT * FROM Instructor;


I_Address
~~~~~~~~~
CREATE TABLE I_Address(
    address_id NUMBER PRIMARY KEY,
    type VARCHAR(10) NOT NULL,
    country VARCHAR(5) NOT NULL,
    province VARCHAR(10) NOT NULL,
    city VARCHAR(15) NOT NULL,
    street VARCHAR(20) NOT NULL,
    house NUMBER(2) NOT NULL
);
DESCRIBE I_Address;

INSERT ALL
    INTO I_Address VALUES(1, 'Mailing', 'Nepal', 'Yilcester', 'Eggville', 'Route 100', '64')
    INTO I_Address VALUES(2, 'Permanent', 'Nepal', 'Wuonnard', 'Beachburgh', 'Grove Avenue', '42') 
    INTO I_Address VALUES(3, 'Mailing', 'Nepal', 'Teim', 'Beachburgh', 'Buttonwood Drive', '37')   
    INTO I_Address VALUES(4, 'Permanent', 'Nepal', 'Ifuelbert', 'Fortfield', 'Mulberry Court', '79')
    INTO I_Address VALUES(5, 'Mailing', 'Nepal', 'Yilcester', 'Eggville', 'Eagle Street', '24')    
    INTO I_Address VALUES(6, 'Permanent', 'Nepal', 'Yilcester', 'Eggville', 'Magnolia Court', '54')
    INTO I_Address VALUES(7, 'Mailing', 'Nepal', 'Krehvine', 'Eggville', 'Race Street', '26')     
    INTO I_Address VALUES(8, 'Permanent', 'Nepal', 'Teim', 'Farmingburg', 'Hillside Avenue', '21') 
    INTO I_Address VALUES(9, 'Mailing', 'Nepal', 'Ifuelbert', 'Eggville', 'Hillside Drive', '4')  
    INTO I_Address VALUES(10, 'Permanent', 'Nepal', 'Ifuelbert', 'Chatdol', 'Hillside Drive', '19')
    INTO I_Address VALUES(11, 'Mailing', 'Nepal', 'Krehvine', 'Passley', 'Race Street', '4')      
    INTO I_Address VALUES(12, 'Permanent', 'Nepal', 'Krehvine', 'Beachburgh', '4th Avenue', '58') 
    INTO I_Address VALUES(13, 'Mailing', 'Nepal', 'Krehvine', 'Eggville', 'Route 100', '18')
    INTO I_Address VALUES(14, 'Permanent', 'Nepal', 'Krehvine', 'Fayness', 'Route 100', '72')
SELECT * FROM DUAL;

SELECT * FROM I_Address;


Instructor_Address
~~~~~~~~~~~~~~~
CREATE TABLE Instructor_Address(
    instructor_id NUMBER NOT NULL,
    address_id NUMBER NOT NULL,
    CONSTRAINT ins_add_pk
        PRIMARY KEY(instructor_id, address_id)
);

ALTER TABLE Instructor_Address
    ADD (CONSTRAINT ins_add_add 
            FOREIGN KEY (address_id)
            REFERENCES I_Address(address_id),
        CONSTRAINT ins_add_ins 
            FOREIGN KEY (instructor_id)
            REFERENCES Instructor(instructor_id));
DESCRIBE Instructor_Address;

INSERT ALL
    INTO Instructor_Address VALUES(1, 1)
    INTO Instructor_Address VALUES(1, 2)
    INTO Instructor_Address VALUES(2, 3)
    INTO Instructor_Address VALUES(2, 4)
    INTO Instructor_Address VALUES(3, 5)
    INTO Instructor_Address VALUES(3, 6)
    INTO Instructor_Address VALUES(4, 7)
    INTO Instructor_Address VALUES(4, 8)
    INTO Instructor_Address VALUES(5, 9)
    INTO Instructor_Address VALUES(5, 10)
    INTO Instructor_Address VALUES(6, 11)
    INTO Instructor_Address VALUES(6, 12)
    INTO Instructor_Address VALUES(7, 13)
    INTO Instructor_Address VALUES(7, 14)
SELECT * FROM DUAL;
SELECT * FROM Instructor_Address;


I_Contact
~~~~~~~~~

CREATE TABLE I_Contact(
    contact_id NUMBER PRIMARY KEY,
    phone_number NUMBER(10),
    fax_number NUMBER(10)
);
DESCRIBE I_Contact;

INSERT ALL
    INTO I_Contact VALUES (1, 9842886058, 6716208213)
    INTO I_Contact VALUES (2, 9849495739, NULL)
    INTO I_Contact VALUES (3, 9869871208, 6718768871)
    INTO I_Contact VALUES (4, 9867582617, 6741773738)
    INTO I_Contact VALUES (5, 9835841854, NULL)
    INTO I_Contact VALUES (6, 9857722188, 6712269642)
    INTO I_Contact VALUES (7, NULL, 6776848088)
    INTO I_Contact VALUES (8, 9883127422, 6797935773)
    INTO I_Contact VALUES (9, NULL, NULL)
    INTO I_Contact VALUES (10, 9843993078, 6774030088)
    INTO I_Contact VALUES (11, 9867641385, 6777659727)
    INTO I_Contact VALUES (12, 9814386840, NULL)
    INTO I_Contact VALUES (13, 9856643875, NULL)
    INTO I_Contact VALUES (14, 9814443063, NULL)
    INTO I_Contact VALUES (15, NULL, 6717206377)
    INTO I_Contact VALUES (16, 9870031738, NULL)
    INTO I_Contact VALUES (17, 9820585424, 6755943292)
    INTO I_Contact VALUES (18, 9890211902, 6717705888)
    INTO I_Contact VALUES (19, NULL, 6791570584)
    INTO I_Contact VALUES (20, 9843583869, 6782944658)
    INTO I_Contact VALUES (21, 9870003670, NULL)
    INTO I_Contact VALUES (22, 9873556838, NULL)
    INTO I_Contact VALUES (23, 9887601423, 6737211035)
    INTO I_Contact VALUES (24, 9821713253, 6722085718)
    INTO I_Contact VALUES (25, 9852642967, NULL)
    INTO I_Contact VALUES (26, 9881272423, 6756567646)
    INTO I_Contact VALUES (27, 9884685602, NULL)
    INTO I_Contact VALUES (28, 9822600225, 6729936809)
SELECT * FROM DUAL;
SELECT * FROM I_Contact;


I_Address_Contact
~~~~~~~~~~~~~~~~~
CREATE TABLE I_Address_Contact(
    address_id NUMBER NOT NULL,
    contact_id NUMBER NOT NULL,
    CONSTRAINT conadd
        PRIMARY KEY(contact_id, address_id)
);

ALTER TABLE I_Address_Contact
    ADD (CONSTRAINT scon 
            FOREIGN KEY (contact_id)
            REFERENCES I_Contact(contact_id),
        CONSTRAINT sasd 
            FOREIGN KEY(address_id)
            REFERENCES I_Address(address_id));
DESCRIBE I_Address_Contact;

INSERT ALL
    INTO I_Address_Contact VALUES(1, 1)
    INTO I_Address_Contact VALUES(1, 2)
    INTO I_Address_Contact VALUES(2, 3)
    INTO I_Address_Contact VALUES(2, 4)
    INTO I_Address_Contact VALUES(3, 5)
    INTO I_Address_Contact VALUES(3, 6)
    INTO I_Address_Contact VALUES(4, 7)
    INTO I_Address_Contact VALUES(4, 8)
    INTO I_Address_Contact VALUES(5, 9)
    INTO I_Address_Contact VALUES(5, 10)
    INTO I_Address_Contact VALUES(6, 11)
    INTO I_Address_Contact VALUES(6, 12)
    INTO I_Address_Contact VALUES(7, 13)
    INTO I_Address_Contact VALUES(7, 14)
    INTO I_Address_Contact VALUES(8, 15)
    INTO I_Address_Contact VALUES(8, 16)
    INTO I_Address_Contact VALUES(9, 17)
    INTO I_Address_Contact VALUES(9, 18)
    INTO I_Address_Contact VALUES(10, 19)
    INTO I_Address_Contact VALUES(10, 20)
    INTO I_Address_Contact VALUES(11, 21)
    INTO I_Address_Contact VALUES(11, 22)
    INTO I_Address_Contact VALUES(12, 23)
    INTO I_Address_Contact VALUES(12, 24)
    INTO I_Address_Contact VALUES(13, 25)
    INTO I_Address_Contact VALUES(13, 26)
    INTO I_Address_Contact VALUES(14, 27)
    INTO I_Address_Contact VALUES(14, 28)
SELECT * FROM DUAL;
SELECT * FROM I_Address_Contact;



COURSE 
~~~~~~
CREATE TABLE Course(
    course_code VARCHAR(5) PRIMARY KEY,
    cleader NUMBER UNIQUE NOT NULL,
    cname VARCHAR (16) NOT NULL,
    CONSTRAINT cled 
        FOREIGN KEY(cleader)
        REFERENCES Instructor(instructor_id)
            ON DELETE SET NULL
);
DESCRIBE Course;

INSERT ALL 
    INTO Course VALUES ('CBIT',3,'Bachelors in IT')
    INTO Course VALUES ('CMIT',5,'Masters in IT')
    INTO Course VALUES ('CBBA',7,'Bachelors in BBA')
SELECT * FROM DUAL;

SELECT * FROM Course;

SPECIFICATION
~~~~~~~~~~~~~
CREATE TABLE Specification(
    specification_code VARCHAR(6) PRIMARY KEY,
    course_code VARCHAR(5) NOT NULL,
    sname VARCHAR (16) NOT NULL,
    sfee NUMBER(7) NOT NULL,
    CONSTRAINT sc_code
        FOREIGN KEY(course_code)
        REFERENCES Course(course_code)
            ON DELETE SET NULL
);
DESCRIBE Specification;

INSERT ALL 
    INTO SPECIFICATION VALUES ('SBITN','CBIT','Networking', 112500)
    INTO SPECIFICATION VALUES ('SBITM','CBIT','Multimedia', 112500)
    INTO SPECIFICATION VALUES ('SBITC','CBIT','Computing', 111500)
    INTO SPECIFICATION VALUES ('SMITS','CMIT','Software', 500000)
    INTO SPECIFICATION VALUES ('SMITCS','CMIT','Cyber Security', 500000)
    INTO SPECIFICATION VALUES ('SBBAM','CBBA','Marketing', 90000)
    INTO SPECIFICATION VALUES ('SBBAF','CBBA','Finance', 900000)
SELECT * FROM DUAL;
SELECT * FROM Specification;

Module
~~~~~~
CREATE TABLE Module(
    module_code VARCHAR(3) PRIMARY KEY,
    class_id NUMBER NOT NULL,
    mname VARCHAR(25) NOT NULL,
    CONSTRAINT Classmod 
        FOREIGN KEY(class_id)
        REFERENCES Class(class_id) 
            ON DELETE SET NULL
);
DESCRIBE Module;

INSERT ALL
    INTO MODULE VALUES ('MIS', 1, 'Information System')
    INTO MODULE VALUES ('MNC', 1, 'Network Crisis')
    INTO MODULE VALUES ('MVX', 2, 'VFX')
    INTO MODULE VALUES ('M3D', 2, '3D Modelling')
    INTO MODULE VALUES ('MDB', 3, 'Database')
    INTO MODULE VALUES ('MPG', 3, 'Programming')
    INTO MODULE VALUES ('MBD', 4, 'Big Data')
    INTO MODULE VALUES ('MDV', 4, 'Data Visualization')
    INTO MODULE VALUES ('MNI', 5, 'Network Infrastructure')
    INTO MODULE VALUES ('MPT', 5, 'Penetration Testing')
    INTO MODULE VALUES ('MCE', 6, 'Corporate Environment')
    INTO MODULE VALUES ('MSM', 6, 'Services Marketing')
    INTO MODULE VALUES ('MMA', 7, 'Management Accounting')
    INTO MODULE VALUES ('MBB', 7, 'Business Borders')  
SELECT * FROM DUAL;
SELECT * FROM Module;

Specification_Module
~~~~~~~~~~~~~~~~~~~~
CREATE TABLE Specification_Module(
    specification_code VARCHAR(6) NOT NULL,
    module_code VARCHAR(3) NOT NULL,
    CONSTRAINT spec_mod_pk
        PRIMARY KEY(specification_code, module_code)
);

ALTER TABLE Specification_Module
    ADD (CONSTRAINT spec_mod_spec
            FOREIGN KEY(specification_code)
            REFERENCES Specification(specification_code),
        CONSTRAINT spec_mod_mod
            FOREIGN KEY(module_code)
            REFERENCES Module(module_code));  
DESCRIBE Specification_Module;

INSERT ALL 
    INTO Specification_Module VALUES ('SBITN', 'MIS')
    INTO Specification_Module VALUES ('SBITN', 'MNC')
    INTO Specification_Module VALUES ('SBITN', 'MPG')
    INTO Specification_Module VALUES ('SBITM', 'MVX')
    INTO Specification_Module VALUES ('SBITM', 'M3D')
    INTO Specification_Module VALUES ('SBITM', 'MPG')
    INTO Specification_Module VALUES ('SBITC', 'MIS')
    INTO Specification_Module VALUES ('SBITC', 'MDB')
    INTO Specification_Module VALUES ('SBITC', 'MPG')
    INTO Specification_Module VALUES ('SMITS', 'MBD')
    INTO Specification_Module VALUES ('SMITS', 'MDV')
    INTO Specification_Module VALUES ('SMITS', 'MNI')
    INTO Specification_Module VALUES ('SMITCS', 'MNI')
    INTO Specification_Module VALUES ('SMITCS', 'MPT')
    INTO Specification_Module VALUES ('SMITCS', 'MDV')
    INTO Specification_Module VALUES ('SBBAM', 'MCE')
    INTO Specification_Module VALUES ('SBBAM', 'MSM')
    INTO Specification_Module VALUES ('SBBAM', 'MBB')
    INTO Specification_Module VALUES ('SBBAF', 'MMA')
    INTO Specification_Module VALUES ('SBBAF', 'MBB')
    INTO Specification_Module VALUES ('SBBAF', 'MSM')
SELECT * FROM DUAL;
SELECT * FROM Specification_Module;

Instructor_Module
~~~~~~~~~~~~~~
CREATE TABLE Instructor_Module(
    instructor_id NUMBER NOT NULL,
    module_code VARCHAR(3) NOT NULL,
    CONSTRAINT ins_pk
        PRIMARY KEY(instructor_id, module_code)
);

ALTER TABLE Instructor_Module
    ADD (CONSTRAINT ins_mod_std 
            FOREIGN KEY(instructor_id)
            REFERENCES Instructor(instructor_id),
        CONSTRAINT ins_mod_mod
            FOREIGN KEY(module_code)
            REFERENCES Module(module_code));
DESCRIBE Instructor_Module;

INSERT ALL
    INTO Instructor_Module VALUES(1, 'MIS')
    INTO Instructor_Module VALUES(1, 'MNC')
    INTO Instructor_Module VALUES(2, 'MVX')
    INTO Instructor_Module VALUES(2, 'M3D')
    INTO Instructor_Module VALUES(3, 'MDB')
    INTO Instructor_Module VALUES(1, 'MDB')
    INTO Instructor_Module VALUES(3, 'MPG')
    INTO Instructor_Module VALUES(2, 'MDB')
    INTO Instructor_Module VALUES(4, 'MBD')
    INTO Instructor_Module VALUES(4, 'MDV')
    INTO Instructor_Module VALUES(5, 'MNI')
    INTO Instructor_Module VALUES(5, 'MPT')
    INTO Instructor_Module VALUES(6, 'MCE')
    INTO Instructor_Module VALUES(6, 'MMA')
    INTO Instructor_Module VALUES(7, 'MSM')
    INTO Instructor_Module VALUES(7, 'MBB')
SELECT * FROM DUAL;
SELECT * FROM Instructor_Module;


Student
~~~~~~~
CREATE TABLE Student(
    student_id NUMBER PRIMARY KEY,
    specification_code VARCHAR(6) NOT NULL,
    name VARCHAR(20) NOT NULL,
    enroll_date DATE NOT NULL,
    total_marks NUMBER(2,1) NOT NULL,
    CONSTRAINT sspec 
        FOREIGN KEY(specification_code)
        REFERENCES Specification(specification_code)
);
DESCRIBE Student;

INSERT ALL
    INTO Student VALUES(1, 'SBITN', 'Non Roydon', '17-FEB-15', 2.3)
    INTO Student VALUES(2, 'SBITM','Armen Vasu', '18-FEB-15', 2.9)
    INTO Student VALUES(3, 'SBITC','Iliana Caratacus', '21-FEB-15', 1.2)
    INTO Student VALUES(4, 'SMITS','Schwanhild Sandeep', '25-FEB-15', 3.0)
    INTO Student VALUES(5, 'SMITCS', 'Roghayeh Celino', '28-FEB-15', 1.1)
    INTO Student VALUES(6, 'SBBAM','Herut Lekan', '01-MAR-15', 2.1)
    INTO Student VALUES(7, 'SBBAF','Ortzi Albina', '21-MAR-15', 3.9)
    INTO Student VALUES(8, 'SBITN','Lazaros Shekhar', '02-FEB-15', 3.8)
SELECT * FROM DUAL;
SELECT * FROM Student;


S_Address
~~~~~~~~~
CREATE TABLE S_Address(
    address_id NUMBER PRIMARY KEY,
    type VARCHAR(10) NOT NULL,
    country VARCHAR(5) NOT NULL,
    province VARCHAR(10) NOT NULL,
    city VARCHAR(15) NOT NULL,
    street VARCHAR(20) NOT NULL,
    house NUMBER(2) NOT NULL
);
DESCRIBE S_Address;

INSERT ALL
    INTO S_Address VALUES(1, 'Mailing', 'Nepal', 'Hishire', 'Sugarcester', 'Eagle Street', '21')
    INTO S_Address VALUES(2, 'Permanent', 'Nepal', 'Wuonnard', 'Farmingburg', 'Eagle Street', '18')   
    INTO S_Address VALUES(3, 'Mailing', 'Nepal', 'Yilcester', 'Eggville', 'Grove Avenue', '13')
    INTO S_Address VALUES(4, 'Permanent', 'Nepal', 'Yilcester', 'Eggville', 'Pin Oak Drive', '75')   
    INTO S_Address VALUES(5, 'Mailing', 'Nepal', 'Wuonnard', 'Fayness', 'Hillside Drive', '22')
    INTO S_Address VALUES(6, 'Permanent', 'Nepal', 'Hishire', 'Waltwich', 'Route 9', '35')
    INTO S_Address VALUES(7, 'Mailing', 'Nepal', 'Teim', 'Fortfield', 'Meadow Street', '88')
    INTO S_Address VALUES(8, 'Permanent', 'Nepal', 'Teim', 'Beachburgh', 'Hillside Drive', '94')
    INTO S_Address VALUES(9, 'Mailing', 'Nepal', 'Ifuelbert', 'Sugarcester', 'Oxford Road', '70')
    INTO S_Address VALUES(10, 'Permanent', 'Nepal', 'Yilcester', 'Passley', '10th Street', '97')
    INTO S_Address VALUES(11, 'Mailing', 'Nepal', 'Teim', 'Passley', 'Grove Avenue', '91')
    INTO S_Address VALUES(12, 'Permanent', 'Nepal', 'Krehvine', 'Sugarcester', 'Green Street', '47')
    INTO S_Address VALUES(13, 'Mailing', 'Nepal', 'Ifuelbert', 'Fayness', 'Magnolia Court', '1')
    INTO S_Address VALUES(14, 'Permanent', 'Nepal', 'Teim', 'Passley', 'Hawthorne Lane', '81')
    INTO S_Address VALUES(15, 'Mailing', 'Nepal', 'Hishire', 'Fortfield', 'Willow Drive', '87')
    INTO S_Address VALUES(16, 'Permanent', 'Nepal', 'Hishire', 'Fortfield', 'Route 100', '62')
SELECT * FROM DUAL;
SELECT * FROM S_Address;

Student_Address
~~~~~~~~~~~~~~~
CREATE TABLE Student_Address(
    student_id NUMBER NOT NULL,
    address_id NUMBER NOT NULL,
    CONSTRAINT std_add_pk
        PRIMARY KEY(student_id, address_id)
);

ALTER TABLE Student_Address
    ADD (CONSTRAINT std_add_std 
            FOREIGN KEY (address_id)
            REFERENCES S_Address(address_id),
        CONSTRAINT std_add_add 
            FOREIGN KEY (student_id)
            REFERENCES Student(student_id));
DESCRIBE Student_Address;

INSERT ALL
    INTO Student_Address VALUES(1, 1)
    INTO Student_Address VALUES(1, 2)
    INTO Student_Address VALUES(2, 3)
    INTO Student_Address VALUES(2, 4)
    INTO Student_Address VALUES(3, 5)
    INTO Student_Address VALUES(3, 6)
    INTO Student_Address VALUES(4, 7)
    INTO Student_Address VALUES(4, 8)
    INTO Student_Address VALUES(5, 9)
    INTO Student_Address VALUES(5, 10)
    INTO Student_Address VALUES(6, 11)
    INTO Student_Address VALUES(6, 12)
    INTO Student_Address VALUES(7, 13)
    INTO Student_Address VALUES(7, 14)
    INTO Student_Address VALUES(8, 15)
    INTO Student_Address VALUES(8, 16)
SELECT * FROM DUAL;
SELECT * FROM Student_Address;


S_Contact
~~~~~~~~~

CREATE TABLE S_Contact(
    contact_id NUMBER PRIMARY KEY,
    phone_number NUMBER(10),
    fax_number NUMBER(10)
);
DESCRIBE S_Contact;

INSERT ALL
    INTO S_Contact VALUES (1, 9882842169, NULL)
    INTO S_Contact VALUES (2, 9843132551, 6746430606) 
    INTO S_Contact VALUES (3, 9840180743, 6754906958) 
    INTO S_Contact VALUES (4, NULL, 6779296840) 
    INTO S_Contact VALUES (5, 9898170263, 6764197503) 
    INTO S_Contact VALUES (6, 9883498829, NULL) 
    INTO S_Contact VALUES (7, 9891872925, 6749902013) 
    INTO S_Contact VALUES (8, 9833283943, 6769119673) 
    INTO S_Contact VALUES (9, 9822852233, NULL) 
    INTO S_Contact VALUES (10, NULL, 6738118977)
    INTO S_Contact VALUES (11, 9885081320, 6738144564)
    INTO S_Contact VALUES (12, 9885081671, 6714815049)
    INTO S_Contact VALUES (13, 9884756446, 6769428628)
    INTO S_Contact VALUES (14, 9856187726, NULL)
    INTO S_Contact VALUES (15, 9845072898, 6754540808)
    INTO S_Contact VALUES (16, NULL, 6787394714)
    INTO S_Contact VALUES (17, 9811999772, NULL)
    INTO S_Contact VALUES (18, 9836373828, 6744544922)
    INTO S_Contact VALUES (19, 9855006117, 6792169440)
    INTO S_Contact VALUES (20, 9882011956, 6763828068)
    INTO S_Contact VALUES (21, 9855635397, NULL)
    INTO S_Contact VALUES (22, 9874279843, 6728791576)
    INTO S_Contact VALUES (23, 9837990907, NULL)
    INTO S_Contact VALUES (24, 9811447977, 6780508601)
    INTO S_Contact VALUES (25, 9841240939, NULL)
    INTO S_Contact VALUES (26, 9834197066, 6769690571)
    INTO S_Contact VALUES (27, 9859069973, 6795829325)
    INTO S_Contact VALUES (28, 9841813007, NULL)
    INTO S_Contact VALUES (29, NULL, 6763263310)
    INTO S_Contact VALUES (30, 9850165416, 6725288145)
    INTO S_Contact VALUES (31, 9847491028, NULL)
    INTO S_Contact VALUES (32, 9868142392, 6762777424)
SELECT * FROM DUAL;
SELECT * FROM S_Contact;

S_Address_Contact
~~~~~~~~~~~~~~~~~
CREATE TABLE S_Address_Contact(
    address_id NUMBER NOT NULL,
    contact_id NUMBER NOT NULL,
    CONSTRAINT std_add_con_pk
        PRIMARY KEY(contact_id, address_id)
);

ALTER TABLE S_Address_Contact
    ADD (CONSTRAINT std_add_con_con 
            FOREIGN KEY (contact_id)
            REFERENCES S_Contact(contact_id),
        CONSTRAINT std_add_con_add 
            FOREIGN KEY(address_id)
            REFERENCES S_Address(address_id));
DESCRIBE S_Address_Contact;

INSERT ALL
    INTO S_Address_Contact VALUES(1, 1)
    INTO S_Address_Contact VALUES(1, 2)
    INTO S_Address_Contact VALUES(2, 3)
    INTO S_Address_Contact VALUES(2, 4)
    INTO S_Address_Contact VALUES(3, 5)
    INTO S_Address_Contact VALUES(3, 6)
    INTO S_Address_Contact VALUES(4, 7)
    INTO S_Address_Contact VALUES(4, 8)
    INTO S_Address_Contact VALUES(5, 9)
    INTO S_Address_Contact VALUES(5, 10)
    INTO S_Address_Contact VALUES(6, 11)
    INTO S_Address_Contact VALUES(6, 12)
    INTO S_Address_Contact VALUES(7, 13)
    INTO S_Address_Contact VALUES(7, 14)
    INTO S_Address_Contact VALUES(8, 15)
    INTO S_Address_Contact VALUES(8, 16)
    INTO S_Address_Contact VALUES(9, 17)
    INTO S_Address_Contact VALUES(9, 18)
    INTO S_Address_Contact VALUES(10, 19)
    INTO S_Address_Contact VALUES(10, 20)
    INTO S_Address_Contact VALUES(11, 21)
    INTO S_Address_Contact VALUES(11, 22)
    INTO S_Address_Contact VALUES(12, 23)
    INTO S_Address_Contact VALUES(12, 24)
    INTO S_Address_Contact VALUES(13, 25)
    INTO S_Address_Contact VALUES(13, 26)
    INTO S_Address_Contact VALUES(14, 27)
    INTO S_Address_Contact VALUES(14, 28)
    INTO S_Address_Contact VALUES(15, 29)
    INTO S_Address_Contact VALUES(15, 30)
    INTO S_Address_Contact VALUES(16, 31)
    INTO S_Address_Contact VALUES(16, 32)
SELECT * FROM DUAL;
SELECT * FROM S_Address_Contact;
















