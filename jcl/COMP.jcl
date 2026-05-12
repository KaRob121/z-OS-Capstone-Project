//MATEGD99 JOB (123),'COMP',CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID
//PLIB    JCLLIB ORDER=(MATE1.PROCLIB)
//************************************************************
//* COMPILE AND RUN COBOL CODE                               *
//************************************************************
//CL      EXEC COBOLCL,
//             COPYLIB=&SYSUID..CAP.COPY,
//             LOADLIB=&SYSUID..CAP.LOAD,
//             SRCLIB=&SYSUID..CAP.SOURCE,
//             MEMBER=MAILSND
