#include <avr/io.h>
#include <util/delay.h>
#include "ADC.h"
#include "UART.h"
#include <avr/interrupt.h>
#include <stdlib.h>
#include <stdio.h>
#define DATA_WIDTH 8
#define F_CPU 16000000UL
#define BAUD 9600
#define MYUBRR F_CPU/16/BAUD-1
	
uint8_t coord_x = 0;
uint8_t flag = 0;
uint8_t coord_y = 0;
int8_t bit_counter = 0;
uint8_t timer_ticks = 0;
uint8_t prueba = 10;
uint8_t aux_x = 0;
uint8_t aux_y = 0;

void setupPWM()
{
	DDRB |= (1 << PB1) | (1 << PB2);                            // Configurar los pines de salida para OC1A (PB1) y OC1B (PB2)

	TCCR1A = (1 << COM1A1) | (1 << COM1B1) | (1 << WGM11);      // Configurar TCCR1A para Fast PWM

	TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS11);         // Configurar TCCR1B para Fast PWM y preescaler de 8

	// Configurar el valor de TOP para ICR1
	ICR1 = 39999;                                               // Para una frecuencia de PWM de 50Hz (20ms periodo)
}

void setPWM(uint16_t pulse_widthx,uint16_t pulse_widthy)
{
	OCR1A = pulse_widthx;
	OCR1B = pulse_widthy;
}


int main(void)
{
	setupPWM();
	ADC_init();
	USART_init(MYUBRR);
	init_timer0();
	init_interrupt();
	
	// Configura los pines de entrada para los datos y la alerta
	DDRD &= ~((1 << 2) | (1 << 3) | (1 << 4)); // PD2 (INT0), PD3 (data_out1), PD4 (data_out2)
	DDRD |= (1 << 5);
	DDRD |= (1 << 6);
	PORTD |= (1 << 2); // Habilita el pull-up en PD2 (alerta)
	PORTD |= (1 << 3);
	PORTD |= (1 << 4);
		
	sei();
	char coord_x_str[5], coord_y_str[5];
	char buffer[50];
	char received_char;

	while (1) 
	{
		// Leer datos de la UART si están disponibles
		if (USART_available()) 
		{
			received_char = USART_receive();
		}

		if (received_char == '1')
		{
			
			uint16_t x_value = ADC_read(0);
			uint16_t y_value = ADC_read(1);
			uint16_t uart_valuex =  (int)(x_value * (180.0 / 1023.0));   
			uint16_t uart_valuey =  (int)(y_value * (180.0 / 1023.0));
			
			uint16_t pulse_widthx = (int)(x_value*(2000.0/1023.0) + 2000);  
			uint16_t pulse_widthy = (int)(y_value*(2000.0/1023.0) + 2000);
			setPWM(pulse_widthx,pulse_widthy);
			
			
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", uart_valuex, uart_valuey,coord_x,coord_y,5);
			
			USART_print(buffer);
			
			_delay_ms(500);
		}
		else
		{
			// control
			

			// Configurar los anchos de pulso PWM
			//setPWM(pulse_widthx, pulse_widthy);

			//uint16_t uart_valuex =  (int)((pulse_widthx-2000.0) * 0.09); 
			//uint16_t uart_valuey =  (int)((pulse_widthy-2000.0) * 0.09); 
			
			if(flag == 1)
			{
				//snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", uart_valuex, uart_valuey,coord_x,coord_y,5);
				snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 1, 1,coord_x,coord_y,5);
			}
		
			USART_print(buffer);
		}
		
	}
}


// Interrupcion externa cuando se detecta el pin alert
ISR(INT0_vect) {
	// Reinicia el contador de bits y los datos
	bit_counter = 0;
	coord_x = 0;
	coord_y = 0;
	timer_ticks = 0;
	// Inicia el temporizador
	TCNT0 = 0;  // Reinicia el contador del timer
	TIFR0 = 0x02;
	TIMSK0 |= (1 << OCIE0A); // Habilita la interrupci?n por comparaci?n
	EIMSK = 0;
}

// Interrupci?n para el Timer2 (cada 5us)
ISR(TIMER0_COMPA_vect) {
	if (timer_ticks < 1){
		timer_ticks++;
	}
	else if (bit_counter > DATA_WIDTH + 1){
		TIMSK0 &= ~(1 << OCIE0A);
		aux_x = 0;
		flag = 1;
		EIFR = 0x01;
		EIMSK |= (1 << INT0);
	}
	else {
		aux_x = PIND & 0x08;
		aux_x = aux_x >> 3;
		coord_x |= (aux_x << (bit_counter));
		aux_y = PIND & 0x10;
		aux_y = aux_y >> 4;
		coord_y |= (aux_y << (bit_counter));
		bit_counter++;
	}
	
}

void init_interrupt() {
	// Configura INT0 para detectar flanco ascendente
	EICRA = 0;
	EIMSK = 0;
	EICRA |= (1 << ISC01) | (1 << ISC00);
	EIMSK |= (1 << INT0);
	// Habilita interrupciones globales
}

void init_timer0() {
	TCCR0A = (1 << WGM01);
	TCCR0B = (1 << CS01);
	OCR0A = 99;
}