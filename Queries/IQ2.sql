SQL> SELECT * FROM module
  2      WHERE module_code IN (
  3              SELECT module_code FROM instructor_module
  4                  GROUP BY module_code
  5                  HAVING count(*) > 1
  6      );

MOD   CLASS_ID MNAME                                                                                                                                                                                    
--- ---------- -------------------------                                                                                                                                                                
MDB          3 Database                                                                                                                                                                                 

SQL> SPOOL OFF
