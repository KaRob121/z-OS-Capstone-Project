       Identification Division.
       Program-Id. FDTVAL.
      *****************************************************************
      * Validate record field values and calculate computed values
      * for Free Throw Statistics "add" and "update" functions.
      *****************************************************************
       Data Division.
       Working-Storage Section.
           copy CAPCON.
       01  CP-Container-Data.
           02  filler                         pic x.
           02  CP-Container-Record.
               copy CONTACT.
           02  Validation-Errors              pic x(79).
       01  Error-Message-Work-Area.
           05  filler pic x(18) value "Missing value(s): ".
           05  Missing-Field-Names            pic x(79).
       01  Delimiter-Value                    pic x(1).
       01  Points-Scored                      pic s9(5) packed-decimal.
       01  Tally-Field                        pic 9.
       01  Email-Split.
           05  Before-At               pic x(20).
           05  After-At                pic x(20).

       Procedure Division.
           perform 1000-Initialize
           perform 2000-Check-Required-Fields
           perform 4000-Return-to-Caller
           .

       1000-Initialize.
           EXEC CICS GET CONTAINER(CP-Container-Name)
               CHANNEL(CP-Channel-Name)
               INTO(CP-Container-Data)
           END-EXEC
           move spaces to Validation-Errors
           move spaces to Missing-Field-Names
           move space to Delimiter-Value
           .

       2000-Check-Required-Fields.
           perform 2100-Validate-Email
           perform 2200-Validate-Names
           .

       2100-Validate-Email.
           move zero to Tally-Field
           inspect CP-Email-Addr-TEXT
               Tallying Tally-Field for all '@'
           if Tally-Field = 1
               unstring CP-Email-Addr-TEXT
                   delimited by '@'
                   into Before-At After-At
               end-unstring
               inspect After-At
                   Tallying Tally-Field for all '.'
               if not Tally-Field = 2
                   move "Invalid Email Address" to Validation-Errors
               end-if
           else
               move "Invalid Email Address" to Validation-Errors
           end-if
           .

       2200-Validate-Names.
           if CP-EMAIL-ADDR-TEXT not greater than spaces
               move "Email:Address" to Missing-Field-Names
               move "," to Delimiter-Value
           end-if
           if CP-SURNAME-TEXT not greater than spaces
               string
                       Missing-Field-Names delimited by space
                       Delimiter-Value delimited by size
                       space delimited by size
                       "Surname" delimited by size
                   into Missing-Field-Names
               end-string
           end-if
           if CP-FIRST-NAME-TEXT not greater than spaces
               string
                       Missing-Field-Names delimited by space
                       Delimiter-Value delimited by size
                       space delimited by size
                       "First:Name" delimited by size
                   into Missing-Field-Names
               end-string
           end-if

           if Missing-Field-Names greater than spaces
               inspect Missing-Field-Names
                   replacing all ":" by space
               move Error-Message-Work-Area to Validation-Errors
           end-if
           .

       2300-Check-DNC.
           if not (CP-Do-Not-Contact = 'P' or
                   CP-Do-Not-Contact = 'X' or
                   CP-Do-Not-Contact = ' ')
               move "Invalid DNC Code" to Validation-Errors
           end-if
           .

       2400-Check-Language-Code.
           if not (CP-Lang = 'EN' or CP-Lang = 'ES')
               move "Invalid Language Code" to Validation-Errors
           end-if
           .

       4000-Return-to-Caller.
           EXEC CICS PUT CONTAINER(CP-Container-Name)
               CHANNEL(CP-Channel-Name)
               FROM(CP-Container-Data)
           END-EXEC
           EXEC CICS RETURN
           END-EXEC
           .
