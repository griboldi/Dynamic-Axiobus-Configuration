PDI_READ_1(    REQ := NotFirstCycle, 
               SLOT := TO_WORD(iSlot), 
               SUBSLOT := 0, 
               INDEX := wIndex, 
               SUBINDEX := 0, 
               RD_1 := RD_1, 
               STATUS := STATUS_1);
IF  NOT NotFirstCycle
    THEN
    NotFirstCycle := TRUE;
    xRead := FALSE;
END_IF;

IF PDI_READ_1.NDR
    THEN            
    xRead := TRUE;
    AnswerToString1(Answer := RD_1, strOutput := strProperty);
    iDataCNT := TO_INT(PDI_READ_1.DATA_CNT);
    NotFirstCycle := FALSE;
END_IF;

IF PDI_READ_1.ERROR
    THEN
    NotFirstCycle := FALSE;
END_IF;