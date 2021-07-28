SQL> SELECT
  2      st.name "StudentName",
  3      s.sname "SpecificationName",
  4      st.enroll_date,
  5      FLOOR((SYSDATE - st.enroll_date)/7) "WeeksEnrolled"
  6  FROM student st
  7      JOIN
  8      Specification s ON st.specification_code = s.specification_code;

StudentName          SpecificationNam ENROLL_DA WeeksEnrolled                                                                                                                                           
-------------------- ---------------- --------- -------------                                                                                                                                           
Non Roydon           Networking       17-FEB-15           304                                                                                                                                           
Armen Vasu           Multimedia       18-FEB-15           304                                                                                                                                           
Iliana Caratacus     Computing        21-FEB-15           304                                                                                                                                           
Schwanhild Sandeep   Software         25-FEB-15           303                                                                                                                                           
Roghayeh Celino      Cyber Security   28-FEB-15           303                                                                                                                                           
Herut Lekan          Marketing        01-MAR-15           302                                                                                                                                           
Ortzi Albina         Finance          21-MAR-15           300                                                                                                                                           
Lazaros Shekhar      Networking       02-FEB-15           306                                                                                                                                           

8 rows selected.

SQL> SPOOL OFF
