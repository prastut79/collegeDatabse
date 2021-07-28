SQL> SELECT
  2      S_Address.type, S_Address.Country, S_Address.Province,
  3      S_Address.Street, S_Address.house,
  4      COALESCE(S_Contact.phone_number,1234567890) AS "Contact Details",
  5      COALESCE(S_Contact.fax_number,1234567890) AS "FAX Details"
  6  FROM S_Address
  7      JOIN S_Address_Contact ON S_Address.address_id = S_Address_Contact.address_id
  8      JOIN S_Contact ON S_Address_Contact.contact_id = S_Contact.contact_id;

TYPE       COUNT PROVINCE   STREET                    HOUSE Contact Details FAX Details                                                                                                                 
---------- ----- ---------- -------------------- ---------- --------------- -----------                                                                                                                 
Mailing    Nepal Hishire    Eagle Street                 21      9882842169  1234567890                                                                                                                 
Mailing    Nepal Hishire    Eagle Street                 21      9843132551  6746430606                                                                                                                 
Permanent  Nepal Wuonnard   Eagle Street                 18      9840180743  6754906958                                                                                                                 
Permanent  Nepal Wuonnard   Eagle Street                 18      1234567890  6779296840                                                                                                                 
Mailing    Nepal Yilcester  Grove Avenue                 13      9898170263  6764197503                                                                                                                 
Mailing    Nepal Yilcester  Grove Avenue                 13      9883498829  1234567890                                                                                                                 
Permanent  Nepal Yilcester  Pin Oak Drive                75      9891872925  6749902013                                                                                                                 
Permanent  Nepal Yilcester  Pin Oak Drive                75      9833283943  6769119673                                                                                                                 
Mailing    Nepal Wuonnard   Hillside Drive               22      9822852233  1234567890                                                                                                                 
Mailing    Nepal Wuonnard   Hillside Drive               22      1234567890  6738118977                                                                                                                 
Permanent  Nepal Hishire    Route 9                      35      9885081320  6738144564                                                                                                                 
Permanent  Nepal Hishire    Route 9                      35      9885081671  6714815049                                                                                                                 
Mailing    Nepal Teim       Meadow Street                88      9884756446  6769428628                                                                                                                 
Mailing    Nepal Teim       Meadow Street                88      9856187726  1234567890                                                                                                                 
Permanent  Nepal Teim       Hillside Drive               94      9845072898  6754540808                                                                                                                 
Permanent  Nepal Teim       Hillside Drive               94      1234567890  6787394714                                                                                                                 
Mailing    Nepal Ifuelbert  Oxford Road                  70      9811999772  1234567890                                                                                                                 
Mailing    Nepal Ifuelbert  Oxford Road                  70      9836373828  6744544922                                                                                                                 
Permanent  Nepal Yilcester  10th Street                  97      9855006117  6792169440                                                                                                                 
Permanent  Nepal Yilcester  10th Street                  97      9882011956  6763828068                                                                                                                 
Mailing    Nepal Teim       Grove Avenue                 91      9855635397  1234567890                                                                                                                 
Mailing    Nepal Teim       Grove Avenue                 91      9874279843  6728791576                                                                                                                 
Permanent  Nepal Krehvine   Green Street                 47      9837990907  1234567890                                                                                                                 
Permanent  Nepal Krehvine   Green Street                 47      9811447977  6780508601                                                                                                                 
Mailing    Nepal Ifuelbert  Magnolia Court                1      9841240939  1234567890                                                                                                                 
Mailing    Nepal Ifuelbert  Magnolia Court                1      9834197066  6769690571                                                                                                                 
Permanent  Nepal Teim       Hawthorne Lane               81      9859069973  6795829325                                                                                                                 
Permanent  Nepal Teim       Hawthorne Lane               81      9841813007  1234567890                                                                                                                 
Mailing    Nepal Hishire    Willow Drive                 87      1234567890  6763263310                                                                                                                 
Mailing    Nepal Hishire    Willow Drive                 87      9850165416  6725288145                                                                                                                 
Permanent  Nepal Hishire    Route 100                    62      9847491028  1234567890                                                                                                                 
Permanent  Nepal Hishire    Route 100                    62      9868142392  6762777424                                                                                                                 

32 rows selected.

SQL> SPOOL OFF
