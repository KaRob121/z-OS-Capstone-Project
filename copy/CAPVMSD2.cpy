       01  CAPVMAPI.
           02  FILLER PIC X(12).
           02  TRANIDL    COMP  PIC  S9(4).
           02  TRANIDF    PICTURE X.
           02  FILLER REDEFINES TRANIDF.
             03 TRANIDA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  TRANIDI  PIC X(4).
           02  PAGEL    COMP  PIC  S9(4).
           02  PAGEF    PICTURE X.
           02  FILLER REDEFINES PAGEF.
             03 PAGEA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  PAGEI  PIC X(3).

           02  LINEI OCCURS 8.
               04  ACTL     COMP  PIC  S9(4).
               04  ACTF     PICTURE X.
               04  FILLER REDEFINES ACTF.
                 05 ACTA     PICTURE X.
               04  FILLER   PICTURE X(1).
               04  ACTI   PIC X(1).
               04  EMAILL     COMP  PIC  S9(4).
               04  EMAILF     PICTURE X.
               04  FILLER REDEFINES EMAILF.
                 05 EMAILA     PICTURE X.
               04  FILLER   PICTURE X(1).
               04  EMAILI   PIC X(40).
               04  NAMEL     COMP  PIC  S9(4).
               04  NAMEF     PICTURE X.
               04  FILLER REDEFINES NAMEF.
                 05 NAMEA     PICTURE X.
               04  FILLER   PICTURE X(1).
               04  NAMEI   PIC X(30).
               04  DNCL     COMP  PIC  S9(4).
               04  DNCF     PICTURE X.
               04  FILLER REDEFINES DNCF.
                 05 DNCA     PICTURE X.
               04  FILLER   PICTURE X(1).
               04  DNCI   PIC X(1).

           02  MSGL    COMP  PIC  S9(4).
           02  MSGF    PICTURE X.
           02  FILLER REDEFINES MSGF.
             03 MSGA    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  MSGI  PIC X(79).
           02  HLPPF7L    COMP  PIC  S9(4).
           02  HLPPF7F    PICTURE X.
           02  FILLER REDEFINES HLPPF7F.
             03 HLPPF7A    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  HLPPF7I  PIC X(9).
           02  HLPPF8L    COMP  PIC  S9(4).
           02  HLPPF8F    PICTURE X.
           02  FILLER REDEFINES HLPPF8F.
             03 HLPPF8A    PICTURE X.
           02  FILLER   PICTURE X(1).
           02  HLPPF8I  PIC X(9).

       01  CAPVMAPO REDEFINES CAPVMAPI.
           02  FILLER PIC X(12).
           02  FILLER PICTURE X(3).
           02  TRANIDC    PICTURE X.
           02  TRANIDO  PIC X(4).
           02  FILLER PICTURE X(3).
           02  PAGEC    PICTURE X.
           02  PAGEO PIC ZZ9.

           02  LINEO OCCURS 8.
               04  FILLER PICTURE X(3).
               04  ACTC     PICTURE X.
               04  ACTO   PIC X(1).
               04  FILLER PICTURE X(3).
               04  EMAILC     PICTURE X.
               04  EMAILO   PIC X(40).
               04  FILLER PICTURE X(3).
               04  NAMEC     PICTURE X.
               04  NAMEO   PIC X(30).
               04  FILLER PICTURE X(3).
               04  DNCC     PICTURE X.
               04  DNCO   PIC X(1).

           02  FILLER PICTURE X(3).
           02  MSGC    PICTURE X.
           02  MSGO  PIC X(79).
           02  FILLER PICTURE X(3).
           02  HLPPF7C    PICTURE X.
           02  HLPPF7O  PIC X(9).
           02  FILLER PICTURE X(3).
           02  HLPPF8C    PICTURE X.
           02  HLPPF8O  PIC X(9).
