#include <stdio.h>
#include <stdint.h>

int i=0;
int j;

char buff[30];
char buff2[30] = {0};

typedef struct _clock
{
	uint8_t tick;
	uint8_t sec;
	uint8_t min;
	uint8_t hour;
} clock_t;

clock_t clock = {0};
clock_t clock2;

int main(void)
{

	clock_t clock3;	

	printf("Hello\n");

	return 0;

}
