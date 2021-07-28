SQL> SELECT
  2      Instructor.name "InstructorName",
  3      I_Contact.fax_number
  4  FROM Instructor
  5      JOIN Instructor_Address ON Instructor.instructor_id = Instructor_Address.instructor_id
  6      JOIN I_Address_Contact ON Instructor_Address.address_id = I_Address_Contact.address_id
  7      JOIN I_Contact ON I_Address_Contact.contact_id = I_Contact.contact_id
  8      WHERE Instructor.instructor_id IN (
  9          SELECT instructor_id FROM Instructor_Module
 10              WHERE module_code IN (
 11                  SELECT module_code FROM Module
 12                      WHERE LOWER(mname) = 'database'
 13              )
 14      )ORDER BY Instructor.name;

InstructorName       FAX_NUMBER                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
Etenesh Barlaam      6712269642                                                                                                                                                                         
Etenesh Barlaam      6776848088                                                                                                                                                                         
Etenesh Barlaam                                                                                                                                                                                         
Etenesh Barlaam      6797935773                                                                                                                                                                         
Jacya Priyansa       6777659727                                                                                                                                                                         
Jacya Priyansa                                                                                                                                                                                          
Jacya Priyansa       6774030088                                                                                                                                                                         
Jacya Priyansa                                                                                                                                                                                          
Shavonne Amordad     6716208213                                                                                                                                                                         
Shavonne Amordad     6741773738                                                                                                                                                                         
Shavonne Amordad     6718768871                                                                                                                                                                         
Shavonne Amordad                                                                                                                                                                                        

12 rows selected.

SQL> SPOOL OFF
