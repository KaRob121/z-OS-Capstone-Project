       Identification Division.
       Program-Id. MAILSND.
       Environment Division.
       Data Division.
       Working-Storage Section.
       Linkage Section.
       01  Email-Addr            pic x(40).
       01  Surname               pic x(30).

       Procedure Division using Email-Addr Surname.
           display 'Mail sent out to ' Surname ' at ' Email-Addr
           goback
           .
