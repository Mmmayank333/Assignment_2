	AREA     appcode, CODE, READONLY
    EXPORT __main
    ENTRY 

		
			MOV R1, #0x4;
			MOV R2, #0x2;
			MOV R3, #0x5;
			cmp R1, R2
			ble false1
			cmp R1, R3
			ble false2
			MOV R8, #0x1;
			b stop
		
false1		cmp R2,R3 
			ble false3
			MOV R8, #0x2;
			b stop

false2		MOV R8, #0x3;
			b stop
false3		MOV R8, #0x3;			
			b stop

stop    B stop ; stop program
     ENDFUNC
     END