
;;
;; Copies the higher byte into the lower, in order to return value/256
;; Adress &a438
;;
_div_by_256:
	LD L,(IX+0)    
	LD H,(IX+1)  	;; Leo el segundo byte del numero
	inc hl
	ld a,(hl)	
	ld (hl),0
	dec hl
	ld (hl),a		;; pongo el segundo byte a 0
ret

;;
;; divides a 16 bit with sign by 2
;; Adress &a445
;;
_div_by_2:
	LD L,(IX+0)    
	LD H,(IX+1)  	
	ld a, (hl)	;; Leo la variable
	ld e, a
	inc hl 
	ld a, (hl)
	ld d, a
	sra d		;; desplazo un bit el byte msb
	rr e		;; roto un bit el lsb con el carry por la izquierda
	ld a, d
	ld (hl),a
	dec hl
	ld a, e
	ld (hl),a	;; escribo el resultado
ret