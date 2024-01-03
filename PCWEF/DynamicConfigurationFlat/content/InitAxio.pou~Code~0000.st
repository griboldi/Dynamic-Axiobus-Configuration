CASE Phase OF
    
    InitAxioPhases#Init:
        IF NOT InitDone
        THEN
            
        (*Init of Main FBs*)
        AX_CONTROL_ResetDriver(REQ := FALSE, SD_1 := SD_ResetDriver, RD_1 := RD_ResetDriver);
        AX_CONTROL_ResetDriver_NoModules(REQ := FALSE, SD_1 := SD_ResetDriver, RD_1 := RD_ResetDriver);
        AX_CONTROL_CreateConfiguration(REQ := FALSE, SD_1 := SD_CreateConfiguration, RD_1 := RD_CreateConfiguration);
        AX_CONTROL_ReadLocal_IO(REQ := FALSE, SD_1 := SD_ReadLocal_IO, RD_1 := RD_ReadLocal_IO);
        AX_CONTROL_Load_PD_Mapping(REQ := FALSE, SD_1 := SD_Load_PD_Mapping, RD_1 := RD_Load_PD_Mapping);
        AX_CONTROL_StartDataTransfer(REQ := FALSE, SD_1 := SD_StartDataTransfer, RD_1 := RD_StartDataTransfer);
        
        (*Init of Timers*)
        TON_StartTimeout(IN := FALSE, PT := t#500ms);
        
        (*Struct and Arrays wash*)
        RD_ReadLocal_IO := AnswerAxioEmpty;
        
        (*Init of FB Output*)
        xDone := FALSE;
        xError := FALSE;
        
        InitDone := TRUE;
    END_IF;
    
    IF xStart
        THEN
        Phase := InitAxioPhases#ResetDriver;
    END_IF;
           
    InitAxioPhases#ResetDriver:
    AX_CONTROL_ResetDriver(REQ := TRUE, SD_1 := SD_ResetDriver, RD_1 := RD_ResetDriver);
     IF AX_CONTROL_ResetDriver.NDR
      THEN
      PHASE := InitAxioPhases#CreateConfiguration;
     END_IF;
        
    InitAxioPhases#CreateConfiguration:
        AX_CONTROL_CreateConfiguration(REQ := TRUE, SD_1 := SD_CreateConfiguration, RD_1 := RD_CreateConfiguration);
     IF AX_CONTROL_CreateConfiguration.NDR
      THEN
      PHASE := InitAxioPhases#ReadLocal_IO;
     END_IF;
        
    InitAxioPhases#ReadLocal_IO:
        AX_CONTROL_ReadLocal_IO(REQ := TRUE, SD_1 := SD_ReadLocal_IO, RD_1 := RD_ReadLocal_IO);
     IF AX_CONTROL_ReadLocal_IO.NDR
      THEN
      ModulesDetected := TO_INT(RD_ReadLocal_IO[7]);
      IF ModulesDetected > 0
          THEN
          PHASE := InitAxioPhases#Load_PD_Mapping;
          ELSE
          Phase := InitAxioPhases#NoModules;
      END_IF;    
     END_IF;
        
    InitAxioPhases#Load_PD_Mapping:
        AX_CONTROL_Load_PD_Mapping(REQ := TRUE, SD_1 := SD_Load_PD_Mapping, RD_1 := RD_Load_PD_Mapping);
     IF AX_CONTROL_Load_PD_Mapping.NDR
      THEN
      PHASE := InitAxioPhases#StartDataTransfer;
     END_IF;
        
    InitAxioPhases#StartDataTransfer:
        AX_CONTROL_StartDataTransfer(REQ := TRUE, SD_1 := SD_StartDataTransfer, RD_1 := RD_StartDataTransfer);
     IF AX_CONTROL_StartDataTransfer.NDR
      THEN
      PHASE := InitAxioPhases#End;
     END_IF;
    
    InitAxioPhases#StartBus:
        IF AXIO_DIAG_STATUS_REG_RUN
        THEN
        Phase := InitAxioPhases#End;
    END_IF;
    
    TON_StartTimeout(IN := NOT AXIO_DIAG_STATUS_REG_RUN, PT := t#500ms);
    IF TON_StartTimeout.Q
        THEN
        xError := TRUE;
        Phase := InitAxioPhases#End;
    END_IF;
    
    InitAxioPhases#NoModules:
    AX_CONTROL_ResetDriver_NoModules(REQ := TRUE, SD_1 := SD_ResetDriver, RD_1 := RD_ResetDriver);
     IF AX_CONTROL_ResetDriver.NDR
      THEN
      PHASE := InitAxioPhases#End;
     END_IF;
        
    
    InitAxioPhases#End:
    xDone := TRUE;
    IF xStart = FALSE
        THEN
        InitDone := FALSE;
        Phase := InitAxioPhases#Init;
    END_IF;
    
END_CASE