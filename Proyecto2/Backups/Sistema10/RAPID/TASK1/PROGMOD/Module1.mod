MODULE Module1
	CONST robtarget Target_10:=[[710.302,-50.687,706.042],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_20:=[[760.301980587,-50.686989693,756.042035513],[-0.000000033,1,-0.000000027,0.000000018],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	
    PROC Path_10()
     
        MoveL Target_20,v1000,z100,Mano_de_Juan\WObj:=wobj0;
	        WaitTime 1;
            SetDO ActivaMano_Juan,1;
            WaitTime 1;
	    MoveL Target_10,v400,fine,Mano_de_Juan\WObj:=wobj0;
            WaitTime 0.2;
            SetDO ActivaMano_Juan,0;
            WaitTime 0.2;
            
	ENDPROC
     
    PROC main()
        !Path_10;
        
        SetDO Cinta_on,0;
        WaitTime 5;
        SetDO Cinta_on,1;
        IF Sensor_cinta = 1 THEN
        WaitTime 5;
            SetDO Montaje_fin,1;
        ELSE
            WaitTime 1;
            SetDO Montaje_fin,0;
        ENDIF
        
            
        
        
        
    ENDPROC
    
ENDMODULE