/*
 * led_test.c
 *
 * Created: 7/17/2024 4:38:06 PM
 * Author : compu
 */ 

#include <avr/io.h>


int main(void)
{
    DDRB = 0x20;
	
    while (1) 
    {
		if ((PINB & 0x08) == 0x08){
			PORTB = 0x00;
		} else {
			PORTB = 0x20;
		}
    }
}

