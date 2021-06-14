/*Program 1 - 1 digit AC - IA2*/
#include <xc.h>
__PROG_CONFIG(1,0x3FE4); 	// config. uC (WDT=dis|OSC=int)
__PROG_CONFIG(2,0x1EFF); 	// config. uC (PLL (OSC*4)=off) pag. 130 pdf. PIC16LF1937

unsigned char a=0;
unsigned char cifra0, cifra1, cifra2, cifra3;
unsigned char cifra[10] = {	0xC0,	0xF9, 	0xA4, 	0xB0, 	0xFF, 	0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
unsigned char digit[5]  = {	0xFE,	0xFD, 	0xFB, 	0xF7,   0xFF};
unsigned long b;

void init (void);
void interrupt ia2(void); // functie de intreruperi globala ptr. TOATE intreruperile

void main(void)
{
 init();
 while (1)                          // bucla infinita
	 {
            cifra0 = 0;
            cifra1 = 1;
            cifra2 = 2;
            cifra3 = 3; 
            for(b=0; b<100; b++);  // do something ...
	 }
}

void init (void)
{
	OSCCON  = 0x73; // REGLEAZA OSCILATORUL PE 8 MHz (PLL dezactivat)
	ANSELA  = 0x00; // pinii portului A sa fie digitali
	TRISA   = 0x00; // tot portul A este de iesire
	ANSELB  = 0x00; // pinii portului B sa fie digitali
	TRISB   = 0x00; // tot portul B este de iesire
    PORTA   = 0xFF; // am digit Anod Comun, vreau ca digitii sa fie stinsi
	PORTB   = 0xFF; // am digit Anod Comun, vreau ca segmentele sa fie stinse
	T1CON   = 0x11; // initializarea Timer T1
                    // (Fosc/4); prescaler 1:2 => Fosc_timer1=1MHz(T=1us)
	TMR1IE  = 1;    // activez intreruperea ptr. T1
	PEIE    = 1;    // intreruperea T1 face parte din "extra intreruperi"
	GIE     = 1;    // activez Global intreruperile
}

void interrupt ia2(void)	// every 2,5ms !!!
{                           //
	if(TMR1IF)              // timerul T1 a generat intreruperea ?
	{
	 	TMR1IF = 0;    	// obligatoriu - sterg flagul Timerului care a generat intreruperea
	 	TMR1H = 0xF6;  	// 65535us-2500us=63035us=F63B (in hexa) [incarc octetul superior]
	 	TMR1L = 0x3B;  	// (2500us=2,5ms) [incarc octetul inferior al timerului T1]

		switch(a++)
			{
				case 0:
					PORTA = digit[4];		// "stinge" toti digitii
					PORTB = cifra[cifra0];	// afiseaza cifra
					PORTA = digit[0];		// activeaza digitul
					break;
				case 1:
					PORTA = digit[4];		// "stinge" toti digitii
					PORTB = cifra[cifra1];
					PORTA = digit[1];
					break;
				case 2:
					PORTA = digit[4];		// "stinge" toti digitii
					PORTB = cifra[cifra2];
					PORTA = digit[2];
					break;
				case 3:
					PORTA = digit[4];		// "stinge" toti digitii
					PORTB = cifra[cifra3];
					PORTA = digit[3];
					a=0;
					break;
				default: break;
			}
	}
}
 