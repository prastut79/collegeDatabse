SQL> SELECT
  2      c.cname "CourseName",
  3      i.instructor_id "CourseLeaderID",
  4      i.name "CourseLeader"
  5  FROM Instructor i
  6      JOIN Course c ON i.instructor_id = c.cleader
  7      WHERE instructor_id IN (
  8          SELECT cleader from Course
  9      );

CourseName       CourseLeaderID CourseLeader                                                                                                                                                            
---------------- -------------- --------------------                                                                                                                                                    
Bachelors in IT               3 Jacya Priyansa                                                                                                                                                          
Masters in IT                 5 Zakaria Berend                                                                                                                                                          
Bachelors in BBA              7 Branislav Bronwen                                                                                                                                                       

SQL> SPOOL OFF
