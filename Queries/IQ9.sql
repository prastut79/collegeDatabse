SQL> SELECT m.mname "ModuleName", c.class_name "ClassName" FROM Module m
  2      JOIN Class c ON m.class_id = c.class_id
  3      WHERE LOWER(c.class_name) = 'sagarmatha';

ModuleName                ClassName                                                                                                                                                                     
------------------------- ------------                                                                                                                                                                  
Corporate Environment     Sagarmatha                                                                                                                                                                    
Services Marketing        Sagarmatha                                                                                                                                                                    

SQL> SPOOL OFF
