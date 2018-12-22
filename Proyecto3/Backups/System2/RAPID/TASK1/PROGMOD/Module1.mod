MODULE Module1
	CONST robtarget Target_20:=[[176.295674853,400,422.909917876],[0.086131219,0,0.996283801,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_30:=[[586.583995183,400,422.909955081],[0.086131256,0,0.996283798,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR bool i:=FALSE;
    
    PROC Path_10()
	    MoveL Target_20,v1000,fine,tWeldGun\WObj:=Workobject_1;
	    MoveL Target_30,v1000,fine,tWeldGun\WObj:=Workobject_1;
	    MoveL Target_20,v1000,fine,tWeldGun\WObj:=Workobject_1;
	ENDPROC
    
        PROC Inicio()
        IF i=FALSE THEN
            SetDO Apaga_Cinta, 1;
            SetDO Apaga_Cinta, 0;
            SetDO Pintado, 1;
            SetDO Pintado, 0;
            i:=TRUE;
        ENDIF
    ENDPROC
    
    PROC main()
        SetDO Apaga_Cinta, 0;
        Inicio;
        
        WaitDI Sensor, 1;
        SetDO Apaga_Cinta, 1;
        Path_10;
        WaitTime 0.2;
        SetDO Pintado, 1;
        WaitTime 0.2;
        SetDO Apaga_Cinta, 0;
        
        WaitDI Sensor_final, 1;
        WaitTime 1;
        SetDO Pintado, 0;
        
        i := FALSE;
        
    ENDPROC
    
ENDMODULE