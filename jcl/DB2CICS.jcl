//MATEGDD JOB MSGLEVEL=(1,1),NOTIFY=&SYSUID                             00010000
//PLIB    JCLLIB ORDER=(MATE1.PROCLIB)                                  00011000
//*                                                                     00020000
//*  COBOL + DB2 + CICS COMPILE JCL                                     00030000
//*                                                                     00040000
//DBONL   EXEC DB2CICSC,                                                00060000
//             COPYLIB=MATEGD.CAP.COPY,         <= COPYBOOK LIBRARY     00070001
//             DCLGLIB=MATEGD.DCLGEN.COBOL,    <= DCLGEN LIBRARY        00080000
//             DBRMLIB=MATEGD.DBRMLIB,         <= DBRM LIBRARY          00090000
//             SRCLIB=MATEGD.CAP.SOURCE,      <= SOURCE LIBRARY         00110001
//             MEMBER=CAPUPD                  <= SOURCE MEMBER          00120016
