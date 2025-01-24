//******************************************************************************
//* Copyright (c) IBM Corporation 2020
//******************************************************************************
//******************************************************************************
//* Configure the job card as needed, most common keyword parameters often
//* needing editing are:
//* CLASS: Used to achieve a balance between different types of jobs and avoid
//*        contention between jobs that use the same resources.
//* MSGLEVEL: controls hpw the allocation messages and termination messages are
//*           printed in the job's output listing (SYSOUT).
//* MSGCLASS: assign an output class for your output listing (SYSOUT)
//*
//* Notes:
//*   If you change the job name, you must update the playbook job name
//*   references.
//******************************************************************************
//SMPEADM  JOB (),,MSGCLASS=X,REGION=0M,                               
//         CLASS=A,NOTIFY=&SYSUID                                      
/*JOBPARM SYSAFF=*                                                     
//*                                                                    
//S1       EXEC PGM=GIMSMP,                                            
//         PARM='PROCESS=WAIT',                                        
//         DYNAMNBR=120                                                
//*                                                                    
//* NOTE:      THIS JCL CREATED BY THE COMMAND GENERATION DIALOGS.     
//*                                                                    
//*            SMP ZONE-RELATED FILES ARE DYNAMICALLY ALLOCATED,       
//*            THIS INCLUDES THE SMPPTS, SMPLOG, AND SMPTLIB DATA SETS,
//*            IF APPLICABLE.                                          
//*                                                                    
//* SMP FILES                                                          
//*                                                                    
//SMPCSI   DD DISP=SHR,DSN=SMPE.PROGPROD.CSI                     
//*                                                                    
//*                                                                    
//SMPCNTL  DD *                                                        
  SET    BOUNDARY (GLOBAL)                                             
                  .                                                    
  LIST                                                                 
         GZONE                                                         
                .                                                   