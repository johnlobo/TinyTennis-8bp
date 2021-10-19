10 MEMORY 23999
20 MODE 0: DEFINT A-Z: CALL &6B78:' install RSX
21 ENT 1,10,100,3  
30 ON BREAK GOSUB 50000
35 ON ERROR GOTO 50000
40 CALL &BC02:'restaura paleta por defecto por si acaso
45 RANDOMIZE TIME
50 GOSUB 10500'LOAD PALETTE
60 FOR j=0 TO 31:|SETUPSP,j,0,0:NEXT:|3D,0:'reset sprites

1 ' SETUP BOLA : sprite 31 -> bola
100 bx=400:by=1000:bz=100' coordenadas de la pelota
110 bvx=15:bvy=25:bvz=0' velocidad de la pelota
120 bpx=bx:bpy=by:bpz=bz'
130 g=5' gravity
140 |SETUPSP,31,0,1+32' status de la bola
150 |SETUPSP,31,9,17' assign ball sprite
160 |LOCATESP,31,(by-(bz/2))/10,bx/10:'colocamos al sprite (sin imprimirlo aun)
1' SETUP BLANK : sprite 0 -> borrado
170 |SETUPSP,0,9,16' assign blank sprite
1' SETUP SHADOW : sprite 30 -> shadow
180 |SETUPSP,30,0,1:|SETUPSP,30,9,18:|LOCATESP,30,by/10,bx/10
1' SETUP PLAYER 1: sprite 29 -> PLAYER
190 p1x=40:p1y=160:p1vx=0:p1vy=0:p2vy=0
200 |SETUPSP,29,0,1+2+4+8:|SETUPSP,29,9,22:|SETUPSP,29,7,6:|SETUPSP,29,7,32:|LOCATESP,29,p1y,p1x
1' SETUP PLAYER 1: sprite 29 -> PLAYER
210 |SETUPSP,28,0,1+2+4+8:|SETUPSP,28,9,22:|SETUPSP,28,7,5:|SETUPSP,28,7,32:|LOCATESP,28,p1y-150,p1x

1'220 |MUSIC,1,0,0,5:puntos=0      
230 cor=32:cod=32:|COLSPALL,@cor,@cod' configura comando de colision
240 GOSUB 1000' RENDER SCREEN
1'250 |PRINTSPALL,0,0,1,0: 'configura comando de impresion
250 CALL &62A1,0,0,1,0: 'configura comando de impresion
260 c = 0

1'****************************************************
1' GAME CYCLE
1'****************************************************
1' Compruebo si el personaje se encuentra en el ultimo frame de un golpe
300 c=c+1
1'305 IF PEEK(27455) = 7 AND PEEK(27456) = 3 THEN |SETUPSP,29,7,32:|SETUPSP,28,7,32
305 IF PEEK(27455) = 7 AND PEEK(27456) = 3 THEN CALL &7101,29,7,32:CALL &7101,28,7,32
1' lee el teclado y posiciona al personaje
310 IF INKEY(27)=0 AND p1vx<1 THEN p1vx=p1vx+1:GOTO 330
320 IF INKEY(34)=0 AND p1vx>-1 THEN  p1vx=p1vx-1
330 IF INKEY(69)=0 AND p1vy<1 THEN p1vy=p1vy+1:p2vy=p2vy-1:GOTO 350
340 IF INKEY(67)=0 AND p1vy>-1 THEN p1vy=p1vy-1:p2vy=p2vy+1
350 IF INKEY(47)=0 THEN p1vx=0:p1vy=0:p2vy=0:|SETUPSP,29,7,4:|SETUPSP,28,7,7
1'360 |SETUPSP,29,5,p1vy,p1vx
360 CALL &7101,29,5,p1vy,p1vx
1'370 |SETUPSP,28,5,p2vy,p1vx
370 CALL &7101,28,5,p2vy,p1vx
380 GOSUB 600'UPDATE ENTITIES
390 GOSUB 800'RENDER SPRITES
400 bpx=bx:bpy=by:bpz=bz
410 GOTO 300

1'****************************************************
1' UPDATE ENTITIES
1'****************************************************
600 '
605 if c and 1 THEN |COLSPALL:IF cor<32 THEN GOSUB 1200:' Tratamiento de colisiones
610 bx=bx+bvx:by=by+bvy' update ball position with speed
620 IF bx<=0 AND bvx<0 THEN bx=0:bvx = - bvx
630 IF bx>=800 AND bvx>0 THEN bx=800:bvx = - bvx
640 IF by<=0 AND bvy<0 THEN by=0:bvy = - bvy
650 IF by>=2000 AND bvy>0 THEN by=2000:bvy = - bvy
660 bvz=bvz-g:bz=bz+bvz:IF bz<=0 THEN bz=0:bvz=90:|SETUPSP,1,9,19:|LOCATESP,1,by/10,bx/10:|SETUPSP,1,7,1:|SETUPSP,1,0,&x101' check impact with the floor
670 RETURN

1'****************************************************
1' RENDER SPRITES
1'****************************************************
1' RENDER BALL
800 '
810 '
820 |LOCATESP,30,by/10,bx/10
830 |LOCATESP,31,(by-(bz/2))/10,bx/10
840 IF bpy<>by OR bpx<>bx THEN |PRINTSP,0,bpy/10,bpx/10
1'ERASE BALL AND SHADOW
850 |PRINTSP,0,(bpy-(bpz/2))/10,bpx/10
1'UPDATE AND PRINT ALL
860 |AUTOALL:|PRINTSPALL 
870 RETURN

1'****************************************************
1' RENDER SCREEN
1'****************************************************
1000 clg
1010 move 20,20:draw 620,20:draw 580,380: draw 60,380:draw 20,20' EXTERNAL LINE
1020 move 40,200:draw 600,200'NET
1100 RETURN

1'****************************************************
1' TRATAMIENTO DE COLISIONES
1'****************************************************
1200 IF cod = 28 AND PEEK(27471) = 4 THEN bvy=25:bvx= PEEK(27472) - 1:RETURN
1210 IF cod = 29 AND PEEK(27455) = 7 THEN bvy=-25:bvx= PEEK(27456) - 1:RETURN
1220 bvy=0:bvx=0:RETURN

1'****************************************************
1' INITILIZATION
1'****************************************************
1' CARGA LA PALETA
10500 INK 0, &0 
10510 INK 1, &D 
10520 INK 2, &f 
10530 INK 3, &2 
10540 INK 4, &6 
10550 INK 5, &E 
10560 INK 6, &B 
10570 INK 7, &14
10580 INK 8, &9 
10590 INK 9, &C 
10610 INK 10, &12 
10620 INK 11, &3 
10630 INK 12, &6 
10640 INK 13, &F 
10650 INK 14, &18 
10660 INK 15, &1A
10670 RETURN

1' ---fin del juego---
50000 |MUSIC: INK 0,0:PEN 1:BORDER 0: MODE 1
1' TINY TENNIS 8BP