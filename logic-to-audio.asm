/*
 * logic_to_audio.asm
 *
 *  Created: 6/16/2014 9:04:35 PM
 *   Author: Peter Reid
 */ 
 
.include "tn85def.inc"
.ORG 0
sense_top:
	// Read our digital inputs
	IN r16,PORTB
	// Compare to what we have been reading. If it's the same, we just go around again.
	CP r16, r17
	BREQ sense_top

	// Just write the value for now. We will want to store duration too, later.
	ST X+, r17


	MOV r17, r16

RJMP sense_top