#ifndef ADC_H
#define ADC_H

#include <avr/io.h>

void ADC_init(void);
uint16_t ADC_read(uint8_t ch);

#endif
