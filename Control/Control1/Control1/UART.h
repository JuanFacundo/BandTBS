#ifndef UART_H_
#define UART_H_
#include <avr/io.h>


void USART_init(unsigned int ubrr);

void USART_transmit(unsigned char data);

void USART_print(const char *str);

int USART_available();

char USART_receive();

void USART_receive_string(char *buffer);



#endif /* UART_H_ */