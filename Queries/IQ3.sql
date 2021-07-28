SQL> SELECT
  2      name "InstructorName", salary
  3  FROM Instructor
  4      where salary > 50000
  5      AND
  6      LOWER(name) LIKE '%s%';

InstructorName           SALARY                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
Shavonne Amordad         100000                                                                                                                                                                         
Etenesh Barlaam          100000                                                                                                                                                                         
Jacya Priyansa            55000                                                                                                                                                                         
Sylvana Otso              55000                                                                                                                                                                         
Branislav Bronwen         55000                                                                                                                                                                         

SQL> SPOOL OFF
