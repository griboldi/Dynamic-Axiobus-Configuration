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
        arrDetectedModules := arrEmptyBus;
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
      i := 1;
      PHASE := InitAxioPhases#ReadPhysicalConfiguration;
     END_IF;
    
    InitAxioPhases#ReadPhysicalConfiguration:
     CASE Member OF
        ModulesProperties#DeviceFamily:
        ReadProperty_DeviceFamily(wIndex := word#16#0004, iSlot := i);
        IF ReadProperty_DeviceFamily.xRead
            THEN
            arrDetectedModules[i].DeviceFamily := CONCAT('', ReadProperty_DeviceFamily.strProperty);
            Member := ModulesProperties#OrderNumber;
        END_IF;
        
        ModulesProperties#OrderNumber:
        ReadProperty_OrderNumber(wIndex := word#16#000A, iSlot := i);
        IF ReadProperty_OrderNumber.xRead
            THEN
            arrDetectedModules[i].OrderNumber := CONCAT('', ReadProperty_OrderNumber.strProperty);
            Member := ModulesProperties#ProductName;
        END_IF;
        
        ModulesProperties#ProductName:
        ReadProperty_ProductName(wIndex := word#16#0007, iSlot := i);
        IF ReadProperty_ProductName.xRead
            THEN
            arrDetectedModules[i].ProductName := CONCAT('', ReadProperty_ProductName.strProperty);
            Member := ModulesProperties#PD_Length;
        END_IF;
        
        ModulesProperties#PD_Length:
        ReadProperty_PD_Length(wIndex := word#16#0025, iSlot := i);
        arrDetectedModules[i].PD_Length := TO_UINT(TO_REAL(ReadProperty_PD_Length.iDataCNT)/2.0);
        IF ReadProperty_PD_Length.xRead
            THEN
            Member := ModulesProperties#DeviceFamily;
            IF i < ModulesDetected
                THEN
                i := i + 1;
                ELSE
                i := 1;
                Phase := InitAxioPhases#End;
            END_IF;
        END_IF;
    END_CASE;
    
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