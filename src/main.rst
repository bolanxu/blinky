                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer2int
                                     12 	.globl _interrupt1int
                                     13 	.globl _interrupt0int
                                     14 	.globl _timer0int
                                     15 	.globl _main
                                     16 	.globl _Timer2Init
                                     17 	.globl _Timer0Init
                                     18 	.globl _delay
                                     19 	.globl _Delay1ms
                                     20 	.globl _T2R
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _FL
                                     30 	.globl _P
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ET2
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _T2EX
                                     93 	.globl _T2
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _CLK_DIV
                                    119 	.globl _P5
                                    120 	.globl _P5M0
                                    121 	.globl _P5M1
                                    122 	.globl _P3M0
                                    123 	.globl _P3M1
                                    124 	.globl _IE2
                                    125 	.globl _T2H
                                    126 	.globl _T2L
                                    127 	.globl _AUXR
                                    128 	.globl _B
                                    129 	.globl _A
                                    130 	.globl _ACC
                                    131 	.globl _PSW
                                    132 	.globl _TH2
                                    133 	.globl _TL2
                                    134 	.globl _RCAP2H
                                    135 	.globl _RCAP2L
                                    136 	.globl _T2MOD
                                    137 	.globl _T2CON
                                    138 	.globl _IP
                                    139 	.globl _P3
                                    140 	.globl _IE
                                    141 	.globl _P2
                                    142 	.globl _SBUF
                                    143 	.globl _SCON
                                    144 	.globl _P1
                                    145 	.globl _TH1
                                    146 	.globl _TH0
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TMOD
                                    150 	.globl _TCON
                                    151 	.globl _PCON
                                    152 	.globl _DPH
                                    153 	.globl _DPL
                                    154 	.globl _SP
                                    155 	.globl _P0
                                    156 	.globl _IS_POWER_DOWN
                                    157 	.globl _run
                                    158 	.globl _time_state
                                    159 	.globl _tone
                                    160 	.globl _time1
                                    161 	.globl _time
                                    162 	.globl _t
                                    163 	.globl _num
                                    164 	.globl _count1
                                    165 	.globl _count
                                    166 	.globl _i
                                    167 	.globl _b
                                    168 	.globl _a
                                    169 	.globl _ram
                                    170 ;--------------------------------------------------------
                                    171 ; special function registers
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0	=	0x0080
                           000081   176 _SP	=	0x0081
                           000082   177 _DPL	=	0x0082
                           000083   178 _DPH	=	0x0083
                           000087   179 _PCON	=	0x0087
                           000088   180 _TCON	=	0x0088
                           000089   181 _TMOD	=	0x0089
                           00008A   182 _TL0	=	0x008a
                           00008B   183 _TL1	=	0x008b
                           00008C   184 _TH0	=	0x008c
                           00008D   185 _TH1	=	0x008d
                           000090   186 _P1	=	0x0090
                           000098   187 _SCON	=	0x0098
                           000099   188 _SBUF	=	0x0099
                           0000A0   189 _P2	=	0x00a0
                           0000A8   190 _IE	=	0x00a8
                           0000B0   191 _P3	=	0x00b0
                           0000B8   192 _IP	=	0x00b8
                           0000C8   193 _T2CON	=	0x00c8
                           0000C9   194 _T2MOD	=	0x00c9
                           0000CA   195 _RCAP2L	=	0x00ca
                           0000CB   196 _RCAP2H	=	0x00cb
                           0000CC   197 _TL2	=	0x00cc
                           0000CD   198 _TH2	=	0x00cd
                           0000D0   199 _PSW	=	0x00d0
                           0000E0   200 _ACC	=	0x00e0
                           0000E0   201 _A	=	0x00e0
                           0000F0   202 _B	=	0x00f0
                           00008E   203 _AUXR	=	0x008e
                           0000D6   204 _T2L	=	0x00d6
                           0000D7   205 _T2H	=	0x00d7
                           0000AF   206 _IE2	=	0x00af
                           0000B1   207 _P3M1	=	0x00b1
                           0000B2   208 _P3M0	=	0x00b2
                           0000C9   209 _P5M1	=	0x00c9
                           0000CA   210 _P5M0	=	0x00ca
                           0000C8   211 _P5	=	0x00c8
                           000097   212 _CLK_DIV	=	0x0097
                                    213 ;--------------------------------------------------------
                                    214 ; special function bits
                                    215 ;--------------------------------------------------------
                                    216 	.area RSEG    (ABS,DATA)
      000000                        217 	.org 0x0000
                           000080   218 _P0_0	=	0x0080
                           000081   219 _P0_1	=	0x0081
                           000082   220 _P0_2	=	0x0082
                           000083   221 _P0_3	=	0x0083
                           000084   222 _P0_4	=	0x0084
                           000085   223 _P0_5	=	0x0085
                           000086   224 _P0_6	=	0x0086
                           000087   225 _P0_7	=	0x0087
                           000088   226 _IT0	=	0x0088
                           000089   227 _IE0	=	0x0089
                           00008A   228 _IT1	=	0x008a
                           00008B   229 _IE1	=	0x008b
                           00008C   230 _TR0	=	0x008c
                           00008D   231 _TF0	=	0x008d
                           00008E   232 _TR1	=	0x008e
                           00008F   233 _TF1	=	0x008f
                           000090   234 _P1_0	=	0x0090
                           000091   235 _P1_1	=	0x0091
                           000092   236 _P1_2	=	0x0092
                           000093   237 _P1_3	=	0x0093
                           000094   238 _P1_4	=	0x0094
                           000095   239 _P1_5	=	0x0095
                           000096   240 _P1_6	=	0x0096
                           000097   241 _P1_7	=	0x0097
                           000090   242 _T2	=	0x0090
                           000091   243 _T2EX	=	0x0091
                           000098   244 _RI	=	0x0098
                           000099   245 _TI	=	0x0099
                           00009A   246 _RB8	=	0x009a
                           00009B   247 _TB8	=	0x009b
                           00009C   248 _REN	=	0x009c
                           00009D   249 _SM2	=	0x009d
                           00009E   250 _SM1	=	0x009e
                           00009F   251 _SM0	=	0x009f
                           0000A0   252 _P2_0	=	0x00a0
                           0000A1   253 _P2_1	=	0x00a1
                           0000A2   254 _P2_2	=	0x00a2
                           0000A3   255 _P2_3	=	0x00a3
                           0000A4   256 _P2_4	=	0x00a4
                           0000A5   257 _P2_5	=	0x00a5
                           0000A6   258 _P2_6	=	0x00a6
                           0000A7   259 _P2_7	=	0x00a7
                           0000A8   260 _EX0	=	0x00a8
                           0000A9   261 _ET0	=	0x00a9
                           0000AA   262 _EX1	=	0x00aa
                           0000AB   263 _ET1	=	0x00ab
                           0000AC   264 _ES	=	0x00ac
                           0000AD   265 _ET2	=	0x00ad
                           0000AF   266 _EA	=	0x00af
                           0000B0   267 _P3_0	=	0x00b0
                           0000B1   268 _P3_1	=	0x00b1
                           0000B2   269 _P3_2	=	0x00b2
                           0000B3   270 _P3_3	=	0x00b3
                           0000B4   271 _P3_4	=	0x00b4
                           0000B5   272 _P3_5	=	0x00b5
                           0000B6   273 _P3_6	=	0x00b6
                           0000B7   274 _P3_7	=	0x00b7
                           0000B0   275 _RXD	=	0x00b0
                           0000B1   276 _TXD	=	0x00b1
                           0000B2   277 _INT0	=	0x00b2
                           0000B3   278 _INT1	=	0x00b3
                           0000B4   279 _T0	=	0x00b4
                           0000B5   280 _T1	=	0x00b5
                           0000B6   281 _WR	=	0x00b6
                           0000B7   282 _RD	=	0x00b7
                           0000B8   283 _PX0	=	0x00b8
                           0000B9   284 _PT0	=	0x00b9
                           0000BA   285 _PX1	=	0x00ba
                           0000BB   286 _PT1	=	0x00bb
                           0000BC   287 _PS	=	0x00bc
                           0000BD   288 _PT2	=	0x00bd
                           0000C8   289 _T2CON_0	=	0x00c8
                           0000C9   290 _T2CON_1	=	0x00c9
                           0000CA   291 _T2CON_2	=	0x00ca
                           0000CB   292 _T2CON_3	=	0x00cb
                           0000CC   293 _T2CON_4	=	0x00cc
                           0000CD   294 _T2CON_5	=	0x00cd
                           0000CE   295 _T2CON_6	=	0x00ce
                           0000CF   296 _T2CON_7	=	0x00cf
                           0000C8   297 _CP_RL2	=	0x00c8
                           0000C9   298 _C_T2	=	0x00c9
                           0000CA   299 _TR2	=	0x00ca
                           0000CB   300 _EXEN2	=	0x00cb
                           0000CC   301 _TCLK	=	0x00cc
                           0000CD   302 _RCLK	=	0x00cd
                           0000CE   303 _EXF2	=	0x00ce
                           0000CF   304 _TF2	=	0x00cf
                           0000D0   305 _P	=	0x00d0
                           0000D1   306 _FL	=	0x00d1
                           0000D2   307 _OV	=	0x00d2
                           0000D3   308 _RS0	=	0x00d3
                           0000D4   309 _RS1	=	0x00d4
                           0000D5   310 _F0	=	0x00d5
                           0000D6   311 _AC	=	0x00d6
                           0000D7   312 _CY	=	0x00d7
                           0000CC   313 _P5_4	=	0x00cc
                           0000CD   314 _P5_5	=	0x00cd
                           000093   315 _T2R	=	0x0093
                                    316 ;--------------------------------------------------------
                                    317 ; overlayable register banks
                                    318 ;--------------------------------------------------------
                                    319 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        320 	.ds 8
                                    321 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        322 	.ds 8
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable bit register bank
                                    325 ;--------------------------------------------------------
                                    326 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        327 bits:
      000021                        328 	.ds 1
                           008000   329 	b0 = bits[0]
                           008100   330 	b1 = bits[1]
                           008200   331 	b2 = bits[2]
                           008300   332 	b3 = bits[3]
                           008400   333 	b4 = bits[4]
                           008500   334 	b5 = bits[5]
                           008600   335 	b6 = bits[6]
                           008700   336 	b7 = bits[7]
                                    337 ;--------------------------------------------------------
                                    338 ; internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area DSEG    (DATA)
      000022                        341 _ram::
      000022                        342 	.ds 70
      000068                        343 _a::
      000068                        344 	.ds 1
      000069                        345 _b::
      000069                        346 	.ds 1
      00006A                        347 _i::
      00006A                        348 	.ds 1
      00006B                        349 _count::
      00006B                        350 	.ds 1
      00006C                        351 _count1::
      00006C                        352 	.ds 1
      00006D                        353 _num::
      00006D                        354 	.ds 1
      00006E                        355 _t::
      00006E                        356 	.ds 1
      00006F                        357 _time::
      00006F                        358 	.ds 2
      000071                        359 _time1::
      000071                        360 	.ds 2
      000073                        361 _tone::
      000073                        362 	.ds 1
                                    363 ;--------------------------------------------------------
                                    364 ; overlayable items in internal ram 
                                    365 ;--------------------------------------------------------
                                    366 	.area	OSEG    (OVR,DATA)
                                    367 ;--------------------------------------------------------
                                    368 ; Stack segment in internal ram 
                                    369 ;--------------------------------------------------------
                                    370 	.area	SSEG
      000074                        371 __start__stack:
      000074                        372 	.ds	1
                                    373 
                                    374 ;--------------------------------------------------------
                                    375 ; indirectly addressable internal ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area ISEG    (DATA)
                                    378 ;--------------------------------------------------------
                                    379 ; absolute internal ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area IABS    (ABS,DATA)
                                    382 	.area IABS    (ABS,DATA)
                                    383 ;--------------------------------------------------------
                                    384 ; bit data
                                    385 ;--------------------------------------------------------
                                    386 	.area BSEG    (BIT)
      000000                        387 _time_state::
      000000                        388 	.ds 1
      000001                        389 _run::
      000001                        390 	.ds 1
      000002                        391 _IS_POWER_DOWN::
      000002                        392 	.ds 1
                                    393 ;--------------------------------------------------------
                                    394 ; paged external ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area PSEG    (PAG,XDATA)
                                    397 ;--------------------------------------------------------
                                    398 ; external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area XSEG    (XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; absolute external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XABS    (ABS,XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; external initialized ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XISEG   (XDATA)
                                    409 	.area HOME    (CODE)
                                    410 	.area GSINIT0 (CODE)
                                    411 	.area GSINIT1 (CODE)
                                    412 	.area GSINIT2 (CODE)
                                    413 	.area GSINIT3 (CODE)
                                    414 	.area GSINIT4 (CODE)
                                    415 	.area GSINIT5 (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.area GSFINAL (CODE)
                                    418 	.area CSEG    (CODE)
                                    419 ;--------------------------------------------------------
                                    420 ; interrupt vector 
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
      000000                        423 __interrupt_vect:
      000000 02 00 69         [24]  424 	ljmp	__sdcc_gsinit_startup
      000003 02 03 E8         [24]  425 	ljmp	_interrupt0int
      000006                        426 	.ds	5
      00000B 02 03 40         [24]  427 	ljmp	_timer0int
      00000E                        428 	.ds	5
      000013 02 03 EB         [24]  429 	ljmp	_interrupt1int
      000016                        430 	.ds	5
      00001B 32               [24]  431 	reti
      00001C                        432 	.ds	7
      000023 32               [24]  433 	reti
      000024                        434 	.ds	7
      00002B 32               [24]  435 	reti
      00002C                        436 	.ds	7
      000033 32               [24]  437 	reti
      000034                        438 	.ds	7
      00003B 32               [24]  439 	reti
      00003C                        440 	.ds	7
      000043 32               [24]  441 	reti
      000044                        442 	.ds	7
      00004B 32               [24]  443 	reti
      00004C                        444 	.ds	7
      000053 32               [24]  445 	reti
      000054                        446 	.ds	7
      00005B 32               [24]  447 	reti
      00005C                        448 	.ds	7
      000063 02 03 EE         [24]  449 	ljmp	_timer2int
                                    450 ;--------------------------------------------------------
                                    451 ; global & static initialisations
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area GSINIT  (CODE)
                                    455 	.area GSFINAL (CODE)
                                    456 	.area GSINIT  (CODE)
                                    457 	.globl __sdcc_gsinit_startup
                                    458 	.globl __sdcc_program_startup
                                    459 	.globl __start__stack
                                    460 	.globl __mcs51_genXINIT
                                    461 	.globl __mcs51_genXRAMCLEAR
                                    462 	.globl __mcs51_genRAMCLEAR
                                    463 ;	main.c:27: unsigned char ram[70] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
      0000C2 75 22 00         [24]  464 	mov	_ram,#0x00
      0000C5 75 23 00         [24]  465 	mov	(_ram + 0x0001),#0x00
      0000C8 75 24 00         [24]  466 	mov	(_ram + 0x0002),#0x00
      0000CB 75 25 00         [24]  467 	mov	(_ram + 0x0003),#0x00
      0000CE 75 26 00         [24]  468 	mov	(_ram + 0x0004),#0x00
      0000D1 75 27 00         [24]  469 	mov	(_ram + 0x0005),#0x00
      0000D4 75 28 00         [24]  470 	mov	(_ram + 0x0006),#0x00
      0000D7 75 29 00         [24]  471 	mov	(_ram + 0x0007),#0x00
      0000DA 75 2A 00         [24]  472 	mov	(_ram + 0x0008),#0x00
      0000DD 75 2B 00         [24]  473 	mov	(_ram + 0x0009),#0x00
      0000E0 75 2C 00         [24]  474 	mov	(_ram + 0x000a),#0x00
      0000E3 75 2D 00         [24]  475 	mov	(_ram + 0x000b),#0x00
      0000E6 75 2E 00         [24]  476 	mov	(_ram + 0x000c),#0x00
      0000E9 75 2F 00         [24]  477 	mov	(_ram + 0x000d),#0x00
      0000EC 75 30 00         [24]  478 	mov	(_ram + 0x000e),#0x00
      0000EF 75 31 00         [24]  479 	mov	(_ram + 0x000f),#0x00
      0000F2 75 32 00         [24]  480 	mov	(_ram + 0x0010),#0x00
      0000F5 75 33 00         [24]  481 	mov	(_ram + 0x0011),#0x00
      0000F8 75 34 00         [24]  482 	mov	(_ram + 0x0012),#0x00
      0000FB 75 35 00         [24]  483 	mov	(_ram + 0x0013),#0x00
      0000FE 75 36 00         [24]  484 	mov	(_ram + 0x0014),#0x00
      000101 75 37 00         [24]  485 	mov	(_ram + 0x0015),#0x00
      000104 75 38 00         [24]  486 	mov	(_ram + 0x0016),#0x00
      000107 75 39 00         [24]  487 	mov	(_ram + 0x0017),#0x00
      00010A 75 3A 00         [24]  488 	mov	(_ram + 0x0018),#0x00
      00010D 75 3B 00         [24]  489 	mov	(_ram + 0x0019),#0x00
      000110 75 3C 00         [24]  490 	mov	(_ram + 0x001a),#0x00
      000113 75 3D 00         [24]  491 	mov	(_ram + 0x001b),#0x00
      000116 75 3E 00         [24]  492 	mov	(_ram + 0x001c),#0x00
      000119 75 3F 00         [24]  493 	mov	(_ram + 0x001d),#0x00
      00011C 75 40 00         [24]  494 	mov	(_ram + 0x001e),#0x00
      00011F 75 41 00         [24]  495 	mov	(_ram + 0x001f),#0x00
      000122 75 42 00         [24]  496 	mov	(_ram + 0x0020),#0x00
      000125 75 43 00         [24]  497 	mov	(_ram + 0x0021),#0x00
      000128 75 44 00         [24]  498 	mov	(_ram + 0x0022),#0x00
      00012B 75 45 00         [24]  499 	mov	(_ram + 0x0023),#0x00
      00012E 75 46 00         [24]  500 	mov	(_ram + 0x0024),#0x00
      000131 75 47 00         [24]  501 	mov	(_ram + 0x0025),#0x00
      000134 75 48 00         [24]  502 	mov	(_ram + 0x0026),#0x00
      000137 75 49 00         [24]  503 	mov	(_ram + 0x0027),#0x00
      00013A 75 4A 00         [24]  504 	mov	(_ram + 0x0028),#0x00
      00013D 75 4B 00         [24]  505 	mov	(_ram + 0x0029),#0x00
      000140 75 4C 00         [24]  506 	mov	(_ram + 0x002a),#0x00
      000143 75 4D 00         [24]  507 	mov	(_ram + 0x002b),#0x00
      000146 75 4E 00         [24]  508 	mov	(_ram + 0x002c),#0x00
      000149 75 4F 00         [24]  509 	mov	(_ram + 0x002d),#0x00
      00014C 75 50 00         [24]  510 	mov	(_ram + 0x002e),#0x00
      00014F 75 51 00         [24]  511 	mov	(_ram + 0x002f),#0x00
      000152 75 52 00         [24]  512 	mov	(_ram + 0x0030),#0x00
      000155 75 53 00         [24]  513 	mov	(_ram + 0x0031),#0x00
      000158 75 54 00         [24]  514 	mov	(_ram + 0x0032),#0x00
      00015B 75 55 00         [24]  515 	mov	(_ram + 0x0033),#0x00
      00015E 75 56 00         [24]  516 	mov	(_ram + 0x0034),#0x00
      000161 75 57 00         [24]  517 	mov	(_ram + 0x0035),#0x00
      000164 75 58 00         [24]  518 	mov	(_ram + 0x0036),#0x00
      000167 75 59 00         [24]  519 	mov	(_ram + 0x0037),#0x00
      00016A 75 5A 00         [24]  520 	mov	(_ram + 0x0038),#0x00
      00016D 75 5B 00         [24]  521 	mov	(_ram + 0x0039),#0x00
      000170 75 5C 00         [24]  522 	mov	(_ram + 0x003a),#0x00
      000173 75 5D 00         [24]  523 	mov	(_ram + 0x003b),#0x00
      000176 75 5E 00         [24]  524 	mov	(_ram + 0x003c),#0x00
      000179 75 5F 00         [24]  525 	mov	(_ram + 0x003d),#0x00
      00017C 75 60 00         [24]  526 	mov	(_ram + 0x003e),#0x00
      00017F 75 61 00         [24]  527 	mov	(_ram + 0x003f),#0x00
      000182 75 62 00         [24]  528 	mov	(_ram + 0x0040),#0x00
      000185 75 63 00         [24]  529 	mov	(_ram + 0x0041),#0x00
      000188 75 64 00         [24]  530 	mov	(_ram + 0x0042),#0x00
      00018B 75 65 00         [24]  531 	mov	(_ram + 0x0043),#0x00
      00018E 75 66 00         [24]  532 	mov	(_ram + 0x0044),#0x00
      000191 75 67 00         [24]  533 	mov	(_ram + 0x0045),#0x00
                                    534 ;	main.c:29: unsigned char b = 0;
      000194 75 69 00         [24]  535 	mov	_b,#0x00
                                    536 ;	main.c:31: unsigned char count = 0;
      000197 75 6B 00         [24]  537 	mov	_count,#0x00
                                    538 ;	main.c:32: unsigned char count1 = 0;
      00019A 75 6C 00         [24]  539 	mov	_count1,#0x00
                                    540 ;	main.c:33: unsigned char num = 0;
      00019D 75 6D 00         [24]  541 	mov	_num,#0x00
                                    542 ;	main.c:34: unsigned char t = 100;
      0001A0 75 6E 64         [24]  543 	mov	_t,#0x64
                                    544 ;	main.c:35: unsigned int time = 0;
      0001A3 E4               [12]  545 	clr	a
      0001A4 F5 6F            [12]  546 	mov	_time,a
      0001A6 F5 70            [12]  547 	mov	(_time + 1),a
                                    548 ;	main.c:36: unsigned int time1 = 0;
      0001A8 F5 71            [12]  549 	mov	_time1,a
      0001AA F5 72            [12]  550 	mov	(_time1 + 1),a
                                    551 ;	main.c:42: unsigned char tone = 0;
                                    552 ;	1-genFromRTrack replaced	mov	_tone,#0x00
      0001AC F5 73            [12]  553 	mov	_tone,a
                                    554 ;	main.c:37: __bit time_state = 0;
                                    555 ;	assignBit
      0001AE C2 00            [12]  556 	clr	_time_state
                                    557 ;	main.c:38: __bit run = 0;
                                    558 ;	assignBit
      0001B0 C2 01            [12]  559 	clr	_run
                                    560 ;	main.c:39: __bit IS_POWER_DOWN = 0;
                                    561 ;	assignBit
      0001B2 C2 02            [12]  562 	clr	_IS_POWER_DOWN
                                    563 	.area GSFINAL (CODE)
      0001B4 02 00 66         [24]  564 	ljmp	__sdcc_program_startup
                                    565 ;--------------------------------------------------------
                                    566 ; Home
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
                                    569 	.area HOME    (CODE)
      000066                        570 __sdcc_program_startup:
      000066 02 02 23         [24]  571 	ljmp	_main
                                    572 ;	return from main will return to caller
                                    573 ;--------------------------------------------------------
                                    574 ; code
                                    575 ;--------------------------------------------------------
                                    576 	.area CSEG    (CODE)
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'Delay1ms'
                                    579 ;------------------------------------------------------------
                                    580 ;i                         Allocated to registers r7 
                                    581 ;j                         Allocated to registers r6 
                                    582 ;------------------------------------------------------------
                                    583 ;	main.c:45: void Delay1ms()		//@11.0592MHz
                                    584 ;	-----------------------------------------
                                    585 ;	 function Delay1ms
                                    586 ;	-----------------------------------------
      0001B7                        587 _Delay1ms:
                           000007   588 	ar7 = 0x07
                           000006   589 	ar6 = 0x06
                           000005   590 	ar5 = 0x05
                           000004   591 	ar4 = 0x04
                           000003   592 	ar3 = 0x03
                           000002   593 	ar2 = 0x02
                           000001   594 	ar1 = 0x01
                           000000   595 	ar0 = 0x00
                                    596 ;	main.c:48: __asm__("nop");
      0001B7 00               [12]  597 	nop
                                    598 ;	main.c:49: i = 11;
      0001B8 7F 0B            [12]  599 	mov	r7,#0x0b
                                    600 ;	main.c:50: j = 190;
      0001BA 7E BE            [12]  601 	mov	r6,#0xbe
                                    602 ;	main.c:53: while (--j);
      0001BC                        603 00101$:
      0001BC EE               [12]  604 	mov	a,r6
      0001BD 14               [12]  605 	dec	a
      0001BE FD               [12]  606 	mov	r5,a
      0001BF FE               [12]  607 	mov	r6,a
      0001C0 70 FA            [24]  608 	jnz	00101$
                                    609 ;	main.c:54: } while (--i);
      0001C2 EF               [12]  610 	mov	a,r7
      0001C3 14               [12]  611 	dec	a
      0001C4 FD               [12]  612 	mov	r5,a
      0001C5 FF               [12]  613 	mov	r7,a
      0001C6 70 F4            [24]  614 	jnz	00101$
                                    615 ;	main.c:55: }
      0001C8 22               [24]  616 	ret
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'delay'
                                    619 ;------------------------------------------------------------
                                    620 ;a                         Allocated to registers r6 r7 
                                    621 ;z                         Allocated to registers r4 r5 
                                    622 ;------------------------------------------------------------
                                    623 ;	main.c:57: void delay(unsigned int a)
                                    624 ;	-----------------------------------------
                                    625 ;	 function delay
                                    626 ;	-----------------------------------------
      0001C9                        627 _delay:
      0001C9 AE 82            [24]  628 	mov	r6,dpl
      0001CB AF 83            [24]  629 	mov	r7,dph
                                    630 ;	main.c:60: for(z=0;z<=a;z++)
      0001CD 7C 00            [12]  631 	mov	r4,#0x00
      0001CF 7D 00            [12]  632 	mov	r5,#0x00
      0001D1                        633 00102$:
                                    634 ;	main.c:62: Delay1ms();
      0001D1 C0 07            [24]  635 	push	ar7
      0001D3 C0 06            [24]  636 	push	ar6
      0001D5 C0 05            [24]  637 	push	ar5
      0001D7 C0 04            [24]  638 	push	ar4
      0001D9 12 01 B7         [24]  639 	lcall	_Delay1ms
      0001DC D0 04            [24]  640 	pop	ar4
      0001DE D0 05            [24]  641 	pop	ar5
      0001E0 D0 06            [24]  642 	pop	ar6
      0001E2 D0 07            [24]  643 	pop	ar7
                                    644 ;	main.c:60: for(z=0;z<=a;z++)
      0001E4 0C               [12]  645 	inc	r4
      0001E5 BC 00 01         [24]  646 	cjne	r4,#0x00,00111$
      0001E8 0D               [12]  647 	inc	r5
      0001E9                        648 00111$:
      0001E9 C3               [12]  649 	clr	c
      0001EA EE               [12]  650 	mov	a,r6
      0001EB 9C               [12]  651 	subb	a,r4
      0001EC EF               [12]  652 	mov	a,r7
      0001ED 9D               [12]  653 	subb	a,r5
      0001EE 50 E1            [24]  654 	jnc	00102$
                                    655 ;	main.c:64: }
      0001F0 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'Timer0Init'
                                    659 ;------------------------------------------------------------
                                    660 ;	main.c:65: void Timer0Init()		//5ms@11.0592MHz
                                    661 ;	-----------------------------------------
                                    662 ;	 function Timer0Init
                                    663 ;	-----------------------------------------
      0001F1                        664 _Timer0Init:
                                    665 ;	main.c:67: AUXR &= 0x7F;		//Timer clock is 12T mode
      0001F1 53 8E 7F         [24]  666 	anl	_AUXR,#0x7f
                                    667 ;	main.c:68: TMOD &= 0xF0;		//Set timer work mode
      0001F4 53 89 F0         [24]  668 	anl	_TMOD,#0xf0
                                    669 ;	main.c:69: TL0 = 0xFE;		//Initial timer value
      0001F7 75 8A FE         [24]  670 	mov	_TL0,#0xfe
                                    671 ;	main.c:70: TH0 = 0xF0;		//Initial timer value
      0001FA 75 8C F0         [24]  672 	mov	_TH0,#0xf0
                                    673 ;	main.c:71: TF0 = 0;
                                    674 ;	assignBit
      0001FD C2 8D            [12]  675 	clr	_TF0
                                    676 ;	main.c:72: EX0 = 0;
                                    677 ;	assignBit
      0001FF C2 A8            [12]  678 	clr	_EX0
                                    679 ;	main.c:73: EX1 = 0;	
                                    680 ;	assignBit
      000201 C2 AA            [12]  681 	clr	_EX1
                                    682 ;	main.c:74: IT0 = 0;
                                    683 ;	assignBit
      000203 C2 88            [12]  684 	clr	_IT0
                                    685 ;	main.c:75: IT1 = 0;
                                    686 ;	assignBit
      000205 C2 8A            [12]  687 	clr	_IT1
                                    688 ;	main.c:76: EA = 1;
                                    689 ;	assignBit
      000207 D2 AF            [12]  690 	setb	_EA
                                    691 ;	main.c:77: ET0 = 1;
                                    692 ;	assignBit
      000209 D2 A9            [12]  693 	setb	_ET0
                                    694 ;	main.c:81: TR0 = 1;
                                    695 ;	assignBit
      00020B D2 8C            [12]  696 	setb	_TR0
                                    697 ;	main.c:82: }
      00020D 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'Timer2Init'
                                    701 ;------------------------------------------------------------
                                    702 ;	main.c:83: void Timer2Init()		//1ms@11.0592MHz
                                    703 ;	-----------------------------------------
                                    704 ;	 function Timer2Init
                                    705 ;	-----------------------------------------
      00020E                        706 _Timer2Init:
                                    707 ;	main.c:85: AUXR |= 0x04;		//Timer clock is 1T mode
      00020E AE 8E            [24]  708 	mov	r6,_AUXR
      000210 43 06 04         [24]  709 	orl	ar6,#0x04
      000213 8E 8E            [24]  710 	mov	_AUXR,r6
                                    711 ;	main.c:86: T2L = 0xCD;		//Initial timer value
      000215 75 D6 CD         [24]  712 	mov	_T2L,#0xcd
                                    713 ;	main.c:87: T2H = 0xD4;		//Initial timer value
      000218 75 D7 D4         [24]  714 	mov	_T2H,#0xd4
                                    715 ;	main.c:88: IE2 |= 0x04;
      00021B AE AF            [24]  716 	mov	r6,_IE2
      00021D 43 06 04         [24]  717 	orl	ar6,#0x04
      000220 8E AF            [24]  718 	mov	_IE2,r6
                                    719 ;	main.c:89: }
      000222 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'main'
                                    723 ;------------------------------------------------------------
                                    724 ;	main.c:90: void main()
                                    725 ;	-----------------------------------------
                                    726 ;	 function main
                                    727 ;	-----------------------------------------
      000223                        728 _main:
                                    729 ;	main.c:92: Timer0Init();
      000223 12 01 F1         [24]  730 	lcall	_Timer0Init
                                    731 ;	main.c:93: Timer2Init();
      000226 12 02 0E         [24]  732 	lcall	_Timer2Init
                                    733 ;	main.c:95: tone = 1;
      000229 75 73 01         [24]  734 	mov	_tone,#0x01
                                    735 ;	main.c:96: AUXR = 0x14;
      00022C 75 8E 14         [24]  736 	mov	_AUXR,#0x14
                                    737 ;	main.c:97: P5 = 0xFF;
      00022F 75 C8 FF         [24]  738 	mov	_P5,#0xff
                                    739 ;	main.c:98: P5 = 0x00;
      000232 75 C8 00         [24]  740 	mov	_P5,#0x00
                                    741 ;	main.c:99: delay(1000);
      000235 90 03 E8         [24]  742 	mov	dptr,#0x03e8
      000238 12 01 C9         [24]  743 	lcall	_delay
                                    744 ;	main.c:100: P5 = 0xFF;
      00023B 75 C8 FF         [24]  745 	mov	_P5,#0xff
                                    746 ;	main.c:101: AUXR = 0x04;
      00023E 75 8E 04         [24]  747 	mov	_AUXR,#0x04
                                    748 ;	main.c:102: speaker = 1;
                                    749 ;	assignBit
      000241 D2 B0            [12]  750 	setb	_P3_0
                                    751 ;	main.c:104: run = 0;
                                    752 ;	assignBit
      000243 C2 01            [12]  753 	clr	_run
                                    754 ;	main.c:105: count = 0;
      000245 75 6B 00         [24]  755 	mov	_count,#0x00
                                    756 ;	main.c:106: count1 = 0;
      000248 75 6C 00         [24]  757 	mov	_count1,#0x00
                                    758 ;	main.c:107: IS_POWER_DOWN = 0;
                                    759 ;	assignBit
      00024B C2 02            [12]  760 	clr	_IS_POWER_DOWN
                                    761 ;	main.c:109: for(i=0;i<70;i++)
      00024D 75 6A 00         [24]  762 	mov	_i,#0x00
      000250                        763 00145$:
                                    764 ;	main.c:111: ram[i] = 0;
      000250 E5 6A            [12]  765 	mov	a,_i
      000252 24 22            [12]  766 	add	a,#_ram
      000254 F8               [12]  767 	mov	r0,a
      000255 76 00            [12]  768 	mov	@r0,#0x00
                                    769 ;	main.c:109: for(i=0;i<70;i++)
      000257 05 6A            [12]  770 	inc	_i
      000259 74 BA            [12]  771 	mov	a,#0x100 - 0x46
      00025B 25 6A            [12]  772 	add	a,_i
      00025D 50 F1            [24]  773 	jnc	00145$
                                    774 ;	main.c:114: while(1)
      00025F                        775 00143$:
                                    776 ;	main.c:118: if (button1 == 0 && button2 == 0) // both buttons
      00025F 20 B2 0B         [24]  777 	jb	_P3_2,00108$
      000262 20 B3 08         [24]  778 	jb	_P3_3,00108$
                                    779 ;	main.c:120: tone = 5;
      000265 75 73 05         [24]  780 	mov	_tone,#0x05
                                    781 ;	main.c:121: AUXR = 0x14;
      000268 75 8E 14         [24]  782 	mov	_AUXR,#0x14
      00026B 80 14            [24]  783 	sjmp	00109$
      00026D                        784 00108$:
                                    785 ;	main.c:125: if (button1 == 0) //one button 
      00026D 20 B2 08         [24]  786 	jb	_P3_2,00105$
                                    787 ;	main.c:127: tone = 1;
      000270 75 73 01         [24]  788 	mov	_tone,#0x01
                                    789 ;	main.c:128: AUXR = 0x14;
      000273 75 8E 14         [24]  790 	mov	_AUXR,#0x14
      000276 80 09            [24]  791 	sjmp	00109$
      000278                        792 00105$:
                                    793 ;	main.c:130: else if (button2 == 0) //other button
      000278 20 B3 06         [24]  794 	jb	_P3_3,00109$
                                    795 ;	main.c:132: tone = 3;
      00027B 75 73 03         [24]  796 	mov	_tone,#0x03
                                    797 ;	main.c:133: AUXR = 0x14;
      00027E 75 8E 14         [24]  798 	mov	_AUXR,#0x14
      000281                        799 00109$:
                                    800 ;	main.c:136: if (button1 == 1 && button2 == 1)
      000281 30 B2 08         [24]  801 	jnb	_P3_2,00115$
      000284 30 B3 05         [24]  802 	jnb	_P3_3,00115$
                                    803 ;	main.c:138: AUXR = 0x04;
      000287 75 8E 04         [24]  804 	mov	_AUXR,#0x04
                                    805 ;	main.c:139: speaker = 1;
                                    806 ;	assignBit
      00028A D2 B0            [12]  807 	setb	_P3_0
      00028C                        808 00115$:
                                    809 ;	main.c:145: if (led1 == 0 && led2 == 0) // both buttons
      00028C 20 CC 0B         [24]  810 	jb	_P5_4,00122$
      00028F 20 CD 08         [24]  811 	jb	_P5_5,00122$
                                    812 ;	main.c:147: tone = 5;
      000292 75 73 05         [24]  813 	mov	_tone,#0x05
                                    814 ;	main.c:148: AUXR = 0x14;
      000295 75 8E 14         [24]  815 	mov	_AUXR,#0x14
      000298 80 14            [24]  816 	sjmp	00123$
      00029A                        817 00122$:
                                    818 ;	main.c:152: if (led1 == 0) //one button 
      00029A 20 CC 08         [24]  819 	jb	_P5_4,00119$
                                    820 ;	main.c:154: tone = 1;
      00029D 75 73 01         [24]  821 	mov	_tone,#0x01
                                    822 ;	main.c:155: AUXR = 0x14;
      0002A0 75 8E 14         [24]  823 	mov	_AUXR,#0x14
      0002A3 80 09            [24]  824 	sjmp	00123$
      0002A5                        825 00119$:
                                    826 ;	main.c:157: else if (led2 == 0) //other button
      0002A5 20 CD 06         [24]  827 	jb	_P5_5,00123$
                                    828 ;	main.c:159: tone = 3;
      0002A8 75 73 03         [24]  829 	mov	_tone,#0x03
                                    830 ;	main.c:160: AUXR = 0x14;
      0002AB 75 8E 14         [24]  831 	mov	_AUXR,#0x14
      0002AE                        832 00123$:
                                    833 ;	main.c:165: if (time > 65530)
      0002AE C3               [12]  834 	clr	c
      0002AF 74 FA            [12]  835 	mov	a,#0xfa
      0002B1 95 6F            [12]  836 	subb	a,_time
      0002B3 74 FF            [12]  837 	mov	a,#0xff
      0002B5 95 70            [12]  838 	subb	a,(_time + 1)
      0002B7 50 08            [24]  839 	jnc	00126$
                                    840 ;	main.c:168: time1++;
      0002B9 05 71            [12]  841 	inc	_time1
      0002BB E4               [12]  842 	clr	a
      0002BC B5 71 02         [24]  843 	cjne	a,_time1,00249$
      0002BF 05 72            [12]  844 	inc	(_time1 + 1)
      0002C1                        845 00249$:
      0002C1                        846 00126$:
                                    847 ;	main.c:171: if (time1 > 200)
      0002C1 C3               [12]  848 	clr	c
      0002C2 74 C8            [12]  849 	mov	a,#0xc8
      0002C4 95 71            [12]  850 	subb	a,_time1
      0002C6 E4               [12]  851 	clr	a
      0002C7 95 72            [12]  852 	subb	a,(_time1 + 1)
      0002C9 50 0D            [24]  853 	jnc	00128$
                                    854 ;	main.c:173: IS_POWER_DOWN = 1;
                                    855 ;	assignBit
      0002CB D2 02            [12]  856 	setb	_IS_POWER_DOWN
                                    857 ;	main.c:174: time=0;
      0002CD E4               [12]  858 	clr	a
      0002CE F5 6F            [12]  859 	mov	_time,a
      0002D0 F5 70            [12]  860 	mov	(_time + 1),a
                                    861 ;	main.c:175: time1=0;
      0002D2 F5 71            [12]  862 	mov	_time1,a
      0002D4 F5 72            [12]  863 	mov	(_time1 + 1),a
      0002D6 80 02            [24]  864 	sjmp	00129$
      0002D8                        865 00128$:
                                    866 ;	main.c:180: IS_POWER_DOWN = 0;
                                    867 ;	assignBit
      0002D8 C2 02            [12]  868 	clr	_IS_POWER_DOWN
      0002DA                        869 00129$:
                                    870 ;	main.c:182: if (IS_POWER_DOWN)
      0002DA 30 02 2A         [24]  871 	jnb	_IS_POWER_DOWN,00132$
                                    872 ;	main.c:184: EX0 = 1;
                                    873 ;	assignBit
      0002DD D2 A8            [12]  874 	setb	_EX0
                                    875 ;	main.c:185: EX1 = 1;
                                    876 ;	assignBit
      0002DF D2 AA            [12]  877 	setb	_EX1
                                    878 ;	main.c:188: for(i=0;i<6;i++)
      0002E1 75 6A 00         [24]  879 	mov	_i,#0x00
      0002E4                        880 00147$:
                                    881 ;	main.c:190: P5 = 0x00;
      0002E4 75 C8 00         [24]  882 	mov	_P5,#0x00
                                    883 ;	main.c:191: delay(500);
      0002E7 90 01 F4         [24]  884 	mov	dptr,#0x01f4
      0002EA 12 01 C9         [24]  885 	lcall	_delay
                                    886 ;	main.c:192: P5 = 0xFF;
      0002ED 75 C8 FF         [24]  887 	mov	_P5,#0xff
                                    888 ;	main.c:193: delay(500);
      0002F0 90 01 F4         [24]  889 	mov	dptr,#0x01f4
      0002F3 12 01 C9         [24]  890 	lcall	_delay
                                    891 ;	main.c:188: for(i=0;i<6;i++)
      0002F6 05 6A            [12]  892 	inc	_i
      0002F8 74 FA            [12]  893 	mov	a,#0x100 - 0x06
      0002FA 25 6A            [12]  894 	add	a,_i
      0002FC 50 E6            [24]  895 	jnc	00147$
                                    896 ;	main.c:196: IS_POWER_DOWN = 1;
                                    897 ;	assignBit
      0002FE D2 02            [12]  898 	setb	_IS_POWER_DOWN
                                    899 ;	main.c:197: PCON = 0x02;
      000300 75 87 02         [24]  900 	mov	_PCON,#0x02
                                    901 ;	main.c:198: __asm__("nop");
      000303 00               [12]  902 	nop
                                    903 ;	main.c:199: __asm__("nop");
      000304 00               [12]  904 	nop
                                    905 ;	main.c:200: __asm__("nop");
      000305 00               [12]  906 	nop
                                    907 ;	main.c:201: __asm__("nop");
      000306 00               [12]  908 	nop
      000307                        909 00132$:
                                    910 ;	main.c:203: if (button1 == 0)
      000307 20 B2 09         [24]  911 	jb	_P3_2,00134$
                                    912 ;	main.c:205: time = 0;
      00030A E4               [12]  913 	clr	a
      00030B F5 6F            [12]  914 	mov	_time,a
      00030D F5 70            [12]  915 	mov	(_time + 1),a
                                    916 ;	main.c:206: time1 = 0;	
      00030F F5 71            [12]  917 	mov	_time1,a
      000311 F5 72            [12]  918 	mov	(_time1 + 1),a
      000313                        919 00134$:
                                    920 ;	main.c:208: if (button2 == 0)
      000313 20 B3 09         [24]  921 	jb	_P3_3,00136$
                                    922 ;	main.c:210: time = 0;
      000316 E4               [12]  923 	clr	a
      000317 F5 6F            [12]  924 	mov	_time,a
      000319 F5 70            [12]  925 	mov	(_time + 1),a
                                    926 ;	main.c:211: time1 = 0;	
      00031B F5 71            [12]  927 	mov	_time1,a
      00031D F5 72            [12]  928 	mov	(_time1 + 1),a
      00031F                        929 00136$:
                                    930 ;	main.c:213: if (led1 == 1 && led2 == 1)
      00031F 30 CC 06         [24]  931 	jnb	_P5_4,00138$
      000322 30 CD 03         [24]  932 	jnb	_P5_5,00138$
                                    933 ;	main.c:215: AUXR = 0x04;
      000325 75 8E 04         [24]  934 	mov	_AUXR,#0x04
      000328                        935 00138$:
                                    936 ;	main.c:220: P5 = input << 2;
      000328 E5 B0            [12]  937 	mov	a,_P3
      00032A FF               [12]  938 	mov	r7,a
      00032B 25 E0            [12]  939 	add	a,acc
      00032D F5 C8            [12]  940 	mov	_P5,a
      00032F E5 C8            [12]  941 	mov	a,_P5
      000331 25 E0            [12]  942 	add	a,acc
      000333 F5 C8            [12]  943 	mov	_P5,a
                                    944 ;	main.c:224: time++;
      000335 05 6F            [12]  945 	inc	_time
      000337 E4               [12]  946 	clr	a
      000338 B5 6F 02         [24]  947 	cjne	a,_time,00257$
      00033B 05 70            [12]  948 	inc	(_time + 1)
      00033D                        949 00257$:
                                    950 ;	main.c:227: }
      00033D 02 02 5F         [24]  951 	ljmp	00143$
                                    952 ;------------------------------------------------------------
                                    953 ;Allocation info for local variables in function 'timer0int'
                                    954 ;------------------------------------------------------------
                                    955 ;	main.c:228: void timer0int() __interrupt 1
                                    956 ;	-----------------------------------------
                                    957 ;	 function timer0int
                                    958 ;	-----------------------------------------
      000340                        959 _timer0int:
      000340 C0 21            [24]  960 	push	bits
      000342 C0 E0            [24]  961 	push	acc
      000344 C0 F0            [24]  962 	push	b
      000346 C0 82            [24]  963 	push	dpl
      000348 C0 83            [24]  964 	push	dph
      00034A C0 07            [24]  965 	push	(0+7)
      00034C C0 06            [24]  966 	push	(0+6)
      00034E C0 05            [24]  967 	push	(0+5)
      000350 C0 04            [24]  968 	push	(0+4)
      000352 C0 03            [24]  969 	push	(0+3)
      000354 C0 02            [24]  970 	push	(0+2)
      000356 C0 01            [24]  971 	push	(0+1)
      000358 C0 00            [24]  972 	push	(0+0)
      00035A C0 D0            [24]  973 	push	psw
      00035C 75 D0 00         [24]  974 	mov	psw,#0x00
                                    975 ;	main.c:230: TL0 = 0xFE;		//Initial timer value
      00035F 75 8A FE         [24]  976 	mov	_TL0,#0xfe
                                    977 ;	main.c:231: TH0 = 0xF0;		//Initial timer value
      000362 75 8C F0         [24]  978 	mov	_TH0,#0xf0
                                    979 ;	main.c:232: b=b+1;
      000365 E5 69            [12]  980 	mov	a,_b
      000367 04               [12]  981 	inc	a
                                    982 ;	main.c:233: if (b > 24)
      000368 F5 69            [12]  983 	mov  _b,a
      00036A 24 E7            [12]  984 	add	a,#0xff - 0x18
      00036C 50 5D            [24]  985 	jnc	00114$
                                    986 ;	main.c:236: if (run == 0)
      00036E 20 01 1E         [24]  987 	jb	_run,00104$
                                    988 ;	main.c:240: if (count > 69)
      000371 E5 6B            [12]  989 	mov	a,_count
      000373 24 BA            [12]  990 	add	a,#0xff - 0x45
      000375 50 0B            [24]  991 	jnc	00102$
                                    992 ;	main.c:242: run = 1;
                                    993 ;	assignBit
      000377 D2 01            [12]  994 	setb	_run
                                    995 ;	main.c:243: count1 = 0;
      000379 75 6C 00         [24]  996 	mov	_count1,#0x00
                                    997 ;	main.c:245: delay(1000);
      00037C 90 03 E8         [24]  998 	mov	dptr,#0x03e8
      00037F 12 01 C9         [24]  999 	lcall	_delay
      000382                       1000 00102$:
                                   1001 ;	main.c:251: ram[count] = input;
      000382 E5 6B            [12] 1002 	mov	a,_count
      000384 24 22            [12] 1003 	add	a,#_ram
      000386 F8               [12] 1004 	mov	r0,a
      000387 A6 B0            [24] 1005 	mov	@r0,_P3
                                   1006 ;	main.c:252: count=count+1;
      000389 E5 6B            [12] 1007 	mov	a,_count
      00038B FF               [12] 1008 	mov	r7,a
      00038C 04               [12] 1009 	inc	a
      00038D F5 6B            [12] 1010 	mov	_count,a
      00038F                       1011 00104$:
                                   1012 ;	main.c:255: if (run == 1)
      00038F 30 01 36         [24] 1013 	jnb	_run,00109$
                                   1014 ;	main.c:258: P5 = ram[count1] << 2;
      000392 E5 6C            [12] 1015 	mov	a,_count1
      000394 24 22            [12] 1016 	add	a,#_ram
      000396 F9               [12] 1017 	mov	r1,a
      000397 E7               [12] 1018 	mov	a,@r1
      000398 25 E0            [12] 1019 	add	a,acc
      00039A F5 C8            [12] 1020 	mov	_P5,a
      00039C E5 C8            [12] 1021 	mov	a,_P5
      00039E 25 E0            [12] 1022 	add	a,acc
      0003A0 F5 C8            [12] 1023 	mov	_P5,a
                                   1024 ;	main.c:259: if (count1 > 69)
      0003A2 E5 6C            [12] 1025 	mov	a,_count1
      0003A4 24 BA            [12] 1026 	add	a,#0xff - 0x45
      0003A6 50 1A            [24] 1027 	jnc	00107$
                                   1028 ;	main.c:261: for(i=0;i<70;i++)
      0003A8 75 6A 00         [24] 1029 	mov	_i,#0x00
      0003AB                       1030 00112$:
                                   1031 ;	main.c:263: ram[i] = 0;
      0003AB E5 6A            [12] 1032 	mov	a,_i
      0003AD 24 22            [12] 1033 	add	a,#_ram
      0003AF F8               [12] 1034 	mov	r0,a
      0003B0 76 00            [12] 1035 	mov	@r0,#0x00
                                   1036 ;	main.c:261: for(i=0;i<70;i++)
      0003B2 05 6A            [12] 1037 	inc	_i
      0003B4 74 BA            [12] 1038 	mov	a,#0x100 - 0x46
      0003B6 25 6A            [12] 1039 	add	a,_i
      0003B8 50 F1            [24] 1040 	jnc	00112$
                                   1041 ;	main.c:266: count1 = 0;
      0003BA 75 6C 00         [24] 1042 	mov	_count1,#0x00
                                   1043 ;	main.c:267: count = 0;
      0003BD 75 6B 00         [24] 1044 	mov	_count,#0x00
                                   1045 ;	main.c:268: run = 0;
                                   1046 ;	assignBit
      0003C0 C2 01            [12] 1047 	clr	_run
      0003C2                       1048 00107$:
                                   1049 ;	main.c:276: count1=count1+1;
      0003C2 E5 6C            [12] 1050 	mov	a,_count1
      0003C4 FF               [12] 1051 	mov	r7,a
      0003C5 04               [12] 1052 	inc	a
      0003C6 F5 6C            [12] 1053 	mov	_count1,a
      0003C8                       1054 00109$:
                                   1055 ;	main.c:278: b = 0;
      0003C8 75 69 00         [24] 1056 	mov	_b,#0x00
      0003CB                       1057 00114$:
                                   1058 ;	main.c:281: }
      0003CB D0 D0            [24] 1059 	pop	psw
      0003CD D0 00            [24] 1060 	pop	(0+0)
      0003CF D0 01            [24] 1061 	pop	(0+1)
      0003D1 D0 02            [24] 1062 	pop	(0+2)
      0003D3 D0 03            [24] 1063 	pop	(0+3)
      0003D5 D0 04            [24] 1064 	pop	(0+4)
      0003D7 D0 05            [24] 1065 	pop	(0+5)
      0003D9 D0 06            [24] 1066 	pop	(0+6)
      0003DB D0 07            [24] 1067 	pop	(0+7)
      0003DD D0 83            [24] 1068 	pop	dph
      0003DF D0 82            [24] 1069 	pop	dpl
      0003E1 D0 F0            [24] 1070 	pop	b
      0003E3 D0 E0            [24] 1071 	pop	acc
      0003E5 D0 21            [24] 1072 	pop	bits
      0003E7 32               [24] 1073 	reti
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'interrupt0int'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	main.c:282: void interrupt0int() __interrupt 0 __using 1
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function interrupt0int
                                   1080 ;	-----------------------------------------
      0003E8                       1081 _interrupt0int:
                           00000F  1082 	ar7 = 0x0f
                           00000E  1083 	ar6 = 0x0e
                           00000D  1084 	ar5 = 0x0d
                           00000C  1085 	ar4 = 0x0c
                           00000B  1086 	ar3 = 0x0b
                           00000A  1087 	ar2 = 0x0a
                           000009  1088 	ar1 = 0x09
                           000008  1089 	ar0 = 0x08
                                   1090 ;	main.c:284: IS_POWER_DOWN = 0;
                                   1091 ;	assignBit
      0003E8 C2 02            [12] 1092 	clr	_IS_POWER_DOWN
                                   1093 ;	main.c:289: EX1 = 0;
                                   1094 ;	main.c:293: }
      0003EA 32               [24] 1095 	reti
                                   1096 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1097 ;	eliminated unneeded push/pop psw
                                   1098 ;	eliminated unneeded push/pop dpl
                                   1099 ;	eliminated unneeded push/pop dph
                                   1100 ;	eliminated unneeded push/pop b
                                   1101 ;	eliminated unneeded push/pop acc
                                   1102 ;------------------------------------------------------------
                                   1103 ;Allocation info for local variables in function 'interrupt1int'
                                   1104 ;------------------------------------------------------------
                                   1105 ;	main.c:294: void interrupt1int() __interrupt 2 __using 1
                                   1106 ;	-----------------------------------------
                                   1107 ;	 function interrupt1int
                                   1108 ;	-----------------------------------------
      0003EB                       1109 _interrupt1int:
                                   1110 ;	main.c:296: IS_POWER_DOWN = 0;
                                   1111 ;	assignBit
      0003EB C2 02            [12] 1112 	clr	_IS_POWER_DOWN
                                   1113 ;	main.c:301: EX1 = 0;
                                   1114 ;	main.c:303: }
      0003ED 32               [24] 1115 	reti
                                   1116 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1117 ;	eliminated unneeded push/pop psw
                                   1118 ;	eliminated unneeded push/pop dpl
                                   1119 ;	eliminated unneeded push/pop dph
                                   1120 ;	eliminated unneeded push/pop b
                                   1121 ;	eliminated unneeded push/pop acc
                                   1122 ;------------------------------------------------------------
                                   1123 ;Allocation info for local variables in function 'timer2int'
                                   1124 ;------------------------------------------------------------
                                   1125 ;	main.c:304: void timer2int() __interrupt 12 __using 1
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function timer2int
                                   1128 ;	-----------------------------------------
      0003EE                       1129 _timer2int:
      0003EE C0 E0            [24] 1130 	push	acc
      0003F0 C0 D0            [24] 1131 	push	psw
      0003F2 75 D0 08         [24] 1132 	mov	psw,#0x08
                                   1133 ;	main.c:306: T2L = 0xCD;		//Initial timer value
      0003F5 75 D6 CD         [24] 1134 	mov	_T2L,#0xcd
                                   1135 ;	main.c:307: T2H = 0xD4;	
      0003F8 75 D7 D4         [24] 1136 	mov	_T2H,#0xd4
                                   1137 ;	main.c:308: num=num+1;
      0003FB E5 6D            [12] 1138 	mov	a,_num
      0003FD 04               [12] 1139 	inc	a
      0003FE F5 6D            [12] 1140 	mov	_num,a
                                   1141 ;	main.c:309: if (num > tone)
      000400 C3               [12] 1142 	clr	c
      000401 E5 73            [12] 1143 	mov	a,_tone
      000403 95 6D            [12] 1144 	subb	a,_num
      000405 50 05            [24] 1145 	jnc	00103$
                                   1146 ;	main.c:311: num = 0;
      000407 75 6D 00         [24] 1147 	mov	_num,#0x00
                                   1148 ;	main.c:312: speaker = !speaker;
      00040A B2 B0            [12] 1149 	cpl	_P3_0
      00040C                       1150 00103$:
                                   1151 ;	main.c:314: }
      00040C D0 D0            [24] 1152 	pop	psw
      00040E D0 E0            [24] 1153 	pop	acc
      000410 32               [24] 1154 	reti
                                   1155 ;	eliminated unneeded push/pop dpl
                                   1156 ;	eliminated unneeded push/pop dph
                                   1157 ;	eliminated unneeded push/pop b
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
                                   1160 	.area XINIT   (CODE)
                                   1161 	.area CABS    (ABS,CODE)
