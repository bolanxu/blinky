#include <at89x52.h>

__sfr __at 0x8E AUXR;
__sfr __at 0xD6 T2L;
__sfr __at 0xD7 T2H;
__sfr __at 0xAF IE2;
__sfr __at 0xB1 P3M1;
__sfr __at 0xB2 P3M0;
__sfr __at 0xC9 P5M1;
__sfr __at 0xCA P5M0;
__sfr __at 0xC8 P5;
__sfr __at 0x97 CLK_DIV;
__sbit __at 0xCC P5_4;
__sbit __at 0xCD P5_5;
__sbit __at 0x93 T2R;

#define input P3

#define speaker P3_0 

#define button1 P3_2 
#define button2 P3_3 

#define led1 P5_4 
#define led2 P5_5

unsigned char ram[70] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
unsigned char a;
unsigned char b = 0;
unsigned char i;
unsigned char count = 0;
unsigned char count1 = 0;
unsigned char num = 0;
unsigned char t = 100;
unsigned int time = 0;
unsigned int time1 = 0;
__bit time_state = 0;
__bit run = 0;
__bit IS_POWER_DOWN = 0;


unsigned char tone = 0;


void Delay1ms()		//@11.0592MHz
{
	unsigned char i, j;
	__asm__("nop");
	i = 11;
	j = 190;
	do
	{
		while (--j);
	} while (--i);
}

void delay(unsigned int a)
{
	unsigned int z;
	for(z=0;z<=a;z++)
	{
		Delay1ms();
   	}
}
void Timer0Init()		//5ms@11.0592MHz
{
	AUXR &= 0x7F;		//Timer clock is 12T mode
	TMOD &= 0xF0;		//Set timer work mode
	TL0 = 0xFE;		//Initial timer value
	TH0 = 0xF0;		//Initial timer value
	TF0 = 0;
	EX0 = 0;
	EX1 = 0;	
	IT0 = 0;
	IT1 = 0;
	EA = 1;
	ET0 = 1;
	//EX0 = 0;
	//EX1 = 0;
	//EX1 = 1;
	TR0 = 1;
}
void Timer2Init()		//1ms@11.0592MHz
{
	AUXR |= 0x04;		//Timer clock is 1T mode
	T2L = 0xCD;		//Initial timer value
	T2H = 0xD4;		//Initial timer value
	IE2 |= 0x04;
}
void main()
{
	Timer0Init();
	Timer2Init();

	tone = 1;
	AUXR = 0x14;
	P5 = 0xFF;
	P5 = 0x00;
	delay(1000);
	P5 = 0xFF;
	AUXR = 0x04;
	speaker = 1;
	
	run = 0;
	count = 0;
	count1 = 0;
	IS_POWER_DOWN = 0;
	
	for(i=0;i<70;i++)
	{
		ram[i] = 0;
	}

	while(1)
	{
		if (run == 0)
		{
			if (button1 == 0 && button2 == 0) // both buttons
			{
				tone = 5;
				AUXR = 0x14;
			}
			else
			{
				if (button1 == 0) //one button 
				{
					tone = 1;
					AUXR = 0x14;
				}
				else if (button2 == 0) //other button
				{
					tone = 3;
					AUXR = 0x14;
				}
			}
			if (button1 == 1 && button2 == 1)
			{
				AUXR = 0x04;
				speaker = 1;
				
			}

	//--------------------------------------------------LED start 
		}
		if (led1 == 0 && led2 == 0) // both buttons
			{
				tone = 5;
				AUXR = 0x14;
			}
			else
			{
				if (led1 == 0) //one button 
				{
					tone = 1;
					AUXR = 0x14;
				}
				else if (led2 == 0) //other button
				{
					tone = 3;
					AUXR = 0x14;
				}
			}


		if (time > 65530)
		{
			//IS_POWER_DOWN = 1;
			time1++;
			
		}
		if (time1 > 200)
		{
			IS_POWER_DOWN = 1;
			time=0;
			time1=0;
			
		}
		else
		{
			IS_POWER_DOWN = 0;
		}
		if (IS_POWER_DOWN)
		{
			EX0 = 1;
			EX1 = 1;

			//P5 = 0xFF;
			for(i=0;i<6;i++)
			{
				P5 = 0x00;
				delay(500);
				P5 = 0xFF;
				delay(500);
			}

			IS_POWER_DOWN = 1;
			PCON = 0x02;
			__asm__("nop");
			__asm__("nop");
			__asm__("nop");
			__asm__("nop");
		}
		if (button1 == 0)
		{
			time = 0;
			time1 = 0;	
		}	
		if (button2 == 0)
		{
			time = 0;
			time1 = 0;	
		}	
			if (led1 == 1 && led2 == 1)
			{
				AUXR = 0x04;
			}
				
			if (run == 0)
			{
				P5 = input << 2;
			}
		//if (time_state)
		//{
		time++;
		//}
	}
}
void timer0int() __interrupt 1
{
	TL0 = 0xFE;		//Initial timer value
	TH0 = 0xF0;		//Initial timer value
	b=b+1;
	if (b > 24)
	{
		
		if (run == 0)
		{
			//time++;
			//AUXR = 0x04;
			if (count > 69)
			{
				run = 1;
				count1 = 0;
				//AUXR = 0x54;		//Timer2 start run
				delay(1000);
				//time = 0;
				//time1 = 0;
				//AUXR = 0x44;
				//EX0 = 1;
			}
			ram[count] = input;
			count=count+1;
		}
		//speaker = 0;
		if (run == 1)
		{
			//AUXR = 0x14;
			P5 = ram[count1] << 2;
			if (count1 > 69)
			{
				for(i=0;i<70;i++)
				{
					ram[i] = 0;
				}

				count1 = 0;
				count = 0;
				run = 0;
				//EX0 = 1;
				//EX1 = 1;
				//IS_POWER_DOWN = 1;
				//EX0 = 0;
				//EX1 = 0;
			}

			count1=count1+1;
		}
		b = 0;

	}
}
void interrupt0int() __interrupt 0 __using 1
{
	IS_POWER_DOWN = 0;
	if (IS_POWER_DOWN)
	{
		while(button1 == 0);
		EX0 = 0;
		EX1 = 0;
	}

	//P5 = 0x00;
}
void interrupt1int() __interrupt 2 __using 1
{
	IS_POWER_DOWN = 0;
	if (IS_POWER_DOWN)
	{
		while(button2 == 0);
		EX0 = 0;
		EX1 = 0;
	}
}
void timer2int() __interrupt 12 __using 1
{
	T2L = 0xCD;		//Initial timer value
	T2H = 0xD4;	
	num=num+1;
	if (num > tone)
	{
		num = 0;
		speaker = !speaker;
	}
}

