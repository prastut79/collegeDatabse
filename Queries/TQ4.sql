SQL> SELECT * FROM Instructor WHERE instructor_id IN (
  2      SELECT i.instructor_id FROM Instructor i
  3      JOIN Instructor_Module im ON i.instructor_id = im.instructor_id
  4      JOIN Specification_Module sm ON im.module_code = sm.module_code
  5      WHERE (i.salary, sm.specification_code) IN (
  6          SELECT salary, specification_code from(
  7              SELECT i.name, i.salary, sm.specification_code FROM Instructor i
  8                  JOIN Instructor_Module im ON i.instructor_id = im.instructor_id
  9                  JOIN Specification_Module sm ON im.module_code = sm.module_code
 10                  GROUP BY i.name, i.salary, sm.specification_code
 11              )
 12          GROUP BY salary, specification_code
 13          HAVING count(*) > 1
 14      )
 15  )ORDER BY salary DESC;

INSTRUCTOR_ID NAME                     SALARY                                                                                                                                                           
------------- -------------------- ----------                                                                                                                                                           
            2 Etenesh Barlaam          100000                                                                                                                                                           
            1 Shavonne Amordad         100000                                                                                                                                                           
            7 Branislav Bronwen         55000                                                                                                                                                           
            6 Sylvana Otso              55000                                                                                                                                                           

SQL> SPOOL OFF
