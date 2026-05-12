//MATEGDD JOB MSGLEVEL=(1,1),NOTIFY=&SYSUID                             00010000
//PLIB    JCLLIB ORDER=(MATE1.PROCLIB)                                  00011000
//*                                                                     00020000
//*  COBOL + DB2 PRECOMPILE AND LINKEDIT                                00030000
//*                                                                     00040000
//DBPREC  EXEC DB2COBCL,                                                00071000
//             COPYLIB=MATEGD.CAP.COPY,        <= COPYBOOK LIBRARY      00072001
//             DCLGLIB=MATEGD.DCLGEN.COBOL,    <= DCLGEN LIBRARY        00072100
//             DBRMLIB=MATEGD.DBRMLIB,         <= DBRM LIBRARY          00072200
//             LOADLIB=MATEGD.CAP.LOAD,        <= LOAD LIBRARY          00072301
//             SRCLIB=MATEGD.CAP.SOURCE,       <= SOURCE LIBRARY        00073001
//             MEMBER=CAPVAL             <= SOURCE MEMBER               00074004
