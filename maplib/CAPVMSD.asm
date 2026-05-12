***********************************************************************
* Capstone - mapset for "view"
***********************************************************************
CAPVMSD  DFHMSD MODE=INOUT,                                            X
               CTRL=(FREEKB,FRSET),                                    X
               CURSLOC=YES,                                            X
               DSATTS=COLOR,                                           X
               MAPATTS=(COLOR,HILIGHT),                                X
               COLOR=TURQUOISE,                                        X
               STORAGE=AUTO,                                           X
               LANG=COBOL,                                             X
               TIOAPFX=YES,                                            X
               TYPE=&SYSPARM
CAPVMAP DFHMDI SIZE=(24,80),LINE=1,COLUMN=1
TRANID  DFHMDF POS=(1,1),LENGTH=4,ATTRB=(ASKIP,NORM,FSET),             X
               COLOR=YELLOW
        DFHMDF POS=(1,30),LENGTH=21,ATTRB=(ASKIP,NORM),                X
               INITIAL='Contact List'
        DFHMDF POS=(1,71),LENGTH=05,ATTRB=(ASKIP,NORM),                X
               INITIAL='Page '
PAGE    DFHMDF POS=(1,77),PICOUT='ZZ9',ATTRB=(ASKIP,BRT)
        DFHMDF POS=(3,1),LENGTH=10,ATTRB=(ASKIP,NORM),                 X
               INITIAL='Act  Email'
        DFHMDF POS=(3,47),LENGTH=7,ATTRB=(ASKIP,NORM),                 xX
               INITIAL='Surname'
        DFHMDF POS=(3,76),LENGTH=3,ATTRB=(ASKIP,NORM),                 xX
               INITIAL='DNC'
ACT1    DFHMDF POS=(05,2),LENGTH=1,ATTRB=(UNPROT,BRT,IC),              X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(05,4),LENGTH=0
EMAIL1  DFHMDF POS=(05,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME1   DFHMDF POS=(05,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC1    DFHMDF POS=(05,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT2    DFHMDF POS=(07,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(07,4),LENGTH=0
EMAIL2  DFHMDF POS=(07,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME2   DFHMDF POS=(07,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC2    DFHMDF POS=(07,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT3    DFHMDF POS=(09,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(09,4),LENGTH=0
EMAIL3  DFHMDF POS=(09,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME3   DFHMDF POS=(09,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC3    DFHMDF POS=(09,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT4    DFHMDF POS=(11,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(11,4),LENGTH=0
EMAIL4  DFHMDF POS=(11,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME4   DFHMDF POS=(11,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC4    DFHMDF POS=(11,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT5    DFHMDF POS=(13,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(13,4),LENGTH=0
EMAIL5  DFHMDF POS=(13,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME5   DFHMDF POS=(13,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC5    DFHMDF POS=(13,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT6    DFHMDF POS=(15,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(15,4),LENGTH=0
EMAIL6  DFHMDF POS=(15,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME6   DFHMDF POS=(15,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC6    DFHMDF POS=(15,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT7    DFHMDF POS=(17,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(17,4),LENGTH=0
EMAIL7  DFHMDF POS=(17,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME7   DFHMDF POS=(17,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC7    DFHMDF POS=(17,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

ACT8    DFHMDF POS=(19,2),LENGTH=1,ATTRB=(UNPROT,BRT),                 X
               HILIGHT=UNDERLINE,COLOR=YELLOW
        DFHMDF POS=(19,4),LENGTH=0
EMAIL8  DFHMDF POS=(19,6),LENGTH=40,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW
NAME8   DFHMDF POS=(19,47),LENGTH=30,ATTRB=(ASKIP,BRT,FSET),           X
               COLOR=YELLOW
DNC8    DFHMDF POS=(19,79),LENGTH=1,ATTRB=(ASKIP,BRT,FSET),            X
               COLOR=YELLOW

        DFHMDF POS=(22,1),LENGTH=79,ATTRB=(ASKIP,NORM),                X
               INITIAL='Action: A=Add, C=Change, D=Delete'
MSG     DFHMDF POS=(23,1),LENGTH=79,ATTRB=(ASKIP,BRT),COLOR=YELLOW
        DFHMDF POS=(24,1),LENGTH=19,ATTRB=(ASKIP,NORM),                X
               INITIAL='ENTER Take Action  '
HLPPF7  DFHMDF POS=(24,21),LENGTH=9,ATTRB=(ASKIP,NORM),                X
               INITIAL='PF7 Prev '
HLPPF8  DFHMDF POS=(24,31),LENGTH=9,ATTRB=(ASKIP,NORM),                X
               INITIAL='PF8 Next '
        DFHMDF POS=(24,41),LENGTH=26,ATTRB=(ASKIP,NORM),               X
               INITIAL='PF12 Exit'
        DFHMSD TYPE=FINAL
        END
