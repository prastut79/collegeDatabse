SQL> SELECT
  2      Instructor.name "ModuleLeader",
  3      I_Contact.phone_number, I_Contact.fax_number
  4  FROM Instructor
  5      JOIN Instructor_Address ON Instructor.instructor_id = Instructor_Address.instructor_id
  6      JOIN I_Address_Contact ON Instructor_Address.address_id = I_Address_Contact.address_id
  7      JOIN I_Contact ON I_Address_Contact.contact_id = I_Contact.contact_id
  8      WHERE Instructor.instructor_id IN (SELECT cleader FROM Course);

ModuleLeader         PHONE_NUMBER FAX_NUMBER                                                                                                                                                            
-------------------- ------------ ----------                                                                                                                                                            
Jacya Priyansa                                                                                                                                                                                          
Jacya Priyansa         9843993078 6774030088                                                                                                                                                            
Jacya Priyansa         9867641385 6777659727                                                                                                                                                            
Jacya Priyansa         9814386840                                                                                                                                                                       
Zakaria Berend         9820585424 6755943292                                                                                                                                                            
Zakaria Berend         9890211902 6717705888                                                                                                                                                            
Zakaria Berend                    6791570584                                                                                                                                                            
Zakaria Berend         9843583869 6782944658                                                                                                                                                            
Branislav Bronwen      9852642967                                                                                                                                                                       
Branislav Bronwen      9881272423 6756567646                                                                                                                                                            
Branislav Bronwen      9884685602                                                                                                                                                                       
Branislav Bronwen      9822600225 6729936809                                                                                                                                                            

12 rows selected.

SQL> SPOOL OFF
