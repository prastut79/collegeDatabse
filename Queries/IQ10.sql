SQL> SELECT
  2      Instructor.instructor_id,
  3      SUBSTR(Instructor.name, 1, INSTR(Instructor.name,' ')-1) "Fname" ,
  4      SUBSTR(Instructor.name, INSTR(Instructor.name,' ')+1, LENGTH(Instructor.name)) "Lname",
  5      Instructor.salary,
  6      I_Address.*
  7  FROM Instructor
  8      JOIN Instructor_Address ON Instructor.instructor_id = Instructor_Address.instructor_id
  9      JOIN I_Address ON Instructor_Address.address_id = I_Address.address_id
 10      WHERE Instructor.instructor_id IN (
 11          SELECT instructor_id FROM Instructor
 12              WHERE SUBSTR(name, 1, INSTR(name,' ')-1) LIKE '%a'
 13      );

INSTRUCTOR_ID Fname        Lname            SALARY ADDRESS_ID TYPE       COUNT PROVINCE   CITY            STREET                    HOUSE                                                               
------------- ------------ ------------ ---------- ---------- ---------- ----- ---------- --------------- -------------------- ----------                                                               
            3 Jacya        Priyansa          55000          5 Mailing    Nepal Yilcester  Eggville        Eagle Street                 24                                                               
            3 Jacya        Priyansa          55000          6 Permanent  Nepal Yilcester  Eggville        Magnolia Court               54                                                               
            4 Barsbara     Godiva            20000          7 Mailing    Nepal Krehvine   Eggville        Race Street                  26                                                               
            4 Barsbara     Godiva            20000          8 Permanent  Nepal Teim       Farmingburg     Hillside Avenue              21                                                               
            5 Zakaria      Berend            30000          9 Mailing    Nepal Ifuelbert  Eggville        Hillside Drive                4                                                               
            5 Zakaria      Berend            30000         10 Permanent  Nepal Ifuelbert  Chatdol         Hillside Drive               19                                                               
            6 Sylvana      Otso              55000         11 Mailing    Nepal Krehvine   Passley         Race Street                   4                                                               
            6 Sylvana      Otso              55000         12 Permanent  Nepal Krehvine   Beachburgh      4th Avenue                   58                                                               

8 rows selected.

SQL> SPOOL OFF
