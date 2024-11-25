#include <avr/io.h>
#include <util/delay.h>
#include <string.h>
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
char mensaje[8];

uint16_t x_value;
uint16_t y_value;

uint16_t uart_valuex;
uint16_t uart_valuey;

uint16_t pulse_widthx;
uint16_t pulse_widthy;

char buffer[70];
char received_char = 1;
char char_aux = '0';

//------PD variables------//
int Kp  = 70;//0.7999//
int Kd = 50;//
int Tf = 1200;//0.9772//
float ux = 0.0;
float uy = 0.0;
float ux_ant = 0.0;
float uy_ant = 0.0;
float e_x;
float e_y;
float e_x_ant;
float e_y_ant;
float Ts = 0.02; 

//------Variables controlador------//
int polo = 50;
int cero = 60;
int ganancia = 40;

float Ix_z = 0.0;
float Iy_z = 0.0;
float x_z = 0.0;
float y_z = 0.0;
float Dx = 0.0;
float Dy = 0.0;
float r_x = 0.0;
float r_y = 0.0;
//------/PID variables-----//
typedef enum {Manual, Auto_PWOFF, Auto_PWON} state_t;
state_t state = Manual;

void actCalc(uint8_t posX, uint8_t posY, float r_x,float r_y);
void init_interrupt();
void init_timer0();
void procesar_mensaje(char *mensaje);
void received_string();

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
	//uint8_t CtrlPW = 0;

	while (1)
	{
		// Leer datos de la UART si están disponibles
	    if(USART_available())
		{
			char_aux = USART_receive();
			if (char_aux == 'M')
			{
				received_char = USART_receive();
			}		
		}
		
		//USART_receive_string(mensaje);
		//snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%s,\"y\":%d,\"r\":%d}\n", 90, 90, mensaje, coord_y,13);
		
		if (flag == 1 && (coord_x == 255 || coord_y == 255)){
			flag = 0;
			setPWM(3000,3000);
			Ix_z = 0.0;
			Iy_z = 0.0;
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 90, 90, coord_x, coord_y,13);
			USART_print(buffer);
		}
		switch(state){
			case Manual:
			
			x_value = ADC_read(0) + 9;
			y_value = ADC_read(1);
			
			uart_valuex =  (int)(x_value * (180.0 / 1023.0));
			uart_valuey =  (int)(y_value * (180.0 / 1023.0));
			
			pulse_widthx = (int)(x_value*(2000.0/1023.0) + 2000);
			pulse_widthy = (int)(y_value*(2000.0/1023.0) + 2000);
			
			setPWM(pulse_widthx,pulse_widthy);
			
			if (received_char == '0'){
				state = Auto_PWOFF;
				setPWM(3000,3000);
				Ix_z = 0.0;
				Iy_z = 0.0;
			}
			else if (flag == 1){
				flag = 0;
				
				snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", uart_valuex, uart_valuey,coord_x,coord_y,13);
				USART_print(buffer);
			}
			break;
			
			case Auto_PWOFF:
			if (received_char == '1'){
				setPWM(3000,3000);
				Ix_z = 0.0;
				Iy_z = 0.0;
				state = Manual;
				break;
			}		
			/*if (char_aux == 'P'){
				char_aux = 'x';
				cli();
				USART_receive_string(mensaje);
				procesar_mensaje(mensaje);
				snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 90, 90, Kp,Kd,13);
				USART_print(buffer);
				sei();
			}*/
				

			if ((PINB & 0x08) == 0x00){
					state = Auto_PWON;
					_delay_ms(200);
					//CtrlPW = 1;
			}

			/*else if (CtrlPW == 1){
				state = Auto_PWON;
			}*/
			else if (flag == 1){
				flag = 0;
				snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 90, 90, coord_x, coord_y,13);
			}
			break;
			
			case Auto_PWON:
			
			if ((PINB & 0x08) == 0x00){
				//CtrlPW = 0;
				state = Auto_PWOFF;
				setPWM(3000,3000);
				Ix_z = 0.0;
				Iy_z = 0.0;
				_delay_ms(200);
			}
			
			if (received_char == '1'){
				setPWM(3000,3000);
				Ix_z = 0.0;
				Iy_z = 0.0;
				state = Manual;
			}
			/*else if (CtrlPW == 0){
				setPWM(3000,3000);
				Ix_z = 0.0;
				Iy_z = 0.0;
				state = Auto_PWOFF;
			}*/
			if (flag == 1 && coord_x != 255 && coord_y != 255){
				flag = 0;
				actCalc(coord_x, coord_y,r_x,r_y);
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

void actCalc(uint8_t posX, uint8_t posY, float r_x,float r_y){
	char buffer[50];
	float x = (posX)/8.0 - 15;
	float y = -(posY)/8.0 + 15;
	
	Tf = 1/polo;
	Kd = ganancia/polo;
	Kp = cero * ganancia / polo;
	
	e_x = ((float) r_x) - x;
	e_y = ((float) r_y) - y;
	
	// Chequear si la unidad de u es en grados
	ux = - ux_ant + e_x_ant * (Kp/Tf - 2*Kd/(Tf*Ts)) * 1/(1/Tf - 2/Ts) + e_x * (Kp/Tf + 2*Kd/(Tf*Ts)) * 1/(1/Tf - 2/Ts); 
	uy = - uy_ant + e_y_ant * (Kp/Tf - 2*Kd/(Tf*Ts)) * 1/(1/Tf - 2/Ts) + e_y * (Kp/Tf + 2*Kd/(Tf*Ts)) * 1/(1/Tf - 2/Ts); 
	
	int16_t ux_sat = 0;
	if ( (ux>-90.0) && (ux<90.0) ){
		ux_sat = (uint16_t)((4000/180) * ux + 3000);
		} else if(ux <= -90.0){
		ux_sat = 5000;
		} else {
		ux_sat = 1000;
	}
	
	int16_t uy_sat = 0;
	if ( (uy>-90.0) && (uy<90.0) ){
		uy_sat = (uint16_t)((-4000/180) * uy + 3000);
		} else if(uy <= -90.0){
		uy_sat = 5000;
	} else {
		uy_sat = 1000;
	}
	
	e_x_ant = e_x;
	e_y_ant = e_y;
	ux_ant = ux;
	uy_ant = uy;
	
	uint16_t uart_valuex =  (int)(ux+90);//_sat * (180.0 / 2000.0) - 45.0);
	uint16_t uart_valuey =  (int)(uy+90);//_sat * (180.0 / 2000.0) - 45.0);
	
	setPWM(ux_sat, uy_sat);
	snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", uart_valuex, uart_valuey, coord_x, coord_y,13);
	USART_print(buffer);
}

void procesar_mensaje(char *mensaje)
{
	// Asumiendo que el formato es "CABECERA:mensaje"
	const char *delimitador = ":";
	char *mensaje_copia = strdup(mensaje);
	char *cabecera = strtok(mensaje_copia, delimitador);
	char *numero_str = strtok(NULL, delimitador);

	if (cabecera != NULL && numero_str != NULL)
	{
		int numero = atoi(numero_str);
		// Procesa el mensaje según la cabecera
		if (strcmp(cabecera, "Polo") == 0)
		{
			polo = numero;
		}
		else if (strcmp(cabecera, "Cero") == 0)
		{
			cero = numero;
		}
		else if (strcmp(cabecera, "Ganancia") == 0)
		{
			ganancia = numero;
		}
		else if (strcmp(cabecera, "RefX") == 0)
		{
			r_x = numero;
		}
		else if (strcmp(cabecera, "RefY") == 0)
		{
			r_y = numero;
		}

	}
}
