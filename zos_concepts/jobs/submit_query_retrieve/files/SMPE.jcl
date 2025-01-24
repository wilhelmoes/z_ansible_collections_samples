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
