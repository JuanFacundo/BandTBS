#include <avr/io.h>
#include <util/delay.h>

void setup()
{
	DDRB |= (1 << PB1) | (1 << PB2);                            // Configurar los pines de salida para OC1A (PB1) y OC1B (PB2)

	TCCR1A = (1 << COM1A1) | (1 << COM1B1) | (1 << WGM11);      // Configurar TCCR1A para Fast PWM
	
	TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS11);         // Configurar TCCR1B para Fast PWM y preescaler de 8

	                                                            // Configurar el valor de TOP para ICR1
	ICR1 = 39999;                                               // Para una frecuencia de PWM de 50Hz (20ms periodo)

	// Configurar el ciclo de trabajo inicial
	OCR1A = 2500*2;                               
	OCR1B = 1500*2;                               
}

int main(void)
{
	setup();
	
	while (1)
	{
	}

	return 0;
}
