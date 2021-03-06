10 MEMORY 23999
20 MODE 0: DEFINT A-Z: CALL &6B78:' install RSX
21 ENT 1,10,100,3  
1'30 ON BREAK GOSUB 50000
1'35 ON ERROR GOTO 50000
40 CALL &BC02:'restaura paleta por defecto por si acaso
45 RANDOMIZE TIME
50 GOSUB 10500'LOAD PALETTE
60 FOR j=0 TO 31:|SETUPSP,j,0,0:NEXT:|3D,0:'reset sprites

1 ' SETUP BOLA : sprite 31 -> bola
100 bx=80:by=200:bz=2' coordenadas de la pelota
110 bvx=1:bvy=4:bvz=0' velocidad de la pelota
120 bpx=bx:call &a445,@bpx  'redondeo la posicion anterior en x
125 bpy=by:call &a445,@bpy  'redondeo la posicion anterior en y
126 bpz=bz:call &a445,@bpz  'redondeo la posicion anterior en z
127 tz=bpz:call &a445,@tz: bpzy=(bpy-tz)    ' PREVIOUS BALL COORDINATES
130 g=4' gravity
140 |SETUPSP,31,0,1+32' status de la bola
150 |SETUPSP,31,9,17' assign ball sprite
155 brx=bx:call &a445,@brx 'redondeo la posicion de render en x
160 tz=bz:call &a445,@tz ' divides bz by 2'
165 bry=by-tz:call &a445,@bry
167 |LOCATESP,31,bry,brx:'colocamos al sprite (sin imprimirlo aun)
1' SETUP BLANK : sprite 0 -> borrado
170 |SETUPSP,0,9,16' assign blank sprite
1' SETUP SHADOW : sprite 30 -> shadow
180 |SETUPSP,30,0,1:|SETUPSP,30,9,18:|LOCATESP,30,bry,brx
1' SETUP PLAYER 1: sprite 29 -> PLAYER
190 p1x=40:p1y=160:p1vx=0:p1vy=0:dir=1
195 p2x=40:p2y=10:p2vy=0:p2vx=0
200 |SETUPSP,29,0,1+2:|SETUPSP,29,9,22:dir=1:|SETUPSP,29,7,5:|LOCATESP,29,p1y,p1x
1' SETUP PLAYER 1: sprite 28 -> BOT
210 |SETUPSP,28,0,1+2+4+8:|SETUPSP,28,9,22:|SETUPSP,28,7,5:|SETUPSP,28,7,32:|LOCATESP,28,p2y,p2x

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
310 IF PEEK(27471) <> 4 THEN GOTO 340
320 IF PEEK(27472) = 2 THEN CALL &7101,29,7,5: GOTO 340
1'UPDATE ANIMATION EVERY TWO CICLES IF HITTING
330 IF c AND 1 THEN |ANIMA,29:GOTO 400
1' lee el teclado y posiciona al personaje
340 IF INKEY(27)=0 THEN IF dir<>0 THEN |SETUPSP,29,7,2:dir=0 ELSE |ANIMA,29:p1x=p1x+1:GOTO 360
350 IF INKEY(34)=0 THEN IF dir<>2 THEN |SETUPSP,29,7,3:dir=2 ELSE |ANIMA,29:p1x=p1x-1
360 IF INKEY(67)=0 THEN IF dir<>1 THEN |SETUPSP,29,7,5:dir=1 ELSE |ANIMA,29:p1y=p1y-2:GOTO 390
370 IF INKEY(69)=0 THEN IF dir<>3 THEN |SETUPSP,29,7,6:dir=3 ELSE |ANIMA,29:p1y=p1y+2
380 IF INKEY(47)=0 THEN |SETUPSP,29,7,4: dir=5:GOTO 400
390 |LOCATESP,29,p1y,p1x
1'UPDATE ENTITIES
400 GOSUB 600
1'RENDER SPRITES
410 GOSUB 800
1'LOOP
420 GOTO 300

1'****************************************************
1' UPDATE ENTITIES
1'****************************************************
600 '
605 if c and 1 THEN |COLSPALL:IF cor<32 THEN GOSUB 1200:' Tratamiento de colisiones
1' update ball position with speed
610 bx=bx+bvx:by=by+bvy
1' CHECK KEYBOARD
620 IF bx<=0 AND bvx<0 THEN bx=0:bvx = - bvx
630 IF bx>=160 AND bvx>0 THEN bx=160:bvx = - bvx
640 IF by<=0 AND bvy<0 THEN by=0:bvy = - bvy
650 IF by>=400 AND bvy>0 THEN by=400:bvy = - bvy
1' UPDATE GRAVITY AND Z COORD
660 bvz=bvz-g:bz=bz+bvz
1' brx, bry, brz  -> render coordinates
661 brx=bx:call &A445,@brx
662 bry=by:call &a445,@bry
663 brz=bz:call &a445,@brz
1' bzy -> projection y coordinates
664 tz=brz:call &a445,@tz:bzy=(bry-tz)
1' CHECK IMPACT WITH THE FLOOR
665 IF bz<=0 THEN bz=0:bvz=32:|SETUPSP,1,9,19:|LOCATESP,1,bry,brx:|SETUPSP,1,7,1:|SETUPSP,1,0,&x101
1'UPDATE BOT DIRECTION
668 p2x=PEEK(27451):p2y=PEEK(27449)
670 IF bvy>0 THEN p2vx = -SGN(p2x-40): GOTO 710
680 IF bvx>0 THEN IF p2x<80 THEN p2vx = 1: GOTO 710: ELSE p2vx = 0: GOTO 710
690 IF p2x>0 THEN p2vx = -1: ELSE p2vx = 0
710 |SETUPSP,28,5,p2vy, p2vx
720 RETURN

1'****************************************************
1' RENDER SPRITES
1'****************************************************
1' RENDER BALL
800 '
810 '
820 |LOCATESP,30,bry,brx
830 |LOCATESP,31,bzy,brx
1'ERASE BALL AND SHADOW
840 IF bpy<>bry OR bpx<>brx or bpz<>bz THEN |PRINTSP,0,bpy,bpx:|PRINTSP,0,bpzy,bpx
1'UPDATE AND PRINT ALL
860 |AUTOALL:|PRINTSPALL 
1' PREVIOUS COORDINATES
870 bpx=brx:bpy=bry:bpz=brz:tz=bpz:call &a445,@tz:bpzy=(bpy-tz)
880 RETURN

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
1200 IF cod = 29 AND PEEK(27471) = 4 THEN bvy=-2:bvx= (PEEK(27472) - 1)*2:RETURN
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