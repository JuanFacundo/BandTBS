#include <stdlib.h>
#include <stdio.h>
#define F_CPU 16000000UL
#define BAUD 9600
#define MYUBRR F_CPU/16/BAUD-1
#include "UART.h"
#include <avr/io.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

void procesar_mensaje(const char *mensaje);

int main(void)
{
	USART_init(MYUBRR);

	char buffer[50];
	int indice = 0;

	while (1)
	{
		// Lee caracteres mientras estén disponibles
		if (USART_available())
		{
			char c = USART_receive();
			
			if (c == '\n')
			{
				buffer[indice] = '\0';  
				procesar_mensaje(buffer);
				indice = 0;  
			}
			else
			{
				buffer[indice++] = c;
			}
		}
	}
	
	return 0;
}

void procesar_mensaje(const char *mensaje)
{
	// Asumiendo que el formato es "CABECERA:mensaje"
	const char *delimitador = ":";
	char *mensaje_copia = strdup(mensaje);
	char *cabecera = strtok(mensaje_copia, delimitador);
	char *numero_str = strtok(NULL, delimitador);
	char buffer[50];

	if (cabecera != NULL && numero_str != NULL)
	{
		int numero = atoi(numero_str);
		// Procesa el mensaje según la cabecera
		if (strcmp(cabecera, "Kp") == 0)
		{
			//Kp = numero;
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 1, 1,1,1,numero);
			USART_print(buffer);
		}
		else if (strcmp(cabecera, "Ki") == 0)
		{
			//Ki = numero;
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 2, 2,2,2,numero);
			USART_print(buffer);
		}
		else if (strcmp(cabecera, "Kd") == 0)
		{
			//Kd = numero;
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 2, 2,2,2,numero);
			USART_print(buffer);
		}
		else if (strcmp(cabecera, "RefX") == 0)
		{
			//RefX = numero;
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 2, 2,2,2,numero);
			USART_print(buffer);
		}
		else if (strcmp(cabecera, "RefY") == 0)
		{
			//RefY = numero;
			snprintf(buffer, sizeof(buffer), "[%u=%u]{\"x\":%d,\"y\":%d,\"r\":%d}\n", 2, 2,2,2,numero);
			USART_print(buffer);
		}

	}
}

