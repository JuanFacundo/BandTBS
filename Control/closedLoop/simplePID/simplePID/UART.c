#include "UART.h"
#include <avr/io.h>
#include <stdbool.h>


void USART_init(unsigned int ubrr)
{
	// Configurar la tasa
	UBRR0H = (unsigned char)(ubrr >> 8);
	UBRR0L = (unsigned char)ubrr;

	// Habilitar transmision y recepcion
	UCSR0B = (1 << RXEN0) | (1 << TXEN0);

	// Configurar el formato de los datos: 8 bits de datos, 1 bit de stop
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
}

void USART_transmit(unsigned char data)
{
	// Esperar hasta que el buffer de transmision este vacio
	while (!(UCSR0A & (1 << UDRE0)));

	// Poner los datos en el buffer y enviarlos
	UDR0 = data;
}

void USART_print(const char *str)
{
	while (*str)
	{
		USART_transmit(*str++);
	}
}

// Verifica si hay datos disponibles para la recepción
int USART_available() 
{
	// Si el registro de estado de la UART indica que hay datos disponibles para leer
	// (el bit RXC está en 1), devuelve true. De lo contrario, devuelve false.
	return (UCSR0A & (1 << RXC0));
}

// Lee un byte de datos de la UART
char USART_receive() 
{
	// Espera a que los datos estén listos para la recepción
	while (!(UCSR0A & (1 << RXC0)));
	// Lee y devuelve el byte de datos recibido
	return UDR0;
}
