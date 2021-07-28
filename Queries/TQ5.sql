SQL> SELECT
  2      c.cname "Course",
  3      count(*) "TotalStudents",
  4      max(st.total_marks) "HighestGPA"
  5  from Course c
  6      JOIN specification s ON c.course_code = s.course_code
  7      JOIN student st ON st.specification_code = s.specification_code
  8      GROUP BY c.cname;

Course           TotalStudents HighestGPA                                                                                                                                                               
---------------- ------------- ----------                                                                                                                                                               
Bachelors in IT              4        3.8                                                                                                                                                               
Masters in IT                2          3                                                                                                                                                               
Bachelors in BBA             2        3.9                                                                                                                                                               

SQL> SPOOL OFF
