//MATEGDD JOB MSGLEVEL=(1,1),NOTIFY=&SYSUID                             00010004
//PLIB    JCLLIB ORDER=(MATE1.PROCLIB)                                  00011004
//*                                                                     00020004
//*  COBOL + DB2 PRECOMPILE AND LINKEDIT                                00030004
//*                                                                     00040004
//DBPREC  EXEC DB2COBCL,                                                00071004
//             COPYLIB=MATEGD.CAP.COPY,        <= COPYBOOK LIBRARY      00072004
//             DCLGLIB=MATEGD.DCLGEN.COBOL,    <= DCLGEN LIBRARY        00072104
//             DBRMLIB=MATEGD.DBRMLIB,         <= DBRM LIBRARY          00072204
//             LOADLIB=MATEGD.CAP.LOAD,        <= LOAD LIBRARY          00072304
//             SRCLIB=MATEGD.CAP.SOURCE,       <= SOURCE LIBRARY        00073004
//             MEMBER=UPDATE                   <= SOURCE MEMBER         00074004
//*                                                                     00076004
//*  DB2 BIND JCL                                                       00077004
//*                                                                     00078004
//BIND     EXEC PGM=IKJEFT01                                            00079004
//STEPLIB  DD  DISP=SHR,DSN=DBC1.SDSNEXIT                               00080004
//         DD  DISP=SHR,DSN=DB2.V12R1M0.SDSNLOAD                        00090004
//DBRMLIB  DD  DSN=MATEGD.DBRMLIB,DISP=SHR                              00100004
//SYSPRINT DD  SYSOUT=*                                                 00110004
//SYSTSPRT DD  SYSOUT=*                                                 00120004
//SYSUDUMP DD  SYSOUT=*                                                 00130004
//SYSTSIN  DD  *                                                        00140004
DSN SYSTEM (DBC1   )                                                    00150004
BIND  MEMBER    (UPDATE)  -                                             00160004
      PLAN      (MATEGDA ) -                                            00170004
      ACTION    (REP)       -                                           00180004
      ISOLATION (CS)        -                                           00190004
      VALIDATE  (BIND)      -                                           00200004
      RELEASE   (COMMIT)    -                                           00210004
      OWNER     (MATEGD )  -                                            00220004
      QUALIFIER (MATEGD )  -                                            00230004
      ENCODING  (1047)                                                  00240004
END                                                                     00250004
/*                                                                      00260004
//*                                                                     00280004
//*  COBOL DB2 RUN JCL                                                  00290004
//*                                                                     00300004
//STEP01   EXEC PGM=IKJEFT01,                                           00310004
//             DYNAMNBR=20,REGION=4096K                                 00320004
//STEPLIB  DD  DISP=SHR,DSN=DBC1.SDSNEXIT                               00330004
//         DD  DISP=SHR,DSN=DB2.V12R1M0.SDSNLOAD                        00340004
//SYSPRINT DD  SYSOUT=*                                                 00350004
//SYSTSPRT DD  SYSOUT=*                                                 00360004
//SYSUDUMP DD  SYSOUT=*                                                 00370004
//SYSOUT   DD  SYSOUT=*                                                 00380004
//SYSTSIN  DD  *                                                        00390004
DSN SYSTEM (DBC1   )                                                    00400004
  RUN PROGRAM   (UPDATE) -                                              00410004
      PLAN      (MATEGDA ) -                                            00420004
      LIBRARY   ('MATEGD.CAP.LOAD')                                     00430005
END                                                                     00440004
/*                                                                      00450004
//EFILE    DD DSN=&SYSUID..CAP.ERRORS,DISP=SHR                          00460008
//CLFILE   DD DSN=&SYSUID..CAP.CLEAN(0),DISP=SHR                        00470011
