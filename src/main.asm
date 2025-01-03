;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer2int
	.globl _interrupt1int
	.globl _interrupt0int
	.globl _timer0int
	.globl _main
	.globl _Timer2Init
	.globl _Timer0Init
	.globl _delay
	.globl _Delay1ms
	.globl _T2R
	.globl _P5_5
	.globl _P5_4
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _CLK_DIV
	.globl _P5
	.globl _P5M0
	.globl _P5M1
	.globl _P3M0
	.globl _P3M1
	.globl _IE2
	.globl _T2H
	.globl _T2L
	.globl _AUXR
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _IS_POWER_DOWN
	.globl _run
	.globl _time_state
	.globl _tone
	.globl _time1
	.globl _time
	.globl _t
	.globl _num
	.globl _count1
	.globl _count
	.globl _i
	.globl _b
	.globl _a
	.globl _ram
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
_AUXR	=	0x008e
_T2L	=	0x00d6
_T2H	=	0x00d7
_IE2	=	0x00af
_P3M1	=	0x00b1
_P3M0	=	0x00b2
_P5M1	=	0x00c9
_P5M0	=	0x00ca
_P5	=	0x00c8
_CLK_DIV	=	0x0097
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_P5_4	=	0x00cc
_P5_5	=	0x00cd
_T2R	=	0x0093
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_ram::
	.ds 70
_a::
	.ds 1
_b::
	.ds 1
_i::
	.ds 1
_count::
	.ds 1
_count1::
	.ds 1
_num::
	.ds 1
_t::
	.ds 1
_time::
	.ds 2
_time1::
	.ds 2
_tone::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_time_state::
	.ds 1
_run::
	.ds 1
_IS_POWER_DOWN::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_interrupt0int
	.ds	5
	ljmp	_timer0int
	.ds	5
	ljmp	_interrupt1int
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_timer2int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:27: unsigned char ram[70] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	mov	_ram,#0x00
	mov	(_ram + 0x0001),#0x00
	mov	(_ram + 0x0002),#0x00
	mov	(_ram + 0x0003),#0x00
	mov	(_ram + 0x0004),#0x00
	mov	(_ram + 0x0005),#0x00
	mov	(_ram + 0x0006),#0x00
	mov	(_ram + 0x0007),#0x00
	mov	(_ram + 0x0008),#0x00
	mov	(_ram + 0x0009),#0x00
	mov	(_ram + 0x000a),#0x00
	mov	(_ram + 0x000b),#0x00
	mov	(_ram + 0x000c),#0x00
	mov	(_ram + 0x000d),#0x00
	mov	(_ram + 0x000e),#0x00
	mov	(_ram + 0x000f),#0x00
	mov	(_ram + 0x0010),#0x00
	mov	(_ram + 0x0011),#0x00
	mov	(_ram + 0x0012),#0x00
	mov	(_ram + 0x0013),#0x00
	mov	(_ram + 0x0014),#0x00
	mov	(_ram + 0x0015),#0x00
	mov	(_ram + 0x0016),#0x00
	mov	(_ram + 0x0017),#0x00
	mov	(_ram + 0x0018),#0x00
	mov	(_ram + 0x0019),#0x00
	mov	(_ram + 0x001a),#0x00
	mov	(_ram + 0x001b),#0x00
	mov	(_ram + 0x001c),#0x00
	mov	(_ram + 0x001d),#0x00
	mov	(_ram + 0x001e),#0x00
	mov	(_ram + 0x001f),#0x00
	mov	(_ram + 0x0020),#0x00
	mov	(_ram + 0x0021),#0x00
	mov	(_ram + 0x0022),#0x00
	mov	(_ram + 0x0023),#0x00
	mov	(_ram + 0x0024),#0x00
	mov	(_ram + 0x0025),#0x00
	mov	(_ram + 0x0026),#0x00
	mov	(_ram + 0x0027),#0x00
	mov	(_ram + 0x0028),#0x00
	mov	(_ram + 0x0029),#0x00
	mov	(_ram + 0x002a),#0x00
	mov	(_ram + 0x002b),#0x00
	mov	(_ram + 0x002c),#0x00
	mov	(_ram + 0x002d),#0x00
	mov	(_ram + 0x002e),#0x00
	mov	(_ram + 0x002f),#0x00
	mov	(_ram + 0x0030),#0x00
	mov	(_ram + 0x0031),#0x00
	mov	(_ram + 0x0032),#0x00
	mov	(_ram + 0x0033),#0x00
	mov	(_ram + 0x0034),#0x00
	mov	(_ram + 0x0035),#0x00
	mov	(_ram + 0x0036),#0x00
	mov	(_ram + 0x0037),#0x00
	mov	(_ram + 0x0038),#0x00
	mov	(_ram + 0x0039),#0x00
	mov	(_ram + 0x003a),#0x00
	mov	(_ram + 0x003b),#0x00
	mov	(_ram + 0x003c),#0x00
	mov	(_ram + 0x003d),#0x00
	mov	(_ram + 0x003e),#0x00
	mov	(_ram + 0x003f),#0x00
	mov	(_ram + 0x0040),#0x00
	mov	(_ram + 0x0041),#0x00
	mov	(_ram + 0x0042),#0x00
	mov	(_ram + 0x0043),#0x00
	mov	(_ram + 0x0044),#0x00
	mov	(_ram + 0x0045),#0x00
;	main.c:29: unsigned char b = 0;
	mov	_b,#0x00
;	main.c:31: unsigned char count = 0;
	mov	_count,#0x00
;	main.c:32: unsigned char count1 = 0;
	mov	_count1,#0x00
;	main.c:33: unsigned char num = 0;
	mov	_num,#0x00
;	main.c:34: unsigned char t = 100;
	mov	_t,#0x64
;	main.c:35: unsigned int time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	main.c:36: unsigned int time1 = 0;
	mov	_time1,a
	mov	(_time1 + 1),a
;	main.c:42: unsigned char tone = 0;
;	1-genFromRTrack replaced	mov	_tone,#0x00
	mov	_tone,a
;	main.c:37: __bit time_state = 0;
;	assignBit
	clr	_time_state
;	main.c:38: __bit run = 0;
;	assignBit
	clr	_run
;	main.c:39: __bit IS_POWER_DOWN = 0;
;	assignBit
	clr	_IS_POWER_DOWN
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay1ms'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:45: void Delay1ms()		//@11.0592MHz
;	-----------------------------------------
;	 function Delay1ms
;	-----------------------------------------
_Delay1ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:48: __asm__("nop");
	nop
;	main.c:49: i = 11;
	mov	r7,#0x0b
;	main.c:50: j = 190;
	mov	r6,#0xbe
;	main.c:53: while (--j);
00101$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00101$
;	main.c:54: } while (--i);
	mov	a,r7
	dec	a
	mov	r5,a
	mov	r7,a
	jnz	00101$
;	main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;z                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:57: void delay(unsigned int a)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:60: for(z=0;z<=a;z++)
	mov	r4,#0x00
	mov	r5,#0x00
00102$:
;	main.c:62: Delay1ms();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Delay1ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:60: for(z=0;z<=a;z++)
	inc	r4
	cjne	r4,#0x00,00111$
	inc	r5
00111$:
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00102$
;	main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0Init'
;------------------------------------------------------------
;	main.c:65: void Timer0Init()		//5ms@11.0592MHz
;	-----------------------------------------
;	 function Timer0Init
;	-----------------------------------------
_Timer0Init:
;	main.c:67: AUXR &= 0x7F;		//Timer clock is 12T mode
	anl	_AUXR,#0x7f
;	main.c:68: TMOD &= 0xF0;		//Set timer work mode
	anl	_TMOD,#0xf0
;	main.c:69: TL0 = 0xFE;		//Initial timer value
	mov	_TL0,#0xfe
;	main.c:70: TH0 = 0xF0;		//Initial timer value
	mov	_TH0,#0xf0
;	main.c:71: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:72: EX0 = 0;
;	assignBit
	clr	_EX0
;	main.c:73: EX1 = 0;	
;	assignBit
	clr	_EX1
;	main.c:74: IT0 = 0;
;	assignBit
	clr	_IT0
;	main.c:75: IT1 = 0;
;	assignBit
	clr	_IT1
;	main.c:76: EA = 1;
;	assignBit
	setb	_EA
;	main.c:77: ET0 = 1;
;	assignBit
	setb	_ET0
;	main.c:81: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2Init'
;------------------------------------------------------------
;	main.c:83: void Timer2Init()		//1ms@11.0592MHz
;	-----------------------------------------
;	 function Timer2Init
;	-----------------------------------------
_Timer2Init:
;	main.c:85: AUXR |= 0x04;		//Timer clock is 1T mode
	mov	r6,_AUXR
	orl	ar6,#0x04
	mov	_AUXR,r6
;	main.c:86: T2L = 0xCD;		//Initial timer value
	mov	_T2L,#0xcd
;	main.c:87: T2H = 0xD4;		//Initial timer value
	mov	_T2H,#0xd4
;	main.c:88: IE2 |= 0x04;
	mov	r6,_IE2
	orl	ar6,#0x04
	mov	_IE2,r6
;	main.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:90: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:92: Timer0Init();
	lcall	_Timer0Init
;	main.c:93: Timer2Init();
	lcall	_Timer2Init
;	main.c:95: tone = 1;
	mov	_tone,#0x01
;	main.c:96: AUXR = 0x14;
	mov	_AUXR,#0x14
;	main.c:97: P5 = 0xFF;
	mov	_P5,#0xff
;	main.c:98: P5 = 0x00;
	mov	_P5,#0x00
;	main.c:99: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	main.c:100: P5 = 0xFF;
	mov	_P5,#0xff
;	main.c:101: AUXR = 0x04;
	mov	_AUXR,#0x04
;	main.c:102: speaker = 1;
;	assignBit
	setb	_P3_0
;	main.c:104: run = 0;
;	assignBit
	clr	_run
;	main.c:105: count = 0;
	mov	_count,#0x00
;	main.c:106: count1 = 0;
	mov	_count1,#0x00
;	main.c:107: IS_POWER_DOWN = 0;
;	assignBit
	clr	_IS_POWER_DOWN
;	main.c:109: for(i=0;i<70;i++)
	mov	_i,#0x00
00145$:
;	main.c:111: ram[i] = 0;
	mov	a,_i
	add	a,#_ram
	mov	r0,a
	mov	@r0,#0x00
;	main.c:109: for(i=0;i<70;i++)
	inc	_i
	mov	a,#0x100 - 0x46
	add	a,_i
	jnc	00145$
;	main.c:114: while(1)
00143$:
;	main.c:118: if (button1 == 0 && button2 == 0) // both buttons
	jb	_P3_2,00108$
	jb	_P3_3,00108$
;	main.c:120: tone = 5;
	mov	_tone,#0x05
;	main.c:121: AUXR = 0x14;
	mov	_AUXR,#0x14
	sjmp	00109$
00108$:
;	main.c:125: if (button1 == 0) //one button 
	jb	_P3_2,00105$
;	main.c:127: tone = 1;
	mov	_tone,#0x01
;	main.c:128: AUXR = 0x14;
	mov	_AUXR,#0x14
	sjmp	00109$
00105$:
;	main.c:130: else if (button2 == 0) //other button
	jb	_P3_3,00109$
;	main.c:132: tone = 3;
	mov	_tone,#0x03
;	main.c:133: AUXR = 0x14;
	mov	_AUXR,#0x14
00109$:
;	main.c:136: if (button1 == 1 && button2 == 1)
	jnb	_P3_2,00115$
	jnb	_P3_3,00115$
;	main.c:138: AUXR = 0x04;
	mov	_AUXR,#0x04
;	main.c:139: speaker = 1;
;	assignBit
	setb	_P3_0
00115$:
;	main.c:145: if (led1 == 0 && led2 == 0) // both buttons
	jb	_P5_4,00122$
	jb	_P5_5,00122$
;	main.c:147: tone = 5;
	mov	_tone,#0x05
;	main.c:148: AUXR = 0x14;
	mov	_AUXR,#0x14
	sjmp	00123$
00122$:
;	main.c:152: if (led1 == 0) //one button 
	jb	_P5_4,00119$
;	main.c:154: tone = 1;
	mov	_tone,#0x01
;	main.c:155: AUXR = 0x14;
	mov	_AUXR,#0x14
	sjmp	00123$
00119$:
;	main.c:157: else if (led2 == 0) //other button
	jb	_P5_5,00123$
;	main.c:159: tone = 3;
	mov	_tone,#0x03
;	main.c:160: AUXR = 0x14;
	mov	_AUXR,#0x14
00123$:
;	main.c:165: if (time > 65530)
	clr	c
	mov	a,#0xfa
	subb	a,_time
	mov	a,#0xff
	subb	a,(_time + 1)
	jnc	00126$
;	main.c:168: time1++;
	inc	_time1
	clr	a
	cjne	a,_time1,00249$
	inc	(_time1 + 1)
00249$:
00126$:
;	main.c:171: if (time1 > 200)
	clr	c
	mov	a,#0xc8
	subb	a,_time1
	clr	a
	subb	a,(_time1 + 1)
	jnc	00128$
;	main.c:173: IS_POWER_DOWN = 1;
;	assignBit
	setb	_IS_POWER_DOWN
;	main.c:174: time=0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	main.c:175: time1=0;
	mov	_time1,a
	mov	(_time1 + 1),a
	sjmp	00129$
00128$:
;	main.c:180: IS_POWER_DOWN = 0;
;	assignBit
	clr	_IS_POWER_DOWN
00129$:
;	main.c:182: if (IS_POWER_DOWN)
	jnb	_IS_POWER_DOWN,00132$
;	main.c:184: EX0 = 1;
;	assignBit
	setb	_EX0
;	main.c:185: EX1 = 1;
;	assignBit
	setb	_EX1
;	main.c:188: for(i=0;i<6;i++)
	mov	_i,#0x00
00147$:
;	main.c:190: P5 = 0x00;
	mov	_P5,#0x00
;	main.c:191: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	main.c:192: P5 = 0xFF;
	mov	_P5,#0xff
;	main.c:193: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	main.c:188: for(i=0;i<6;i++)
	inc	_i
	mov	a,#0x100 - 0x06
	add	a,_i
	jnc	00147$
;	main.c:196: IS_POWER_DOWN = 1;
;	assignBit
	setb	_IS_POWER_DOWN
;	main.c:197: PCON = 0x02;
	mov	_PCON,#0x02
;	main.c:198: __asm__("nop");
	nop
;	main.c:199: __asm__("nop");
	nop
;	main.c:200: __asm__("nop");
	nop
;	main.c:201: __asm__("nop");
	nop
00132$:
;	main.c:203: if (button1 == 0)
	jb	_P3_2,00134$
;	main.c:205: time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	main.c:206: time1 = 0;	
	mov	_time1,a
	mov	(_time1 + 1),a
00134$:
;	main.c:208: if (button2 == 0)
	jb	_P3_3,00136$
;	main.c:210: time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	main.c:211: time1 = 0;	
	mov	_time1,a
	mov	(_time1 + 1),a
00136$:
;	main.c:213: if (led1 == 1 && led2 == 1)
	jnb	_P5_4,00138$
	jnb	_P5_5,00138$
;	main.c:215: AUXR = 0x04;
	mov	_AUXR,#0x04
00138$:
;	main.c:220: P5 = input << 2;
	mov	a,_P3
	mov	r7,a
	add	a,acc
	mov	_P5,a
	mov	a,_P5
	add	a,acc
	mov	_P5,a
;	main.c:224: time++;
	inc	_time
	clr	a
	cjne	a,_time,00257$
	inc	(_time + 1)
00257$:
;	main.c:227: }
	ljmp	00143$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0int'
;------------------------------------------------------------
;	main.c:228: void timer0int() __interrupt 1
;	-----------------------------------------
;	 function timer0int
;	-----------------------------------------
_timer0int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:230: TL0 = 0xFE;		//Initial timer value
	mov	_TL0,#0xfe
;	main.c:231: TH0 = 0xF0;		//Initial timer value
	mov	_TH0,#0xf0
;	main.c:232: b=b+1;
	mov	a,_b
	inc	a
;	main.c:233: if (b > 24)
	mov  _b,a
	add	a,#0xff - 0x18
	jnc	00114$
;	main.c:236: if (run == 0)
	jb	_run,00104$
;	main.c:240: if (count > 69)
	mov	a,_count
	add	a,#0xff - 0x45
	jnc	00102$
;	main.c:242: run = 1;
;	assignBit
	setb	_run
;	main.c:243: count1 = 0;
	mov	_count1,#0x00
;	main.c:245: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
00102$:
;	main.c:251: ram[count] = input;
	mov	a,_count
	add	a,#_ram
	mov	r0,a
	mov	@r0,_P3
;	main.c:252: count=count+1;
	mov	a,_count
	mov	r7,a
	inc	a
	mov	_count,a
00104$:
;	main.c:255: if (run == 1)
	jnb	_run,00109$
;	main.c:258: P5 = ram[count1] << 2;
	mov	a,_count1
	add	a,#_ram
	mov	r1,a
	mov	a,@r1
	add	a,acc
	mov	_P5,a
	mov	a,_P5
	add	a,acc
	mov	_P5,a
;	main.c:259: if (count1 > 69)
	mov	a,_count1
	add	a,#0xff - 0x45
	jnc	00107$
;	main.c:261: for(i=0;i<70;i++)
	mov	_i,#0x00
00112$:
;	main.c:263: ram[i] = 0;
	mov	a,_i
	add	a,#_ram
	mov	r0,a
	mov	@r0,#0x00
;	main.c:261: for(i=0;i<70;i++)
	inc	_i
	mov	a,#0x100 - 0x46
	add	a,_i
	jnc	00112$
;	main.c:266: count1 = 0;
	mov	_count1,#0x00
;	main.c:267: count = 0;
	mov	_count,#0x00
;	main.c:268: run = 0;
;	assignBit
	clr	_run
00107$:
;	main.c:276: count1=count1+1;
	mov	a,_count1
	mov	r7,a
	inc	a
	mov	_count1,a
00109$:
;	main.c:278: b = 0;
	mov	_b,#0x00
00114$:
;	main.c:281: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt0int'
;------------------------------------------------------------
;	main.c:282: void interrupt0int() __interrupt 0 __using 1
;	-----------------------------------------
;	 function interrupt0int
;	-----------------------------------------
_interrupt0int:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
;	main.c:284: IS_POWER_DOWN = 0;
;	assignBit
	clr	_IS_POWER_DOWN
;	main.c:289: EX1 = 0;
;	main.c:293: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt1int'
;------------------------------------------------------------
;	main.c:294: void interrupt1int() __interrupt 2 __using 1
;	-----------------------------------------
;	 function interrupt1int
;	-----------------------------------------
_interrupt1int:
;	main.c:296: IS_POWER_DOWN = 0;
;	assignBit
	clr	_IS_POWER_DOWN
;	main.c:301: EX1 = 0;
;	main.c:303: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2int'
;------------------------------------------------------------
;	main.c:304: void timer2int() __interrupt 12 __using 1
;	-----------------------------------------
;	 function timer2int
;	-----------------------------------------
_timer2int:
	push	acc
	push	psw
	mov	psw,#0x08
;	main.c:306: T2L = 0xCD;		//Initial timer value
	mov	_T2L,#0xcd
;	main.c:307: T2H = 0xD4;	
	mov	_T2H,#0xd4
;	main.c:308: num=num+1;
	mov	a,_num
	inc	a
	mov	_num,a
;	main.c:309: if (num > tone)
	clr	c
	mov	a,_tone
	subb	a,_num
	jnc	00103$
;	main.c:311: num = 0;
	mov	_num,#0x00
;	main.c:312: speaker = !speaker;
	cpl	_P3_0
00103$:
;	main.c:314: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
