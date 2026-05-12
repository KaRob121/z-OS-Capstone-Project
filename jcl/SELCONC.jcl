//MATEGDD JOB MSGLEVEL=(1,1),NOTIFY=&SYSUID                             00010000
//PLIB    JCLLIB ORDER=(MATE1.PROCLIB)                                  00011000
//************************************************************          00012001
//* SELECT FILE DATA SET                                     *          00013001
//************************************************************          00014001
//DELETE   EXEC PGM=IEFBR14                                             00015001
//SYSPRINT DD SYSOUT=*                                                  00016001
//SYSOUT   DD SYSOUT=*                                                  00017001
//SYSDUMP  DD SYSOUT=*                                                  00018001
//DD1      DD DSN=&SYSUID..CAP.SEND,                                    00019003
//            DISP=(MOD,DELETE,DELETE),                                 00019101
//            SPACE=(TRK,(0)),                                          00019201
//            UNIT=SYSDA,                                               00019301
//            VOL=SER=DEVHD1,                                           00019401
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=7000)             00019504
//ALLOC    EXEC PGM=IEFBR14                                             00019601
//SYSPRINT DD SYSOUT=*                                                  00019701
//SYSOUT   DD SYSOUT=*                                                  00019801
//SYSDUMP  DD SYSOUT=*                                                  00019901
//DD2      DD DSN=&SYSUID..CAP.SEND,                                    00020003
//            DISP=(NEW,CATLG,DELETE),                                  00020101
//            SPACE=(TRK,(1,1),RLSE),                                   00020201
//            UNIT=SYSDA,                                               00020301
//            VOL=SER=DEVHD1,                                           00020401
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=7000)             00020504
//*                                                                     00022001
//*  COBOL + DB2 PRECOMPILE AND LINKEDIT                                00030000
//*                                                                     00040000
//DBPREC  EXEC DB2COBCL,                                                00071000
//             COPYLIB=MATEGD.CAP.COPY,        <= COPYBOOK LIBRARY      00072000
//             DCLGLIB=MATEGD.DCLGEN.COBOL,    <= DCLGEN LIBRARY        00072100
//             DBRMLIB=MATEGD.DBRMLIB,         <= DBRM LIBRARY          00072200
//             LOADLIB=MATEGD.CAP.LOAD,        <= LOAD LIBRARY          00072300
//             SRCLIB=MATEGD.CAP.SOURCE,       <= SOURCE LIBRARY        00073000
//             MEMBER=SELCON                   <= SOURCE MEMBER         00074001
//*                                                                     00076000
//*  DB2 BIND JCL                                                       00077000
//*                                                                     00078000
//BIND     EXEC PGM=IKJEFT01                                            00079000
//STEPLIB  DD  DISP=SHR,DSN=DBC1.SDSNEXIT                               00080000
//         DD  DISP=SHR,DSN=DB2.V12R1M0.SDSNLOAD                        00090000
//DBRMLIB  DD  DSN=MATEGD.DBRMLIB,DISP=SHR                              00100000
//SYSPRINT DD  SYSOUT=*                                                 00110000
//SYSTSPRT DD  SYSOUT=*                                                 00120000
//SYSUDUMP DD  SYSOUT=*                                                 00130000
//SYSTSIN  DD  *                                                        00140000
DSN SYSTEM (DBC1   )                                                    00150000
BIND  MEMBER    (SELCON )  -                                            00160002
      PLAN      (MATEGDA ) -                                            00170000
      ACTION    (REP)       -                                           00180000
      ISOLATION (CS)        -                                           00190000
      VALIDATE  (BIND)      -                                           00200000
      RELEASE   (COMMIT)    -                                           00210000
      OWNER     (MATEGD )  -                                            00220000
      QUALIFIER (MATEGD )  -                                            00230000
      ENCODING  (1047)                                                  00240000
END                                                                     00250000
/*                                                                      00260000
//*                                                                     00280000
//*  COBOL DB2 RUN JCL                                                  00290000
//*                                                                     00300000
//STEP01   EXEC PGM=IKJEFT01,                                           00310000
//             DYNAMNBR=20,REGION=4096K                                 00320000
//STEPLIB  DD  DISP=SHR,DSN=DBC1.SDSNEXIT                               00330000
//         DD  DISP=SHR,DSN=DB2.V12R1M0.SDSNLOAD                        00340000
//SYSPRINT DD  SYSOUT=*                                                 00350000
//SYSTSPRT DD  SYSOUT=*                                                 00360000
//SYSUDUMP DD  SYSOUT=*                                                 00370000
//SYSOUT   DD  SYSOUT=*                                                 00380000
//SYSTSIN  DD  *                                                        00390000
DSN SYSTEM (DBC1   )                                                    00400000
  RUN PROGRAM   (SELCON ) -                                             00410002
      PLAN      (MATEGDA ) -                                            00420000
      LIBRARY   ('MATEGD.CAP.LOAD')                                     00430000
END                                                                     00440000
/*                                                                      00450000
//EFILE    DD DSN=&SYSUID..CAP.ERRORS,DISP=SHR                          00460000
//SEFILE   DD DSN=&SYSUID..CAP.SEND,DISP=SHR                            00470003
