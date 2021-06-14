opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16LF1937
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PCL equ 02h ;# 
# 106 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
BSR equ 08h ;# 
# 299 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
WREG equ 09h ;# 
# 318 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PORTD equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PORTE equ 010h ;# 
# 695 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PIR1 equ 011h ;# 
# 756 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PIR2 equ 012h ;# 
# 812 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PIR3 equ 013h ;# 
# 857 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR0 equ 015h ;# 
# 876 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR1 equ 016h ;# 
# 882 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR1L equ 016h ;# 
# 901 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR1H equ 017h ;# 
# 920 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
T1CON equ 018h ;# 
# 991 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
T1GCON equ 019h ;# 
# 1067 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR2 equ 01Ah ;# 
# 1086 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PR2 equ 01Bh ;# 
# 1105 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
T2CON equ 01Ch ;# 
# 1175 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CPSCON0 equ 01Eh ;# 
# 1228 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CPSCON1 equ 01Fh ;# 
# 1273 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TRISA equ 08Ch ;# 
# 1334 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TRISB equ 08Dh ;# 
# 1395 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TRISC equ 08Eh ;# 
# 1456 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TRISD equ 08Fh ;# 
# 1517 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TRISE equ 090h ;# 
# 1554 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PIE1 equ 091h ;# 
# 1615 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PIE2 equ 092h ;# 
# 1671 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PIE3 equ 093h ;# 
# 1716 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
OPTION_REG equ 095h ;# 
# 1798 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PCON equ 096h ;# 
# 1848 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
WDTCON equ 097h ;# 
# 1906 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
OSCTUNE equ 098h ;# 
# 1963 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
OSCCON equ 099h ;# 
# 2034 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
OSCSTAT equ 09Ah ;# 
# 2095 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ADRES equ 09Bh ;# 
# 2101 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ADRESL equ 09Bh ;# 
# 2120 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ADRESH equ 09Ch ;# 
# 2139 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ADCON0 equ 09Dh ;# 
# 2227 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ADCON1 equ 09Eh ;# 
# 2298 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LATA equ 010Ch ;# 
# 2359 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LATB equ 010Dh ;# 
# 2420 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LATC equ 010Eh ;# 
# 2481 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LATD equ 010Fh ;# 
# 2550 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LATE equ 0110h ;# 
# 2587 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CM1CON0 equ 0111h ;# 
# 2643 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CM1CON1 equ 0112h ;# 
# 2708 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CM2CON0 equ 0113h ;# 
# 2764 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CM2CON1 equ 0114h ;# 
# 2829 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CMOUT equ 0115h ;# 
# 2854 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
BORCON equ 0116h ;# 
# 2880 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FVRCON equ 0117h ;# 
# 2955 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
DACCON0 equ 0118h ;# 
# 3015 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
DACCON1 equ 0119h ;# 
# 3066 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SRCON0 equ 011Ah ;# 
# 3136 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SRCON1 equ 011Bh ;# 
# 3197 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
APFCON equ 011Dh ;# 
# 3252 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ANSELA equ 018Ch ;# 
# 3309 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ANSELB equ 018Dh ;# 
# 3366 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ANSELD equ 018Fh ;# 
# 3435 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ANSELE equ 0190h ;# 
# 3474 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEADR equ 0191h ;# 
# 3480 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEADRL equ 0191h ;# 
# 3499 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEADRH equ 0192h ;# 
# 3518 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEDAT equ 0193h ;# 
# 3524 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEDATL equ 0193h ;# 
# 3529 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEDATA equ 0193h ;# 
# 3561 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EEDATH equ 0194h ;# 
# 3580 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EECON1 equ 0195h ;# 
# 3641 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
EECON2 equ 0196h ;# 
# 3660 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
RCREG equ 0199h ;# 
# 3679 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TXREG equ 019Ah ;# 
# 3698 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SP1BRG equ 019Bh ;# 
# 3704 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SP1BRGL equ 019Bh ;# 
# 3709 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SPBRG equ 019Bh ;# 
# 3713 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SPBRGL equ 019Bh ;# 
# 3757 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SP1BRGH equ 019Ch ;# 
# 3762 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SPBRGH equ 019Ch ;# 
# 3794 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
RCSTA equ 019Dh ;# 
# 3855 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TXSTA equ 019Eh ;# 
# 3916 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
BAUDCON equ 019Fh ;# 
# 3967 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
WPUB equ 020Dh ;# 
# 4036 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
WPUE equ 0210h ;# 
# 4056 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPBUF equ 0211h ;# 
# 4075 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPADD equ 0212h ;# 
# 4094 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPMSK equ 0213h ;# 
# 4113 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPSTAT equ 0214h ;# 
# 4174 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPCON1 equ 0215h ;# 
# 4179 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPCON equ 0215h ;# 
# 4295 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPCON2 equ 0216h ;# 
# 4356 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
SSPCON3 equ 0217h ;# 
# 4417 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR1 equ 0291h ;# 
# 4423 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR1L equ 0291h ;# 
# 4442 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR1H equ 0292h ;# 
# 4461 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP1CON equ 0293h ;# 
# 4542 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PWM1CON equ 0294h ;# 
# 4603 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP1AS equ 0295h ;# 
# 4608 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ECCP1AS equ 0295h ;# 
# 4724 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PSTR1CON equ 0296h ;# 
# 4767 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR2 equ 0298h ;# 
# 4773 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR2L equ 0298h ;# 
# 4792 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR2H equ 0299h ;# 
# 4811 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP2CON equ 029Ah ;# 
# 4892 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PWM2CON equ 029Bh ;# 
# 4953 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP2AS equ 029Ch ;# 
# 4958 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ECCP2AS equ 029Ch ;# 
# 5074 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PSTR2CON equ 029Dh ;# 
# 5117 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPTMRS0 equ 029Eh ;# 
# 5204 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPTMRS1 equ 029Fh ;# 
# 5237 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR3 equ 0311h ;# 
# 5243 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR3L equ 0311h ;# 
# 5262 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR3H equ 0312h ;# 
# 5281 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP3CON equ 0313h ;# 
# 5362 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PWM3CON equ 0314h ;# 
# 5423 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP3AS equ 0315h ;# 
# 5428 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
ECCP3AS equ 0315h ;# 
# 5544 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PSTR3CON equ 0316h ;# 
# 5587 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR4 equ 0318h ;# 
# 5593 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR4L equ 0318h ;# 
# 5612 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR4H equ 0319h ;# 
# 5631 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP4CON equ 031Ah ;# 
# 5694 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR5 equ 031Ch ;# 
# 5700 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR5L equ 031Ch ;# 
# 5719 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCPR5H equ 031Dh ;# 
# 5738 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
CCP5CON equ 031Eh ;# 
# 5801 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
IOCBP equ 0394h ;# 
# 5870 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
IOCBN equ 0395h ;# 
# 5939 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
IOCBF equ 0396h ;# 
# 6008 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR4 equ 0415h ;# 
# 6027 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PR4 equ 0416h ;# 
# 6046 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
T4CON equ 0417h ;# 
# 6116 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TMR6 equ 041Ch ;# 
# 6135 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PR6 equ 041Dh ;# 
# 6154 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
T6CON equ 041Eh ;# 
# 6224 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDCON equ 0791h ;# 
# 6294 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDPS equ 0792h ;# 
# 6363 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDREF equ 0793h ;# 
# 6414 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDCST equ 0794h ;# 
# 6453 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDRL equ 0795h ;# 
# 6530 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDSE0 equ 0798h ;# 
# 6591 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDSE1 equ 0799h ;# 
# 6652 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDSE2 equ 079Ah ;# 
# 6713 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA0 equ 07A0h ;# 
# 6774 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA1 equ 07A1h ;# 
# 6835 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA2 equ 07A2h ;# 
# 6896 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA3 equ 07A3h ;# 
# 6957 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA4 equ 07A4h ;# 
# 7018 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA5 equ 07A5h ;# 
# 7079 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA6 equ 07A6h ;# 
# 7140 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA7 equ 07A7h ;# 
# 7201 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA8 equ 07A8h ;# 
# 7262 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA9 equ 07A9h ;# 
# 7323 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA10 equ 07AAh ;# 
# 7384 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
LCDDATA11 equ 07ABh ;# 
# 7445 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
STATUS_SHAD equ 0FE4h ;# 
# 7476 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
WREG_SHAD equ 0FE5h ;# 
# 7495 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
BSR_SHAD equ 0FE6h ;# 
# 7514 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
PCLATH_SHAD equ 0FE7h ;# 
# 7533 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR0L_SHAD equ 0FE8h ;# 
# 7552 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7571 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7590 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7609 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
STKPTR equ 0FEDh ;# 
# 7628 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TOSL equ 0FEEh ;# 
# 7647 "C:\Program Files\Microchip\xc8\v1.33\include\pic16lf1937.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_init
	FNROOT	_main
	FNCALL	intlevel1,_ia2
	global	intlevel1
	FNROOT	intlevel1
	global	_digit
	global	_cifra
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"../main.c"
	line	9

;initializer for _digit
	retlw	0FEh
	retlw	0FDh
	retlw	0FBh
	retlw	0F7h
	retlw	0FFh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	8

;initializer for _cifra
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	global	_a
	global	_b
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_b:
       ds      4

	global	_cifra0
_cifra0:
       ds      1

	global	_cifra1
_cifra1:
       ds      1

	global	_cifra2
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_cifra2:
       ds      1

	global	_cifra3
_cifra3:
       ds      1

	global	_PORTA
_PORTA	set	0xC
	global	_PORTB
_PORTB	set	0xD
	global	_T1CON
_T1CON	set	0x18
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
; #config settings
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_FCMEN$ON
__CFG_FCMEN$ON equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
	file	"Debug.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"../main.c"
	line	9
_digit:
       ds      5

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../main.c"
	line	8
_cifra:
       ds      10

	file	"Debug.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataCOMMON)
	movwf fsr0l
	movlw high(__pidataCOMMON)|80h
	movwf fsr0h
	movlw low(__pdataCOMMON)
	movwf fsr1l
	movlw high(__pdataCOMMON)
	movwf fsr1h
	movlw 05h
	fcall init_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 0Ah
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	bcf	pic14e$flags,0 ;clear compiler interrupt flag
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ia2:	; 0 bytes @ 0x0
??_ia2:	; 0 bytes @ 0x0
	ds	1
??_init:	; 0 bytes @ 0x1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        15
;!    BSS         1
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      1      13
;!    BANK0            80      1      13
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ia2 in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ia2 in BANK6
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              0 BANK0      1     1      0
;!                               _init
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ia2                                                  1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init
;!
;! _ia2 (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      1       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      1A       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      1       D       6       16.3%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               10      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0      1A      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"../main.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l665:	
	fcall	_init
	goto	l667
	line	18
	
l49:	
	line	20
	
l667:	
	clrf	(_cifra0)
	line	21
	
l669:	
	clrf	(_cifra1)
	incf	(_cifra1),f
	line	22
	
l671:	
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_cifra2)
	line	23
	
l673:	
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_cifra3)
	line	24
	
l675:	
	movlw	0
	movwf	(_b+3)
	movlw	0
	movwf	(_b+2)
	movlw	0
	movwf	(_b+1)
	movlw	0
	movwf	(_b)

	
l677:	
	movlw	0
	subwf	(_b+3),w
	skipz
	goto	u75
	movlw	0
	subwf	(_b+2),w
	skipz
	goto	u75
	movlw	0
	subwf	(_b+1),w
	skipz
	goto	u75
	movlw	064h
	subwf	(_b),w
u75:
	skipc
	goto	u71
	goto	u70
u71:
	goto	l681
u70:
	goto	l667
	
l679:	
	goto	l667
	
l50:	
	
l681:	
	movlw	01h
	addwf	(_b),f
	movlw	0
	addwfc	(_b+1),f
	movlw	0
	addwfc	(_b+2),f
	movlw	0
	addwfc	(_b+3),f
	movlw	0
	subwf	(_b+3),w
	skipz
	goto	u85
	movlw	0
	subwf	(_b+2),w
	skipz
	goto	u85
	movlw	0
	subwf	(_b+1),w
	skipz
	goto	u85
	movlw	064h
	subwf	(_b),w
u85:
	skipc
	goto	u81
	goto	u80
u81:
	goto	l681
u80:
	goto	l667
	
l51:	
	goto	l667
	line	25
	
l52:	
	line	18
	goto	l667
	
l53:	
	line	26
	
l54:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 28 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	28
global __ptext1
__ptext1:	;psect for function _init
psect	text1
	file	"../main.c"
	line	28
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 14
; Regs used in _init: [wreg+status,2]
	line	30
	
l595:	
	movlw	(073h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	31
	
l597:	
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	32
	
l599:	
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	33
	
l601:	
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	34
	
l603:	
	movlb 1	; select bank1
	clrf	(141)^080h	;volatile
	line	35
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	36
	movlw	(0FFh)
	movwf	(13)	;volatile
	line	37
	movlw	(011h)
	movwf	(24)	;volatile
	line	39
	
l605:	
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	40
	
l607:	
	bsf	(94/8),(94)&7	;volatile
	line	41
	
l609:	
	bsf	(95/8),(95)&7	;volatile
	line	42
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_ia2

;; *************** function _ia2 *****************
;; Defined at:
;;		line 44 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"../main.c"
	line	44
	global	__size_of_ia2
	__size_of_ia2	equ	__end_of_ia2-_ia2
	
_ia2:	
;incstack = 0
	opt	stack 14
; Regs used in _ia2: [wreg-fsr1h+status,2+status,0]
psect	intentry
	bsf	pic14e$flags,0 ;set compiler interrupt flag
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ia2+0)
	line	46
	
i1l629:	
	btfss	(136/8),(136)&7	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l68
u6_20:
	line	48
	
i1l631:	
	bcf	(136/8),(136)&7	;volatile
	line	49
	
i1l633:	
	movlw	(0F6h)
	movwf	(23)	;volatile
	line	50
	movlw	(03Bh)
	movwf	(22)	;volatile
	line	52
	goto	i1l663
	line	54
	
i1l62:	
	line	55
	
i1l635:	
	movf	0+(_digit)+04h,w
	movwf	(12)	;volatile
	line	56
	
i1l637:	
	movf	(_cifra0),w
	addlw	_cifra&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	57
	
i1l639:	
	movf	(_digit),w
	movwf	(12)	;volatile
	line	58
	goto	i1l68
	line	59
	
i1l64:	
	line	60
	
i1l641:	
	movf	0+(_digit)+04h,w
	movwf	(12)	;volatile
	line	61
	
i1l643:	
	movf	(_cifra1),w
	addlw	_cifra&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	62
	
i1l645:	
	movf	0+(_digit)+01h,w
	movwf	(12)	;volatile
	line	63
	goto	i1l68
	line	64
	
i1l65:	
	line	65
	
i1l647:	
	movf	0+(_digit)+04h,w
	movwf	(12)	;volatile
	line	66
	
i1l649:	
	movf	(_cifra2),w
	addlw	_cifra&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	67
	
i1l651:	
	movf	0+(_digit)+02h,w
	movwf	(12)	;volatile
	line	68
	goto	i1l68
	line	69
	
i1l66:	
	line	70
	
i1l653:	
	movf	0+(_digit)+04h,w
	movwf	(12)	;volatile
	line	71
	
i1l655:	
	movf	(_cifra3),w
	addlw	_cifra&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	72
	
i1l657:	
	movf	0+(_digit)+03h,w
	movwf	(12)	;volatile
	line	73
	
i1l659:	
	clrf	(_a)
	line	74
	goto	i1l68
	line	75
	
i1l67:	
	goto	i1l68
	line	76
	
i1l661:	
	goto	i1l68
	line	52
	
i1l61:	
	
i1l663:	
	movf	(_a),w
	incf	(_a),f
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l635
	xorlw	1^0	; case 1
	skipnz
	goto	i1l641
	xorlw	2^1	; case 2
	skipnz
	goto	i1l647
	xorlw	3^2	; case 3
	skipnz
	goto	i1l653
	goto	i1l68
	opt asmopt_on

	line	76
	
i1l63:	
	goto	i1l68
	line	77
	
i1l60:	
	line	78
	
i1l68:	
	movf	(??_ia2+0),w
	movwf	btemp+1
	bcf	pic14e$flags,0 ;clear compiler interrupt flag
	retfie
	opt stack 0
GLOBAL	__end_of_ia2
	__end_of_ia2:
	signat	_ia2,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	pic14e$flags
	pic14e$flags	set btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
