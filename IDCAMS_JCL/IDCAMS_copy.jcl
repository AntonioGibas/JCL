//COPYJOB  JOB (ACCT),'COPY DATASET',CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1)
//STEP1    EXEC PGM=IDCAMS,COND=(0,LT)
//SYSPRINT DD  SYSOUT=*
//INDS     DD  DSN=DSA.DATASET1,DISP=SHR
//OUTDS    DD  DSN=DSA.DATASET2,DISP=(NEW,CATLG,DELETE),
  //            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0),
  //            SPACE=(CYL,(1,1),)
//* KOPIRANJE IZ JEDNOG DATASETA U NOVI
//SYSIN    DD  *
  REPRO -
    INFILE(INDS) -
    OUTFILE(OUTDS)
/*

//IDCAMS  DD  DUMMY
/*