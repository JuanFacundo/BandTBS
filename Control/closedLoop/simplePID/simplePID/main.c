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

//------PID variables------//
#define Kp 0.7//0.7999//
#define Kih 0.005//
#define Kd1 12//0.9772//
//#define Kd2 0.9420//0.933//

float Ix_z = 0.0;
float Iy_z = 0.0;
float x_z = 0.0;
float y_z = 0.0;
float Dx = 0.0;
float Dy = 0.0;
//float r = 0.3;
//------/PID variables-----//



void actCalc(uint8_t, uint8_t, int16_t);
void init_interrupt();
void init_timer0();

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
	DDRB &= ~(1 << 3);
	DDRB |= (1 << 5);
	PORTB &= ~(1 << 5);
	PORTB |= (1 << 3);
	DDRD &= ~((1 << 2) | (1 << 3) | (1 << 4)); // PD2 (INT0), PD3 (data_out1), PD4 (data_out2)
	DDRD |= (1 << 5);
	DDRD |= (1 << 6);
	PORTD |= (1 << 2); // Habilita el pull-up en PD2 (alerta)
	PORTD |= (1 << 3);
	PORTD |= (1 << 4);
	
	sei();
	char coord_x_str[5], coord_y_str[5];
	char buffer[50];
	char received_char = 0;
	uint8_t CtrlPW = 0;

	while (1)
	{
		// Leer datos de la UART si están disponibles
		if (USART_available())
		{
			received_char = USART_receive();
		}

		if (received_char == '1')
		{
			// manual
			uint16_t x_value = ADC_read(0) + 9;
			uint16_t y_value = ADC_read(1);
			uint16_t uart_valuex =  (int)(x_value * (180.0 / 1023.0));
			uint16_t uart_valuey =  (int)(y_value * (180.0 / 1023.0));
			
			uint16_t pulse_widthx = (int)(x_value*(2000.0/1023.0) + 2000);
			uint16_t pulse_widthy = (int)(y_value*(2000.0/1023.0) + 2000);
			setPWM(pulse_widthx,pulse_widthy);
			
			if(flag == 1)
			{
				flag = 0;
				snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", uart_valuex, uart_valuey,coord_x,coord_y,13);
				USART_print(buffer);		
			}
		
			_delay_ms(500);
			CtrlPW = 0;
		}
		else
		{
			// control
			if(flag == 1)
			{
				flag = 0;
				if ((coord_x == 255) && (coord_y == 255)){
					setPWM(3000,3000);
					Ix_z = 0.0;
					Iy_z = 0.0;
					snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 90, 90, coord_x, coord_y,13);
					USART_print(buffer);	
				} else {
					if ((PINB & 0x08) == 0x00){
						if(CtrlPW == 0){
							CtrlPW = 1;
							actCalc(coord_x, coord_y, 0);
						} else {
							CtrlPW = 0;
							setPWM(3000,3000);
							Ix_z = 0.0;
							Iy_z = 0.0;
							snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 90, 90, coord_x, coord_y,13);
							USART_print(buffer);
						}
					} else {
						if (CtrlPW == 1){
							actCalc(coord_x, coord_y, 0);
						} else {
							setPWM(3000,3000);
							Ix_z = 0.0;
							Iy_z = 0.0;
							snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 90, 90, coord_x, coord_y,13);
							USART_print(buffer);
						}
						
					}
					
				}
				
			}
		
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
	else if (bit_counter > DATA_WIDTH){
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

void actCalc(uint8_t posX, uint8_t posY, int16_t r){
	char buffer[50];
	float x = (posX)/8.0 - 15;
	float y = -(posY)/8.0 + 15;
	float e_x = r - x;
	float e_y = r - y;
	
	float Px = Kp * (1*r - x); //el 1 es el b del filtro de ref
	float Py = Kp * (1*r - y); //el 1 es el b del filtro de ref
	Dx = (x_z - x)*Kd1;// + Dx * Kd2;
	Dy = (y_z - y)*Kd1;// + Dy * Kd2;
	
	float ux = Px + Ix_z + Dx;
	float uy = Py + Iy_z + Dy;
	
	int16_t ux_sat = 0;
	if ( (ux>-90.0) && (ux<90.0) ){
		Ix_z = Ix_z + e_x*Kih;
		ux_sat = (uint16_t)((-4000/180) * ux + 3000);
		} else if(ux <= -90.0){
		ux_sat = 5000;
		} else {
		ux_sat = 1000;
	}
	x_z = x;
	
	int16_t uy_sat = 0;
	if ( (uy>-90.0) && (uy<90.0) ){
		Iy_z = Iy_z + e_y*Kih;
		uy_sat = (uint16_t)((-4000/180) * uy + 3000);
	} else if(uy <= -90.0){
		uy_sat = 5000;
	} else {
		uy_sat = 1000;
	}
	
	y_z = y;
	
	uint16_t uart_valuex =  (int)(ux+90);//_sat * (180.0 / 2000.0) - 45.0);
	uint16_t uart_valuey =  (int)(uy+90);//_sat * (180.0 / 2000.0) - 45.0);
	
	setPWM(ux_sat, uy_sat); 
	snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", uart_valuex, uart_valuey, coord_x, coord_y,13);
	USART_print(buffer);
}