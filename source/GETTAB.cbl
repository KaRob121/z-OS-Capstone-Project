       Identification Division.
       Program-Id. GETTAB.
       Environment Division.
       Input-Output Section.
       File-Control.
           Select Update-File
               Assign to UFILE
               Organization Sequential
               Access Sequential
               File status Update-File-Status.
       Data Division.
       File Section.
       FD  Update-File
           Recording mode F
           Record contains 207 characters
           Block contains 0 characters
           Data record FC-Update-Record.
       01  FC-Update-Record           pic x(207).
       Working-Storage Section.
           EXEC SQL INCLUDE SQLCA END-EXEC.
           EXEC SQL INCLUDE CONTACTS END-EXEC.
       01  Update-File-Status         pic x(2).
           copy STATUS.

       Procedure Division.
           perform 0100-Open
           perform 1000-Get-Table
           perform 0200-Close
           goback
           .

       0100-Open.
           open extend Update-File
           if not OK of Update-File-Status
               display 'Did not open file: '
                       Update-File-Status
           end-if
           .

       0200-Close.
           close Update-File
           if not OK of Update-File-Status
               display 'Did not close file: '
                       Update-File-Status
           end-if
           .

       1000-Get-Table.
           EXEC SQL
           DECLARE CONTACT-CURSOR CURSOR FOR
           SELECT
               C_ID,
               LANG,
               SURNAME,
               FIRST_NAME,
               MIDDLE_NAME,
               ADDL_NAME,
               EMAIL_ADDR,
               LAST_CONTACT,
               LAST_RESPONSE,
               DO_NOT_CONTACT
           FROM CONTACTS
           END-EXEC

           EXEC SQL
                OPEN CONTACT-CURSOR
           END-EXEC
           if not SQLCODE = 0
              display 'Error opening cursor: ' SQLCODE
           end-if.

           perform 1100-Fetch-Record until SQLCODE = 100

           EXEC SQL
                CLOSE CONTACT-CURSOR
           END-EXEC
           if not SQLCODE = 0
              display 'Error closing cursor: ' SQLCODE
           end-if
           .

       1100-Fetch-Record.
           initialize DCLCONTACTS
           EXEC SQL
           FETCH CONTACT-CURSOR
           INTO
              :C-ID,
              :LANG,
              :SURNAME,
              :FIRST-NAME,
              :MIDDLE-NAME
                 :MIDDLE-NAME-IND,
              :ADDL-NAME
                 :ADDL-NAME-IND,
              :EMAIL-ADDR,
              :LAST-CONTACT
                 :LAST-CONTACT-IND,
              :LAST-RESPONSE
                 :LAST-RESPONSE-IND,
              :DO-NOT-CONTACT
                 :DO-NOT-CONTACT-IND
           END-EXEC

           EVALUATE SQLCODE
              WHEN 0
                 perform 1200-Write-Record
              WHEN 100
                 continue
              WHEN OTHER
                 DISPLAY 'Error fetching record: ' SQLCODE
           END-EVALUATE
           .

       1200-Write-Record.
           move DCLCONTACTS to FC-Update-Record
           write FC-Update-Record
           if not OK of Update-File-Status
               display 'Did not write to file: '
                       Update-File-Status
           end-if
           .

