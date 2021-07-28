SQL> SELECT * FROM Module
  2      WHERE module_code IN(
  3          SELECT module_code FROM specification_module
  4              WHERE specification_code IN (
  5                  SELECT specification_code FROM specification
  6                      WHERE LOWER(sname)= 'multimedia'
  7              )
  8      );

MOD   CLASS_ID MNAME                                                                                                                                                                                    
--- ---------- -------------------------                                                                                                                                                                
MVX          2 VFX                                                                                                                                                                                      
M3D          2 3D Modelling                                                                                                                                                                             
MPG          3 Programming                                                                                                                                                                              

SQL> SPOOL OFF
