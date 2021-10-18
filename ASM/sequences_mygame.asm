;=====================================================================
; hasta 31 secuencias de animacion 
;=====================================================================
; debe ser una tabla fija y no variable
; cada secuencia contiene las direcciones de frames de animacion ciclica
; cada secuencia son 8 direcciones de memoria de imagen
; numero par porque las animaciones suelen ser un numero par
; un cero significa fin de secuencia, aunque siempre se gastan 8 words /secuencia
; al encontrar un cero se comienza de nuevo. 
; si no hay cero, tras el frame 8 se comienza de nuevo
; si a un sprite se le asigna la secuencia cero es que no tiene secuencia
; empezamos desde la secuencia 1

;--------------secuencias de animacion  --------
_SEQUENCES_LIST
;dw SOLDADO_R0,SOLDADO_R2,SOLDADO_R1,SOLDADO_R2,0,0,0,0 ;1
;dw SOLDADO_L0,SOLDADO_L2,SOLDADO_L1,SOLDADO_L2,0,0,0,0 ;2
dw DUST01,DUST01,DUST02,DUST03,BLANK2x4,1,0;1
dw PLAYER02, PLAYER03, PLAYER04, PLAYER03,0,0,0,0;2  Derecha
dw PLAYER05, PLAYER06, PLAYER07, PLAYER06,0,0,0,0;3  Izquierda
dw PLAYER08, PLAYER08, PLAYER09, PLAYER09, PLAYER10, PLAYER10, PLAYER01, PLAYER01;4  Golpe de espaldas
dw PLAYER01, PLAYER11, PLAYER01, PLAYER12,0,0,0,0;5  Arriba
dw PLAYER13, PLAYER14, PLAYER13, PLAYER15,0,0,0,0;6  Abajo
dw PLAYER16, PLAYER16, PLAYER17, PLAYER17, PLAYER18, PLAYER18, PLAYER13, PLAYER13;7  Golpe defrente

;-------- MACRO SECUENCIAS ----------------------
; son grupos de secuencias, una para cada direccion
; el significado es:
; still, left, right, up, up-left, up-right, down, down-left, down-right
; se numeran desde 32 en adelante
; un cero significa que se asigna la ultima que tenga. si se usa el cero hay que asignar alguna al iniciar
_MACRO_SEQUENCES
;db 0,2,1,3,5,3,4,6,4;32 --> secuencias del soldado , id=32. la siguiente secuencia seria la 33
db 0,3,2,5,3,2,6,3,2;32

