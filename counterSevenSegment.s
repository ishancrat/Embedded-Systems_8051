ORG 0000H
	SJMP START
;DISPLAY 0 TO 9 ON SEVEN SEGMENT DISPLAY WITH A DELAY IN BETWEEN EACH
DELAY:  MOV R2,#255
HERE3:	MOV R4,#5
HERE2:	MOV R3,#255
HERE:   DJNZ R3, HERE
		DJNZ R4,HERE2
		DJNZ R2,HERE3
		RET

START: MOV A,#00H
		MOV P2,A ;PORT 2 OUTPUT
LOOP: MOV A,#0FCH ;0
		MOV P2,A
		ACALL DELAY
		MOV A,#60H ;1
		MOV P2,A
		ACALL DELAY
		MOV A,#0DAH ;2
		MOV P2,A
		ACALL DELAY
		MOV A,#0F2H ;3
		MOV P2,A
		ACALL DELAY
		MOV A,#66H ;4
		MOV P2,A
		ACALL DELAY
		MOV A,#0B6H ;5
		MOV P2,A
		ACALL DELAY
		MOV A,#0BEH ;6
		MOV P2,A
		ACALL DELAY
		MOV A,#0E0H ;7
		MOV P2,A
		ACALL DELAY
		MOV A,#0FEH ;8
		MOV P2,A
		ACALL DELAY
		MOV A,#0F6H ;9
		MOV P2,A
		ACALL DELAY
		JMP LOOP
		
END
