SQL> SELECT * FROM Student
  2      WHERE specification_code IN (
  3          SELECT specification_code FROM Specification WHERE LOWER(sname) = 'networking'
  4      );

STUDENT_ID SPECIF NAME                 ENROLL_DA TOTAL_MARKS                                                                                                                                            
---------- ------ -------------------- --------- -----------                                                                                                                                            
         1 SBITN  Non Roydon           17-FEB-15         2.3                                                                                                                                            
         8 SBITN  Lazaros Shekhar      02-FEB-15         3.8                                                                                                                                            

SQL> SPOOL OFF
