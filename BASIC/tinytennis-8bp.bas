10 MEMORY 23999
20 MODE 0: DEFINT A-Z: CALL &6B78:' install RSX
21 ENT 1,10,100,3  
30 ON BREAK GOSUB 50000
35 ON ERROR GOTO 50000
40 CALL &BC02:'restaura paleta por defecto por si acaso
45 RANDOMIZE TIME
50 GOSUB 10500'LOAD PALETTE
60 FOR j=0 TO 31:|SETUPSP,j,0,0:NEXT:|3D,0:'reset sprites

1' SETUP BOLA : sprite 31 -> bola
90 bx=4000:by=10000:bz=1000' coordenadas de la pelota
91 bvx=100:bvy=200:bvz=0' velocidad de la pelota
92 bpx=bx:bpy=by'
93 g=80' gravity
100 |SETUPSP,31,0,1+32:' status de la bola
110 |SETUPSP,31,9,17' assign ball sprite
120 |LOCATESP,31,by-(bz/2),bx:'colocamos al sprite (sin imprimirlo aun)
1' SETUP BLANK : sprite 0 -> bola
130 |SETUPSP,0,0,1+32:' status del personaje
140 |SETUPSP,0,9,16' assign ball sprite
1' SETUP SHADOW : sprite 30 -> shadow
150 |SETUPSP,30,0,1+32:|SETUPSP,30,9,18:|LOCATESP,30,by/100,bx/100:'asignamos y colocamos al sprite (sin imprimirlo aun)
1' SETUP PLAYER : : sprite 29 -> PLAYER
160 p1x=40:p1y=50:p1vx=0:p1vy=0:p1px=p1x:p1py=p1y
170 |SETUPSP,29,0,1+8+32:|SETUPSP,29,9,22:|LOCATESP,29,p1y,p1x:'asignamos y colocamos al sprite del player(sin imprimirlo aun)


1'200 |MUSIC,1,0,0,5:puntos=0      
210 cor=32:cod=32:|COLSPALL,@cor,@cod:' configura comando de colision
215 GOSUB 1000' RENDER SCREEN
220 |PRINTSPALL,0,0,1,0: 'configura comando de impresion

1'--- ciclo de juego ---
300 c=c+1
310 ' lee el teclado y posiciona al personaje
320 IF INKEY(27)=0 THEN p1vx=1:GOTO 330
325 IF INKEY(34)=0 THEN p1vx=-1
330 IF INKEY(69)=0 THEN p1vy=2:GOTO 336
335 IF INKEY(67)=0 THEN p1vy=-2
336 |SETUPSP,29,5,p1vy,p1vx
337 IF INKEY(47)=0 THEN bvx=INT((RND(1)*200)-100):bvy=INT((RND(1)*200)-100)
340 GOSUB 400'UPDATE ENTITIES
350 GOSUB 500'RENDER SPRITES
351 bpx=bx:bpy=by:bpz=bz
355 p1px=p1x:p1py=p1y
360 GOTO 300

1'****************************************************
1'UPDATE ENTITIES
1'****************************************************
400 '
420 bx=bx+bvx:by=by+bvy' update ball position with speed
430 IF bx<=99 AND bvx<0 THEN bx=0:bvx = - bvx
440 IF bx>=8000 AND bvx>0 THEN bx=8000:bvx = - bvx
450 IF by<=99 AND bvy<0 THEN by=0:bvy = - bvy
460 IF by>=20000 AND bvy>0 THEN by=20000:bvy = - bvy
465 bvz=bvz-g:bz=bz+bvz:IF bz<=99 THEN bz=0:bvz=1000:|SETUPSP,1,9,19:|LOCATESP,1,by/100,bx/100:|SETUPSP,1,7,1:|SETUPSP,1,0,&x101' check impact with the floor
470 RETURN

1'****************************************************
1' RENDER SPRITES
1'****************************************************
1' RENDER BALL
500 tx=bx/100:ty=by/100:tz=bz/100
502 tpx=bpx/100:tpy=bpy/100:tpz=bpz/100
505 |LOCATESP,30,ty,tx
510 |LOCATESP,31,ty-(tz/2),tx
520 IF tpy<>ty OR tpx<>tx THEN |PRINTSP,0,tpy,tpx
530 |PRINTSP,0,tpy-(tpz/2),tpx:|AUTOALL:|PRINTSPALL'ERASE BALL AND SHADOW AND PRINT EVERYTHING
540 |COLSPALL
550 RETURN

1'****************************************************
1' RENDER SCREEN
1'****************************************************
1000 clg
1010 move 20,20:draw 620,20:draw 580,380: draw 60,380:draw 20,20' EXTERNAL LINE
1020 move 40,200:draw 600,200'NET
1100 RETURN

1'****************************************************
1' INICILIZATION
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