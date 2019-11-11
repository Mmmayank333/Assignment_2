     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION 
		MOV R1, #0x0;
		MOV R2, #0x1;
		
ret		ADD R3 ,R1 ,R2;		; fibonacci series will be displayed in R3
		MOV R1,R2;			; COPY R2 to R1
		MOV R2,R3;       	; Copy R3 to R2
		B ret				; Infinite loop

stop    B stop ; stop program?
	ENDFUNC
	END 