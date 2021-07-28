SQL> SELECT
  2      student.student_id, student.name,
  3      s_address.type "AddressType",
  4      s_address.province||' Province, '||s_address.city||', '||s_address.street||'- '||s_address.house||', '||s_address.country  "Full Address",
  5      s_contact.phone_number, s_contact.fax_number
  6  FROM Student
  7      JOIN student_address on student.student_id = student_address.student_id
  8      JOIN s_address on student_address.address_id = s_address.address_id
  9      JOIN s_address_contact on s_address.address_id = s_address_contact.address_id
 10      JOIN s_contact on s_address_contact.contact_id = s_contact.contact_id;

STUDENT_ID NAME                 AddressTyp Full Address                                                 PHONE_NUMBER FAX_NUMBER                                                                         
---------- -------------------- ---------- ------------------------------------------------------------ ------------ ----------                                                                         
         1 Non Roydon           Mailing    Hishire Province, Sugarcester, Eagle Street- 21, Nepal         9882842169                                                                                    
         1 Non Roydon           Mailing    Hishire Province, Sugarcester, Eagle Street- 21, Nepal         9843132551 6746430606                                                                         
         1 Non Roydon           Permanent  Wuonnard Province, Farmingburg, Eagle Street- 18, Nepal        9840180743 6754906958                                                                         
         1 Non Roydon           Permanent  Wuonnard Province, Farmingburg, Eagle Street- 18, Nepal                   6779296840                                                                         
         2 Armen Vasu           Mailing    Yilcester Province, Eggville, Grove Avenue- 13, Nepal          9898170263 6764197503                                                                         
         2 Armen Vasu           Mailing    Yilcester Province, Eggville, Grove Avenue- 13, Nepal          9883498829                                                                                    
         2 Armen Vasu           Permanent  Yilcester Province, Eggville, Pin Oak Drive- 75, Nepal         9891872925 6749902013                                                                         
         2 Armen Vasu           Permanent  Yilcester Province, Eggville, Pin Oak Drive- 75, Nepal         9833283943 6769119673                                                                         
         3 Iliana Caratacus     Mailing    Wuonnard Province, Fayness, Hillside Drive- 22, Nepal          9822852233                                                                                    
         3 Iliana Caratacus     Mailing    Wuonnard Province, Fayness, Hillside Drive- 22, Nepal                     6738118977                                                                         
         3 Iliana Caratacus     Permanent  Hishire Province, Waltwich, Route 9- 35, Nepal                 9885081320 6738144564                                                                         
         3 Iliana Caratacus     Permanent  Hishire Province, Waltwich, Route 9- 35, Nepal                 9885081671 6714815049                                                                         
         4 Schwanhild Sandeep   Mailing    Teim Province, Fortfield, Meadow Street- 88, Nepal             9884756446 6769428628                                                                         
         4 Schwanhild Sandeep   Mailing    Teim Province, Fortfield, Meadow Street- 88, Nepal             9856187726                                                                                    
         4 Schwanhild Sandeep   Permanent  Teim Province, Beachburgh, Hillside Drive- 94, Nepal           9845072898 6754540808                                                                         
         4 Schwanhild Sandeep   Permanent  Teim Province, Beachburgh, Hillside Drive- 94, Nepal                      6787394714                                                                         
         5 Roghayeh Celino      Mailing    Ifuelbert Province, Sugarcester, Oxford Road- 70, Nepal        9811999772                                                                                    
         5 Roghayeh Celino      Mailing    Ifuelbert Province, Sugarcester, Oxford Road- 70, Nepal        9836373828 6744544922                                                                         
         5 Roghayeh Celino      Permanent  Yilcester Province, Passley, 10th Street- 97, Nepal            9855006117 6792169440                                                                         
         5 Roghayeh Celino      Permanent  Yilcester Province, Passley, 10th Street- 97, Nepal            9882011956 6763828068                                                                         
         6 Herut Lekan          Mailing    Teim Province, Passley, Grove Avenue- 91, Nepal                9855635397                                                                                    
         6 Herut Lekan          Mailing    Teim Province, Passley, Grove Avenue- 91, Nepal                9874279843 6728791576                                                                         
         6 Herut Lekan          Permanent  Krehvine Province, Sugarcester, Green Street- 47, Nepal        9837990907                                                                                    
         6 Herut Lekan          Permanent  Krehvine Province, Sugarcester, Green Street- 47, Nepal        9811447977 6780508601                                                                         
         7 Ortzi Albina         Mailing    Ifuelbert Province, Fayness, Magnolia Court- 1, Nepal          9841240939                                                                                    
         7 Ortzi Albina         Mailing    Ifuelbert Province, Fayness, Magnolia Court- 1, Nepal          9834197066 6769690571                                                                         
         7 Ortzi Albina         Permanent  Teim Province, Passley, Hawthorne Lane- 81, Nepal              9859069973 6795829325                                                                         
         7 Ortzi Albina         Permanent  Teim Province, Passley, Hawthorne Lane- 81, Nepal              9841813007                                                                                    
         8 Lazaros Shekhar      Mailing    Hishire Province, Fortfield, Willow Drive- 87, Nepal                      6763263310                                                                         
         8 Lazaros Shekhar      Mailing    Hishire Province, Fortfield, Willow Drive- 87, Nepal           9850165416 6725288145                                                                         
         8 Lazaros Shekhar      Permanent  Hishire Province, Fortfield, Route 100- 62, Nepal              9847491028                                                                                    
         8 Lazaros Shekhar      Permanent  Hishire Province, Fortfield, Route 100- 62, Nepal              9868142392 6762777424                                                                         

32 rows selected.

SQL> SPOOL OFF
