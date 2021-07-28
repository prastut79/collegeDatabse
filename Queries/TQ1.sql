SQL> SELECT Student.name "StudentName",  Specification.sname "SpecificationName",
  2      CASE LOWER(Specification.sname) WHEN 'computing' THEN (Specification.sfee - 0.1* Specification.sfee)
  3      ELSE sfee END "TotalFee"
  4  FROM Student
  5      JOIN Specification ON Student.specification_code = Specification.specification_code;

StudentName          SpecificationNam   TotalFee                                                                                                                                                        
-------------------- ---------------- ----------                                                                                                                                                        
Non Roydon           Networking           112500                                                                                                                                                        
Armen Vasu           Multimedia           112500                                                                                                                                                        
Iliana Caratacus     Computing            100350                                                                                                                                                        
Schwanhild Sandeep   Software             500000                                                                                                                                                        
Roghayeh Celino      Cyber Security       500000                                                                                                                                                        
Herut Lekan          Marketing             90000                                                                                                                                                        
Ortzi Albina         Finance              900000                                                                                                                                                        
Lazaros Shekhar      Networking           112500                                                                                                                                                        

8 rows selected.

SQL> SPOOL OFF
