#include <avr/io.h>
#include <util/delay.h>
#include "ADC.h"

// x en A0


void setupPWM()
{
	DDRB |= (1 << PB1) | (1 << PB2);                            // Configurar los pines de salida para OC1A (PB1) y OC1B (PB2)

	TCCR1A = (1 << COM1A1) | (1 << COM1B1) | (1 << WGM11);      // Configurar TCCR1A para Fast PWM

	TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS11);         // Configurar TCCR1B para Fast PWM y preescaler de 8

	// Configurar el valor de TOP para ICR1
	ICR1 = 39999;                                               // Para una frecuencia de PWM de 50Hz (20ms periodo)
}

void setPWM(uint16_t pulse_width) 
{
	OCR1A = pulse_width;
}

int main(void) 
{
	setupPWM();
	ADC_init();

	while (1)
	{
		uint16_t x_value = ADC_read(0);

		uint16_t pulse_width = x_value*4 + 1000;

		setPWM(pulse_width);

		_delay_ms(500);
	}

	return 0;
}

