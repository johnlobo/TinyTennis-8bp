IMAGE_LIST
;---------------------------------------------------------------------------------------------
;pondremos aqui una lista de las imagenes que queremos usar sin especificar la direccion de memoria desde basic
; de este modo el comando |SETUPSP,<id>,9,<address> se transforma en |SETUPSP,<id>,9,<numero>
; la ventaja de no usar direcciones de memoria en basic es que si ampliamos los graficos o se reensamblan en 
; direcciones diferentes, el numero que asignemos no cambiara
; NO tienen que tener todas un numero, solo aquellas que vamos a usar con |setupsp, id, 9,<num>
; se empiezan a numerar en 16
; podemos usar hasta 255 imagenes especificadas de este modo 
; no hace falta que la lista tenga 255 elementos. es de longitud variable, incluso puede estar vacia
;----------------------------------------------------------------------------------------------
dw BLANK2x4; 16
dw BALL; 17
dw SHADOW;18
dw DUST01;19
dw DUST02;20
dw DUST03;21
dw PLAYER01;22
dw PLAYER02;23
dw PLAYER03;24
dw PLAYER04;25
dw PLAYER05;26
dw PLAYER06;27
dw PLAYER07;28
dw PLAYER08;29
dw PLAYER09;30
dw PLAYER10;31
dw PLAYER11;32
dw PLAYER12;33
dw PLAYER13;34
dw PLAYER14;35
dw PLAYER15;36
dw PLAYER16;37
dw PLAYER17;38
dw PLAYER18;39


; ahora las imagenes
;=================================================
; si no vas a usar el comando PRINTAT,  sino simplemente los caracteres del amstrad, entonces
; puedes comentar la siguientes 3 lineas
_BEGIN_ALPHABET
read "alphabet_default.asm"
_END_ALPHABET
;=================================================
_SPRITE_HEIGHTS_TABLE	ds 32 ; 32 bytes para almacenar las alturas de los sprites y poderlos ordenar. uso interno.
;=================================================
_BEGIN_FLIP_IMAGES
;=================================================
; aqui pon las imagenes que se definen como otras existentes pero flipeadas horizontalmente. 

; los frames del soldado a la izquierda los defino como flipeados. es mas lento pero gasta menos ram
;SOLDADO_L0 dw SOLDADO_R0;
;SOLDADO_L1 dw SOLDADO_R1;
;SOLDADO_L2 dw SOLDADO_R2;

;=================================================
_END_FLIP_IMAGES
;=================================================
;=================================================
_BEGIN_IMAGES
;=================================================

;------ BEGIN SPRITE --------
BLANK2x4
db 2 ; ancho
db 4 ; alto
db #00, #00
db #00, #00
db #00, #00
db #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
BALL
db 2 ; ancho
db 4 ; alto
db #51, #a2
db #a6, #59
db #f3, #59
db #51, #a2
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SHADOW
db 2 ; ancho
db 4 ; alto
;db #00, #00
;db #41, #82
;db #c3, #c3
;db #41, #82
db #00, #00
db #41, #82
db #41, #82
db #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
DUST01
db 2 ; ancho
db 4 ; alto
db #82, #82
db #41, #00
db #00, #82
db #82, #41
;------ END SPRITE --------

;------ BEGIN SPRITE --------
DUST02
db 2 ; ancho
db 4 ; alto
db #82, #82
db #00, #00
db #00, #00
db #82, #41
;------ END SPRITE --------
;------ BEGIN SPRITE --------
DUST03
db 2 ; ancho
db 4 ; alto
db #82, #00
db #00, #00
db #00, #00
db #00, #41
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER01
db 5 ; ancho
db 20 ; alto
db #00, #a3, #a2, #11, #00
db #01, #53, #f3, #22, #22
db #51, #53, #f3, #11, #11
db #51, #53, #f3, #22, #22
db #51, #f3, #f3, #11, #11
db #00, #f3, #a2, #33, #22
db #40, #95, #3f, #22, #00
db #95, #3f, #3f, #2a, #00
db #1d, #3f, #3f, #08, #00
db #1d, #6a, #3f, #08, #00
db #15, #3f, #3f, #00, #00
db #15, #3f, #3f, #00, #00
db #41, #97, #c3, #00, #00
db #40, #c1, #c0, #00, #00
db #40, #80, #0c, #00, #00
db #04, #08, #0c, #00, #00
db #ae, #08, #0c, #aa, #00
db #ae, #08, #ff, #aa, #00
db #ff, #aa, #ff, #aa, #00
db #55, #aa, #ff, #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER02
db 5 ; ancho
db 20 ; alto
db #01, #f3, #00, #00, #00
db #53, #f3, #a2, #00, #00
db #f3, #f3, #08, #11, #00
db #f3, #a6, #08, #22, #22
db #f3, #a6, #08, #11, #11
db #04, #0c, #00, #22, #22
db #40, #49, #00, #11, #11
db #95, #3f, #2a, #33, #22
db #3f, #1d, #2a, #22, #00
db #3f, #0c, #3b, #00, #00
db #3f, #3f, #2e, #00, #00
db #3f, #3f, #2a, #00, #00
db #c3, #6b, #82, #00, #00
db #c0, #c2, #80, #00, #00
db #40, #c0, #80, #00, #00
db #11, #04, #08, #00, #00
db #33, #04, #08, #00, #00
db #22, #00, #5d, #aa, #00
db #c3, #00, #ff, #aa, #00
db #c3, #82, #55, #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER03
db 5 ; ancho
db 20 ; alto
db #00, #00, #00, #00, #00
db #01, #f3, #00, #00, #00
db #53, #f3, #a2, #00, #00
db #f3, #f3, #08, #00, #00
db #f3, #a6, #08, #11, #00
db #f3, #a6, #08, #22, #22
db #04, #0c, #00, #11, #11
db #40, #49, #00, #22, #22
db #95, #3f, #2a, #11, #11
db #3f, #1d, #2a, #33, #22
db #3f, #2e, #3b, #00, #00
db #3f, #3f, #0c, #00, #00
db #c3, #6b, #86, #00, #00
db #c0, #c2, #80, #00, #00
db #40, #c0, #00, #00, #00
db #04, #08, #00, #00, #00
db #04, #08, #00, #00, #00
db #11, #08, #00, #00, #00
db #41, #ff, #00, #00, #00
db #41, #ff, #aa, #00, #00
;------ END SPRITE --------

;------ BEGIN SPRITE --------
PLAYER04
db 5 ; ancho
db 20 ; alto
db #00, #53, #a2, #00, #00
db #01, #f3, #f3, #00, #00
db #51, #f3, #a6, #00, #22
db #51, #f3, #0c, #11, #11
db #51, #f3, #0c, #00, #22
db #00, #0c, #08, #11, #11
db #00, #84, #82, #00, #22
db #40, #3f, #3f, #11, #33
db #15, #2e, #3f, #11, #00
db #15, #2e, #1d, #22, #00
db #15, #3f, #3f, #08, #00
db #15, #3f, #3f, #00, #00
db #41, #97, #c3, #00, #00
db #40, #c1, #c0, #00, #00
db #40, #c0, #c0, #00, #00
db #04, #08, #33, #00, #00
db #04, #08, #33, #00, #00
db #0c, #00, #11, #82, #00
db #ff, #00, #41, #c3, #00
db #ff, #aa, #41, #c3, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER05
db 5 ; ancho
db 20 ; alto
db #00, #00, #51, #a3, #00
db #00, #00, #f3, #f3, #02
db #11, #00, #59, #f3, #a2
db #22, #22, #0c, #f3, #a2
db #11, #00, #0c, #f3, #a2
db #22, #22, #04, #0c, #00
db #11, #00, #41, #48, #00
db #33, #22, #3f, #3f, #80
db #00, #22, #3f, #1d, #2a
db #00, #11, #2e, #1d, #2a
db #00, #04, #3f, #3f, #2a
db #00, #00, #3f, #3f, #2a
db #00, #00, #c3, #6b, #82
db #00, #00, #c0, #c2, #80
db #00, #00, #c0, #c0, #80
db #00, #00, #33, #04, #08
db #00, #00, #33, #04, #08
db #00, #41, #22, #00, #0c
db #00, #c3, #82, #00, #ff
db #00, #c3, #82, #55, #ff
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER06
db 5 ; ancho
db 20 ; alto
db #00, #00, #00, #00, #00
db #00, #00, #00, #f3, #02
db #00, #00, #51, #f3, #a3
db #00, #00, #04, #f3, #f3
db #00, #22, #04, #59, #f3
db #11, #11, #04, #59, #f3
db #22, #22, #00, #0c, #08
db #11, #11, #00, #86, #80
db #22, #22, #15, #3f, #6a
db #11, #33, #15, #2e, #3f
db #00, #00, #37, #1d, #3f
db #00, #00, #0c, #3f, #3f
db #00, #00, #49, #97, #c3
db #00, #00, #40, #c1, #c0
db #00, #00, #00, #c0, #80
db #00, #00, #00, #04, #08
db #00, #00, #00, #04, #08
db #00, #00, #00, #04, #22
db #00, #00, #00, #ff, #82
db #00, #00, #55, #ff, #82
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER07
db 5 ; ancho
db 20 ; alto
db #00, #00, #51, #f3, #a3
db #00, #22, #04, #f3, #f3
db #11, #11, #04, #59, #f3
db #22, #22, #04, #59, #f3
db #11, #11, #00, #0c, #08
db #22, #22, #00, #86, #80
db #11, #33, #15, #3f, #6a
db #00, #11, #15, #2e, #3f
db #00, #00, #37, #0c, #3f
db #00, #00, #1d, #3f, #3f
db #00, #00, #15, #3f, #3f
db #00, #00, #41, #97, #c3
db #00, #00, #40, #c1, #c0
db #00, #00, #40, #c0, #80
db #00, #00, #04, #08, #33
db #00, #00, #04, #08, #33
db #00, #55, #ae, #00, #11
db #00, #55, #ff, #00, #c3
db #00, #00, #aa, #41, #c3
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER08
db 5 ; ancho
db 20 ; alto
db #00, #53, #a2, #00, #00
db #01, #f3, #f3, #00, #00
db #51, #f3, #f3, #00, #00
db #51, #f3, #a6, #00, #22
db #51, #f3, #a6, #11, #11
db #00, #f3, #a2, #00, #22
db #40, #95, #3f, #11, #11
db #95, #3f, #3f, #00, #22
db #0c, #3f, #3f, #11, #33
db #1d, #3f, #2e, #11, #00
db #1d, #3f, #3f, #08, #00
db #1d, #3f, #3f, #08, #00
db #41, #97, #c3, #00, #00
db #40, #c1, #c0, #00, #00
db #40, #80, #0c, #00, #00
db #04, #08, #0c, #00, #00
db #ae, #08, #0c, #aa, #00
db #ae, #08, #ff, #aa, #00
db #ff, #aa, #ff, #aa, #00
db #55, #aa, #ff, #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER09
db 5 ; ancho
db 20 ; alto
db #00, #00, #53, #a2, #00
db #00, #01, #53, #f3, #00
db #00, #51, #53, #f3, #00
db #00, #51, #f3, #f3, #00
db #00, #51, #f3, #f3, #00
db #00, #00, #f3, #a2, #22
db #00, #40, #95, #2a, #00
db #00, #95, #3f, #2a, #22
db #00, #0c, #3f, #2e, #00
db #00, #1d, #3f, #2e, #00
db #04, #15, #3f, #3f, #00
db #00, #15, #3f, #3f, #00
db #00, #41, #97, #c3, #00
db #00, #40, #c1, #c0, #00
db #00, #40, #80, #0c, #00
db #00, #04, #08, #0c, #00
db #00, #ae, #08, #0c, #aa
db #00, #ae, #08, #ff, #aa
db #00, #ff, #aa, #ff, #aa
db #00, #55, #aa, #ff, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER10
db 5 ; ancho
db 20 ; alto
db #00, #00, #01, #f3, #00
db #00, #00, #53, #53, #a2
db #00, #11, #f3, #53, #a2
db #00, #22, #59, #f3, #a2
db #11, #11, #59, #f3, #a2
db #00, #22, #51, #f3, #00
db #11, #11, #c0, #3f, #00
db #00, #62, #3f, #3f, #00
db #00, #00, #1d, #3f, #00
db #00, #04, #3f, #3f, #00
db #00, #04, #3f, #3f, #00
db #00, #08, #3f, #3f, #2a
db #00, #00, #c3, #6b, #82
db #00, #00, #c0, #c0, #80
db #00, #00, #c0, #04, #08
db #00, #00, #0c, #04, #08
db #00, #55, #0c, #04, #5d
db #00, #55, #0c, #55, #ff
db #00, #55, #ff, #55, #ff
db #00, #00, #ff, #55, #aa
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER11
db 5 ; ancho
db 20 ; alto
db #00, #a3, #a2, #00, #00
db #01, #53, #f3, #00, #00
db #51, #53, #f3, #11, #00
db #51, #53, #f3, #22, #22
db #51, #f3, #f3, #11, #11
db #00, #f3, #a2, #22, #22
db #c0, #95, #3f, #11, #11
db #1d, #3f, #3f, #33, #22
db #1d, #3f, #3f, #22, #00
db #15, #6a, #3f, #2a, #00
db #15, #95, #3f, #08, #00
db #15, #3f, #3f, #08, #00
db #41, #97, #c3, #00, #00
db #40, #c0, #0c, #aa, #00
db #40, #80, #ff, #aa, #00
db #04, #08, #ff, #aa, #00
db #ae, #08, #ff, #00, #00
db #ae, #08, #00, #00, #00
db #ff, #aa, #00, #00, #00
db #55, #aa, #00, #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER12
db 5 ; ancho
db 20 ; alto
db #00, #a3, #a2, #22, #22
db #01, #53, #f3, #11, #11
db #51, #53, #f3, #22, #22
db #51, #53, #f3, #11, #11
db #51, #f3, #f3, #33, #22
db #00, #f3, #a2, #22, #00
db #40, #95, #3f, #2a, #00
db #15, #3f, #3f, #08, #00
db #15, #3f, #3f, #08, #00
db #95, #6a, #3f, #00, #00
db #1d, #95, #3f, #00, #00
db #1d, #3f, #3f, #00, #00
db #41, #97, #c3, #00, #00
db #ae, #48, #c0, #00, #00
db #ae, #08, #0c, #00, #00
db #ff, #aa, #0c, #00, #00
db #55, #aa, #0c, #aa, #00
db #00, #00, #ff, #aa, #00
db #00, #00, #ff, #aa, #00
db #00, #00, #ff, #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER13
db 5 ; ancho
db 20 ; alto
db #00, #22, #a3, #a2, #00
db #11, #11, #04, #51, #00
db #22, #22, #0c, #59, #00
db #11, #11, #0c, #59, #00
db #22, #22, #08, #59, #00
db #11, #33, #0c, #08, #00
db #00, #11, #95, #3f, #00
db #00, #91, #37, #3f, #2a
db #00, #19, #37, #3f, #08
db #00, #1d, #62, #3f, #08
db #00, #0c, #1d, #3f, #08
db #00, #15, #37, #2e, #00
db #00, #41, #97, #c3, #00
db #00, #40, #c0, #c0, #00
db #00, #40, #80, #0c, #00
db #00, #04, #08, #0c, #00
db #00, #04, #08, #0c, #00
db #00, #55, #aa, #ff, #00
db #00, #ff, #aa, #ff, #aa
db #00, #ff, #aa, #ff, #aa
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER14
db 5 ; ancho
db 20 ; alto
db #00, #00, #51, #53, #00
db #00, #11, #00, #08, #a2
db #00, #22, #26, #0c, #a2
db #11, #11, #04, #0c, #a2
db #00, #22, #26, #04, #a2
db #11, #11, #04, #0c, #00
db #00, #33, #62, #3f, #3f
db #00, #00, #37, #3f, #2e
db #00, #04, #33, #3f, #2e
db #00, #04, #3b, #95, #2e
db #00, #04, #0c, #3f, #08
db #00, #00, #3b, #3f, #2a
db #00, #00, #c3, #6b, #82
db #00, #00, #0c, #c0, #80
db #00, #00, #0c, #04, #08
db #00, #55, #ff, #04, #08
db #00, #55, #ff, #04, #08
db #00, #00, #00, #55, #aa
db #00, #00, #00, #55, #ff
db #00, #00, #00, #55, #ff
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER15
db 5 ; ancho
db 20 ; alto
db #11, #11, #00, #00, #00
db #22, #22, #a3, #a2, #00
db #11, #11, #04, #51, #00
db #22, #22, #0c, #59, #00
db #11, #33, #0c, #59, #00
db #00, #11, #08, #59, #00
db #00, #91, #26, #08, #00
db #00, #1d, #37, #3f, #00
db #00, #1d, #37, #3f, #00
db #00, #0c, #1d, #3f, #2a
db #00, #15, #62, #3f, #08
db #00, #15, #3f, #3f, #08
db #00, #15, #3f, #2e, #00
db #00, #40, #c0, #0c, #00
db #00, #40, #c0, #0c, #00
db #00, #04, #08, #ff, #aa
db #00, #04, #08, #ff, #aa
db #00, #04, #08, #00, #00
db #00, #ff, #aa, #00, #00
db #00, #ff, #aa, #00, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER16
db 5 ; ancho
db 20 ; alto
db #11, #11, #51, #53, #00
db #22, #22, #a2, #08, #a2
db #11, #11, #a6, #0c, #a2
db #22, #33, #a6, #0c, #a2
db #11, #22, #a6, #04, #a2
db #00, #22, #04, #0c, #00
db #00, #22, #15, #3f, #2a
db #00, #08, #3f, #3f, #3f
db #00, #26, #3f, #3f, #2e
db #00, #04, #3f, #3f, #2e
db #00, #00, #3f, #3f, #2e
db #00, #00, #3f, #3f, #0c
db #00, #00, #c3, #6b, #82
db #00, #00, #c0, #c0, #80
db #00, #00, #c0, #04, #08
db #00, #00, #0c, #04, #08
db #00, #00, #0c, #04, #08
db #00, #00, #ff, #55, #aa
db #00, #55, #ff, #55, #ff
db #00, #55, #ff, #55, #ff
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER17
db 5 ; ancho
db 20 ; alto
db #00, #51, #53, #00, #00
db #00, #a2, #08, #a2, #00
db #00, #a6, #0c, #a2, #00
db #00, #a6, #0c, #a2, #00
db #00, #a6, #04, #a2, #00
db #00, #00, #26, #00, #00
db #00, #11, #15, #2a, #00
db #00, #2a, #37, #3f, #00
db #00, #3b, #15, #2e, #00
db #00, #08, #37, #2e, #00
db #00, #19, #1d, #2e, #00
db #00, #2e, #37, #2a, #08
db #00, #c3, #6b, #82, #00
db #00, #c0, #c0, #80, #00
db #00, #c0, #04, #08, #00
db #00, #0c, #04, #08, #00
db #00, #0c, #04, #08, #00
db #00, #ff, #55, #aa, #00
db #55, #ff, #55, #ff, #00
db #55, #ff, #55, #ff, #00
;------ END SPRITE --------
;------ BEGIN SPRITE --------
PLAYER18
db 5 ; ancho
db 20 ; alto
db #00, #a3, #a2, #00, #00
db #51, #04, #51, #00, #00
db #51, #0c, #59, #00, #00
db #51, #0c, #59, #11, #00
db #51, #08, #59, #22, #22
db #00, #0c, #08, #11, #11
db #00, #3f, #3f, #22, #22
db #15, #3f, #3b, #33, #00
db #04, #3f, #19, #08, #00
db #04, #0c, #1d, #08, #00
db #15, #3b, #3f, #04, #08
db #15, #3f, #3f, #00, #00
db #41, #97, #c3, #00, #00
db #40, #c0, #c0, #00, #00
db #40, #80, #0c, #00, #00
db #04, #08, #0c, #00, #00
db #04, #08, #0c, #00, #00
db #55, #aa, #ff, #00, #00
db #ff, #aa, #ff, #aa, #00
db #ff, #aa, #ff, #aa, #00
;------ END SPRITE --------

;=================================================
_END_IMAGES
;=================================================

;=================================================
_BEGIN_3D_ZOOM_IMAGES
;=================================================
; limites aplicables a todas las imagenes con zoom
; para estos limites se considera el horizonte como el 0 y hacia abajo va creciendo hasta 200

_ZOOM_LIMIT_A
db 120; entre 0 y limitA se pone imagen 3

_ZOOM_LIMIT_B
db 50
;db 80; entre este limite y el limite A, se pone imagen 2
;mas cerca que limit B se pone imagen 1
;=================================================
; las imagenes de tipo zoom se definen aqui. 

;CARTEL_ZOOM
;db 1; ancho simbolico
;db 1; alto simbolico
;dw CARTEL1, CARTEL2, CARTEL3



;=================================================
_END_3D_ZOOM_IMAGES
;=================================================

;=================================================================
_BEGIN_3D_SEGMENTS
;=================================================================
; el ancho es el de la scanline
; el alto es el alto real
; luego va el dx, que puede ser positivo ( inclinado a izquierda) o negativo (inclinado a derecha)
; finalmente podria ir un dy que indique alto de patron de repeticion
db 0; esto es para que la primera imagen de tipo segmento sea > _3D_SEGMENTS
;--------------------------------------------------------------------

; 
;----------------- SEGMENTOS RECTOS --------------------------------
;SEGMENT_L0
;db 20; ancho
;db 50; alto
;db 0; dx
;db 192,192,192,192, 192,192,192,192 ,192,240,240, 0, 0, 0, 0, 0, 0, 0, 0, 0
;-------------------------------------------------------------------


;=================================================
_END_3D_SEGMENTS
;=================================================

_END_GRAPH