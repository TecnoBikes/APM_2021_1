MODULE Module1
        CONST robtarget Target_00:=[[1169.808,0,1900.263],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[1388,-150,1700],[0.5,-0.5,0.5,-0.5],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[70,-1308.732,1473.183],[0.5,0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[50.726988861,-1237.704995077,1729.200745745],[0.707106785,0.707106777,0.000000008,0.000000023],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[70,-1308.732,1173.183],[0.5,0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_11:=[[1388,0,1700],[0.5,-0.5,0.5,-0.5],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_09:=[[1250,-150,1700],[0.5,-0.5,0.5,-0.5],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[70,-1108.732,1173.18],[0.5,0.5,0.5,-0.5],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[-1250,0,1700],[0.5,-0.5,-0.5,0.5],[1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[-1388,0,1700],[0.5,-0.5,-0.5,0.5],[1,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[-1388,-150,1700],[0.5,-0.5,-0.5,0.5],[-2,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[797.37,1184.339,1287.612],[0.5,-0.5,0.5,0.5],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_51:=[[797.37,1184.145483471,1367.29361911],[0.560985527,-0.430459335,0.430459335,0.560985527],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_52:=[[797.37,1184.339,1087.612],[0.5,-0.5,0.5,0.5],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_53:=[[797.37,1184.145,1167.294],[0.560985527,-0.430459335,0.430459335,0.560985527],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_69:=[[0,900,1800],[0.5,-0.5,0.5,0.5],[1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_54:=[[797.37,1184.339,887.612],[0.5,-0.5,0.5,0.5],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_55:=[[797.37,1184.145,967.294],[0.560985527,-0.430459335,0.430459335,0.560985527],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_61:=[[228.314,1523.749,1633.61],[0.707106781,-0.707106781,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_62:=[[126.714,1523.749,1633.61],[0.707106781,-0.707106781,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        
    PERS bool START2;
    PERS bool STOP2;
    PERS intnum POS;
    CONST robtarget Target_63:=[[228.314,1223.748999888,1113.994757794],[0.5,-0.866025404,0,0],[0,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_64:=[[126.714,1223.748999888,1113.994757794],[0.5,-0.866025404,0,0],[0,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
        MoveJ Target_50,v1000,fine,Gripper\WObj:=wobj0;
        MoveL Target_51,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_50,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_51,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_50,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_52,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_53,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_52,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_53,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_52,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_54,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_55,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_54,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_55,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_54,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_50,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_51,v50,fine,Gripper\WObj:=wobj0;
        MoveJ Target_61,v500,fine,Gripper\WObj:=wobj0;
        MoveL Target_62,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_61,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_62,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_61,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_62,v50,fine,Gripper\WObj:=wobj0;
        MoveL Target_61,v50,fine,Gripper\WObj:=wobj0;
        MoveJ Target_70,v1000,fine,Gripper\WObj:=wobj0;
        MoveL Target_80,v1000,fine,Gripper\WObj:=wobj0;
        Set OUTPUT3;
        WaitTime(1.5); 
        Reset OUTPUT3;
        MoveJ Target_00,v1000,fine,Gripper\WObj:=wobj0;
    ENDPROC
ENDMODULE