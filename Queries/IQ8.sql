SQL> SELECT * FROM Specification
  2      WHERE course_code IN(
  3          SELECT course_code FROM Course
  4              WHERE LOWER(cname) = 'bachelors in it'
  5      );

SPECIF COURS SNAME                  SFEE                                                                                                                                                                
------ ----- ---------------- ----------                                                                                                                                                                
SBITN  CBIT  Networking           112500                                                                                                                                                                
SBITM  CBIT  Multimedia           112500                                                                                                                                                                
SBITC  CBIT  Computing            111500                                                                                                                                                                

SQL> SPOOL OFF
