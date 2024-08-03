#include "ADC.h"

void ADC_init(void) 
{
	ADMUX = (1 << REFS0);
	ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);
}

uint16_t ADC_read(uint8_t ch) 
{
	ch &= 0b00000111;
	ADMUX = (ADMUX & 0xF8) | ch;
	
	// Start conversion
	ADCSRA |= (1 << ADSC);
	
	// Wait for conversion to complete
	while (ADCSRA & (1 << ADSC));
	
	return (ADC);
}
