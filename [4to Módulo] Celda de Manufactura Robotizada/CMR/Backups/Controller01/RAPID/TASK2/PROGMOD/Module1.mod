MODULE Module1
        CONST robtarget Target_00:=[[1169.808,0,1900.263],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[1388,-150,1600],[0.5,-0.5,0.5,-0.5],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[70,-1308.732,1473.183],[0.5,0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[50.726988861,-1237.704995077,1729.200745745],[0.707106785,0.707106777,0.000000008,0.000000023],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[70,-1308.732,1173.183],[0.5,0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_11:=[[1388,0,1600],[0.5,-0.5,0.5,-0.5],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_09:=[[1250,-150,1600],[0.5,-0.5,0.5,-0.5],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[70,-1108.732,1173.18],[0.5,0.5,0.5,-0.5],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Módulo:  Module1
    !
    ! Descripción:
    !   <Introduzca la descripción aquí>
    !
    ! Autor: John Panche
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    PROC main()
        WaitDI INPUT1,1;
        PickAndPlace;
        Set OUTPUT1;        
        WaitDO OUTPUT2,1;
        Reset OUTPUT1;
        WaitTime(3);
        PickAndWork;
    ENDPROC
    PROC PickAndPlace()
        MoveJ Target_00,v1000,fine,Gripper\WObj:=wobj0;
        MoveJ Target_09,v1000,fine,Gripper\WObj:=wobj0;
        MoveL Target_10,v1000,fine,Gripper\WObj:=wobj0;
        Set OUTPUT4;
        WaitTime(1.5);
        Reset OUTPUT4;
        MoveL Target_11,v1000,fine,Gripper\WObj:=wobj0;
        MoveJ Target_00,v1000,fine,Gripper\WObj:=wobj0;
        MoveJ Target_20,v1000,fine,Gripper\WObj:=wobj0;
        MoveL Target_30,v1000,fine,Gripper\WObj:=wobj0;
        Set OUTPUT3;
        WaitTime(1.5);
        Reset OUTPUT3;
        MoveL Target_40,v1000,fine,Gripper\WObj:=wobj0;
        MoveJ Target_00,v1000,fine,Gripper\WObj:=wobj0;
    ENDPROC
    PROC PickAndWork()
        MoveJ Target_00,v1000,fine,Gripper\WObj:=wobj0;
        MoveJ Target_40,v1000,fine,Gripper\WObj:=wobj0; 
        MoveL Target_30,v1000,fine,Gripper\WObj:=wobj0;
        Set OUTPUT4;
        WaitTime(1.5);
        Reset OUTPUT4;
        MoveL Target_20,v1000,fine,Gripper\WObj:=wobj0;
        MoveJ Target_00,v1000,fine,Gripper\WObj:=wobj0;
        Set OUTPUT3;
        WaitTime(1.5); 
        Reset OUTPUT3;
    ENDPROC
ENDMODULE