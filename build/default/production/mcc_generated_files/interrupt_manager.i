
# 1 "mcc_generated_files/interrupt_manager.c"

# 53 "mcc_generated_files/interrupt_manager.h"
char flag_codigo=0;
unsigned int cuenta=0;
unsigned char cont;
char texto[10];
unsigned char timer_aux;
unsigned char tiempo[70];
unsigned long codigo_ir;

# 119
void INTERRUPT_Initialize (void);

# 18 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18F-K_DFP/1.8.249/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;


# 7 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18F-K_DFP/1.8.249/xc8\pic\include\builtins.h"
#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __nonreentrant void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(uint8_t);

# 52 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18F-K_DFP/1.8.249/xc8\pic\include\proc\pic18f25k50.h"
extern volatile unsigned char SRCON1 __at(0xF57);

asm("SRCON1 equ 0F57h");


typedef union {
struct {
unsigned SRRC1E :1;
unsigned SRRC2E :1;
unsigned SRRCKE :1;
unsigned SRRPE :1;
unsigned SRSC1E :1;
unsigned SRSC2E :1;
unsigned SRSCKE :1;
unsigned SRSPE :1;
};
} SRCON1bits_t;
extern volatile SRCON1bits_t SRCON1bits __at(0xF57);

# 114
extern volatile unsigned char SRCON0 __at(0xF58);

asm("SRCON0 equ 0F58h");


typedef union {
struct {
unsigned SRPR :1;
unsigned SRPS :1;
unsigned SRNQEN :1;
unsigned SRQEN :1;
unsigned SRCLK :3;
unsigned SRLEN :1;
};
struct {
unsigned :4;
unsigned SRCLK0 :1;
unsigned SRCLK1 :1;
unsigned SRCLK2 :1;
};
} SRCON0bits_t;
extern volatile SRCON0bits_t SRCON0bits __at(0xF58);

# 185
extern volatile unsigned char CCPTMRS __at(0xF59);

asm("CCPTMRS equ 0F59h");


typedef union {
struct {
unsigned C1TSEL :1;
unsigned :2;
unsigned C2TSEL :1;
};
} CCPTMRSbits_t;
extern volatile CCPTMRSbits_t CCPTMRSbits __at(0xF59);

# 212
extern volatile unsigned char VREGCON __at(0xF5A);

asm("VREGCON equ 0F5Ah");


typedef union {
struct {
unsigned VREGPM :2;
};
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __at(0xF5A);

# 232
extern volatile unsigned char ANSELA __at(0xF5B);

asm("ANSELA equ 0F5Bh");


typedef union {
struct {
unsigned ANSA0 :1;
unsigned ANSA1 :1;
unsigned ANSA2 :1;
unsigned ANSA3 :1;
unsigned :1;
unsigned ANSA5 :1;
};
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __at(0xF5B);

# 277
extern volatile unsigned char ANSELB __at(0xF5C);

asm("ANSELB equ 0F5Ch");


typedef union {
struct {
unsigned ANSB0 :1;
unsigned ANSB1 :1;
unsigned ANSB2 :1;
unsigned ANSB3 :1;
unsigned ANSB4 :1;
unsigned ANSB5 :1;
};
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __at(0xF5C);

# 327
extern volatile unsigned char ANSELC __at(0xF5D);

asm("ANSELC equ 0F5Dh");


typedef union {
struct {
unsigned :2;
unsigned ANSC2 :1;
unsigned :3;
unsigned ANSC6 :1;
unsigned ANSC7 :1;
};
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __at(0xF5D);

# 361
extern volatile unsigned char UCON __at(0xF60);

asm("UCON equ 0F60h");


typedef union {
struct {
unsigned :1;
unsigned SUSPND :1;
unsigned RESUME :1;
unsigned USBEN :1;
unsigned PKTDIS :1;
unsigned SE0 :1;
unsigned PPBRST :1;
};
} UCONbits_t;
extern volatile UCONbits_t UCONbits __at(0xF60);

# 412
extern volatile unsigned char USTAT __at(0xF61);

asm("USTAT equ 0F61h");


typedef union {
struct {
unsigned :1;
unsigned PPBI :1;
unsigned DIR :1;
unsigned ENDP :4;
};
struct {
unsigned :3;
unsigned ENDP0 :1;
unsigned ENDP1 :1;
unsigned ENDP2 :1;
unsigned ENDP3 :1;
};
} USTATbits_t;
extern volatile USTATbits_t USTATbits __at(0xF61);

# 472
extern volatile unsigned char UCFG __at(0xF62);

asm("UCFG equ 0F62h");


typedef union {
struct {
unsigned PPB :2;
unsigned FSEN :1;
unsigned UTRDIS :1;
unsigned UPUEN :1;
unsigned :1;
unsigned UOEMON :1;
unsigned UTEYE :1;
};
struct {
unsigned PPB0 :1;
unsigned PPB1 :1;
};
struct {
unsigned UPP0 :1;
unsigned UPP1 :1;
};
} UCFGbits_t;
extern volatile UCFGbits_t UCFGbits __at(0xF62);

# 551
extern volatile unsigned char UADDR __at(0xF63);

asm("UADDR equ 0F63h");


typedef union {
struct {
unsigned ADDR :7;
};
struct {
unsigned ADDR0 :1;
unsigned ADDR1 :1;
unsigned ADDR2 :1;
unsigned ADDR3 :1;
unsigned ADDR4 :1;
unsigned ADDR5 :1;
unsigned ADDR6 :1;
};
} UADDRbits_t;
extern volatile UADDRbits_t UADDRbits __at(0xF63);

# 615
extern volatile unsigned char UIE __at(0xF64);

asm("UIE equ 0F64h");


typedef union {
struct {
unsigned URSTIE :1;
unsigned UERRIE :1;
unsigned ACTVIE :1;
unsigned TRNIE :1;
unsigned IDLEIE :1;
unsigned STALLIE :1;
unsigned SOFIE :1;
};
} UIEbits_t;
extern volatile UIEbits_t UIEbits __at(0xF64);

# 671
extern volatile unsigned char UIR __at(0xF65);

asm("UIR equ 0F65h");


typedef union {
struct {
unsigned URSTIF :1;
unsigned UERRIF :1;
unsigned ACTVIF :1;
unsigned TRNIF :1;
unsigned IDLEIF :1;
unsigned STALLIF :1;
unsigned SOFIF :1;
};
} UIRbits_t;
extern volatile UIRbits_t UIRbits __at(0xF65);

# 727
extern volatile unsigned char UEIE __at(0xF66);

asm("UEIE equ 0F66h");


typedef union {
struct {
unsigned PIDEE :1;
unsigned CRC5EE :1;
unsigned CRC16EE :1;
unsigned DFN8EE :1;
unsigned BTOEE :1;
unsigned :2;
unsigned BTSEE :1;
};
} UEIEbits_t;
extern volatile UEIEbits_t UEIEbits __at(0xF66);

# 778
extern volatile unsigned char UEIR __at(0xF67);

asm("UEIR equ 0F67h");


typedef union {
struct {
unsigned PIDEF :1;
unsigned CRC5EF :1;
unsigned CRC16EF :1;
unsigned DFN8EF :1;
unsigned BTOEF :1;
unsigned :2;
unsigned BTSEF :1;
};
} UEIRbits_t;
extern volatile UEIRbits_t UEIRbits __at(0xF67);

# 829
extern volatile unsigned short UFRM __at(0xF68);

asm("UFRM equ 0F68h");




extern volatile unsigned char UFRML __at(0xF68);

asm("UFRML equ 0F68h");


typedef union {
struct {
unsigned FRM :8;
};
struct {
unsigned FRM0 :1;
unsigned FRM1 :1;
unsigned FRM2 :1;
unsigned FRM3 :1;
unsigned FRM4 :1;
unsigned FRM5 :1;
unsigned FRM6 :1;
unsigned FRM7 :1;
};
struct {
unsigned FRML :8;
};
} UFRMLbits_t;
extern volatile UFRMLbits_t UFRMLbits __at(0xF68);

# 914
extern volatile unsigned char UFRMH __at(0xF69);

asm("UFRMH equ 0F69h");


typedef union {
struct {
unsigned FRM :3;
};
struct {
unsigned FRM8 :1;
unsigned FRM9 :1;
unsigned FRM10 :1;
};
} UFRMHbits_t;
extern volatile UFRMHbits_t UFRMHbits __at(0xF69);

# 954
extern volatile unsigned char UEP0 __at(0xF6A);

asm("UEP0 equ 0F6Ah");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP0STALL :1;
unsigned EP0INEN :1;
unsigned EP0OUTEN :1;
unsigned EP0CONDIS :1;
unsigned EP0HSHK :1;
};
struct {
unsigned EPSTALL0 :1;
unsigned EPINEN0 :1;
unsigned EPOUTEN0 :1;
unsigned EPCONDIS0 :1;
unsigned EPHSHK0 :1;
};
} UEP0bits_t;
extern volatile UEP0bits_t UEP0bits __at(0xF6A);

# 1062
extern volatile unsigned char UEP1 __at(0xF6B);

asm("UEP1 equ 0F6Bh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP1STALL :1;
unsigned EP1INEN :1;
unsigned EP1OUTEN :1;
unsigned EP1CONDIS :1;
unsigned EP1HSHK :1;
};
struct {
unsigned EPSTALL1 :1;
unsigned EPINEN1 :1;
unsigned EPOUTEN1 :1;
unsigned EPCONDIS1 :1;
unsigned EPHSHK1 :1;
};
} UEP1bits_t;
extern volatile UEP1bits_t UEP1bits __at(0xF6B);

# 1170
extern volatile unsigned char UEP2 __at(0xF6C);

asm("UEP2 equ 0F6Ch");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP2STALL :1;
unsigned EP2INEN :1;
unsigned EP2OUTEN :1;
unsigned EP2CONDIS :1;
unsigned EP2HSHK :1;
};
struct {
unsigned EPSTALL2 :1;
unsigned EPINEN2 :1;
unsigned EPOUTEN2 :1;
unsigned EPCONDIS2 :1;
unsigned EPHSHK2 :1;
};
} UEP2bits_t;
extern volatile UEP2bits_t UEP2bits __at(0xF6C);

# 1278
extern volatile unsigned char UEP3 __at(0xF6D);

asm("UEP3 equ 0F6Dh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP3STALL :1;
unsigned EP3INEN :1;
unsigned EP3OUTEN :1;
unsigned EP3CONDIS :1;
unsigned EP3HSHK :1;
};
struct {
unsigned EPSTALL3 :1;
unsigned EPINEN3 :1;
unsigned EPOUTEN3 :1;
unsigned EPCONDIS3 :1;
unsigned EPHSHK3 :1;
};
} UEP3bits_t;
extern volatile UEP3bits_t UEP3bits __at(0xF6D);

# 1386
extern volatile unsigned char UEP4 __at(0xF6E);

asm("UEP4 equ 0F6Eh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP4STALL :1;
unsigned EP4INEN :1;
unsigned EP4OUTEN :1;
unsigned EP4CONDIS :1;
unsigned EP4HSHK :1;
};
struct {
unsigned EPSTALL4 :1;
unsigned EPINEN4 :1;
unsigned EPOUTEN4 :1;
unsigned EPCONDIS4 :1;
unsigned EPHSHK4 :1;
};
} UEP4bits_t;
extern volatile UEP4bits_t UEP4bits __at(0xF6E);

# 1494
extern volatile unsigned char UEP5 __at(0xF6F);

asm("UEP5 equ 0F6Fh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP5STALL :1;
unsigned EP5INEN :1;
unsigned EP5OUTEN :1;
unsigned EP5CONDIS :1;
unsigned EP5HSHK :1;
};
struct {
unsigned EPSTALL5 :1;
unsigned EPINEN5 :1;
unsigned EPOUTEN5 :1;
unsigned EPCONDIS5 :1;
unsigned EPHSHK5 :1;
};
} UEP5bits_t;
extern volatile UEP5bits_t UEP5bits __at(0xF6F);

# 1602
extern volatile unsigned char UEP6 __at(0xF70);

asm("UEP6 equ 0F70h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP6STALL :1;
unsigned EP6INEN :1;
unsigned EP6OUTEN :1;
unsigned EP6CONDIS :1;
unsigned EP6HSHK :1;
};
struct {
unsigned EPSTALL6 :1;
unsigned EPINEN6 :1;
unsigned EPOUTEN6 :1;
unsigned EPCONDIS6 :1;
unsigned EPHSHK6 :1;
};
} UEP6bits_t;
extern volatile UEP6bits_t UEP6bits __at(0xF70);

# 1710
extern volatile unsigned char UEP7 __at(0xF71);

asm("UEP7 equ 0F71h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP7STALL :1;
unsigned EP7INEN :1;
unsigned EP7OUTEN :1;
unsigned EP7CONDIS :1;
unsigned EP7HSHK :1;
};
struct {
unsigned EPSTALL7 :1;
unsigned EPINEN7 :1;
unsigned EPOUTEN7 :1;
unsigned EPCONDIS7 :1;
unsigned EPHSHK7 :1;
};
} UEP7bits_t;
extern volatile UEP7bits_t UEP7bits __at(0xF71);

# 1818
extern volatile unsigned char UEP8 __at(0xF72);

asm("UEP8 equ 0F72h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL8 :1;
unsigned EPINEN8 :1;
unsigned EPOUTEN8 :1;
unsigned EPCONDIS8 :1;
unsigned EPHSHK8 :1;
};
} UEP8bits_t;
extern volatile UEP8bits_t UEP8bits __at(0xF72);

# 1894
extern volatile unsigned char UEP9 __at(0xF73);

asm("UEP9 equ 0F73h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL9 :1;
unsigned EPINEN9 :1;
unsigned EPOUTEN9 :1;
unsigned EPCONDIS9 :1;
unsigned EPHSHK9 :1;
};
} UEP9bits_t;
extern volatile UEP9bits_t UEP9bits __at(0xF73);

# 1970
extern volatile unsigned char UEP10 __at(0xF74);

asm("UEP10 equ 0F74h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL10 :1;
unsigned EPINEN10 :1;
unsigned EPOUTEN10 :1;
unsigned EPCONDIS10 :1;
unsigned EPHSHK10 :1;
};
} UEP10bits_t;
extern volatile UEP10bits_t UEP10bits __at(0xF74);

# 2046
extern volatile unsigned char UEP11 __at(0xF75);

asm("UEP11 equ 0F75h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL11 :1;
unsigned EPINEN11 :1;
unsigned EPOUTEN11 :1;
unsigned EPCONDIS11 :1;
unsigned EPHSHK11 :1;
};
} UEP11bits_t;
extern volatile UEP11bits_t UEP11bits __at(0xF75);

# 2122
extern volatile unsigned char UEP12 __at(0xF76);

asm("UEP12 equ 0F76h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL12 :1;
unsigned EPINEN12 :1;
unsigned EPOUTEN12 :1;
unsigned EPCONDIS12 :1;
unsigned EPHSHK12 :1;
};
} UEP12bits_t;
extern volatile UEP12bits_t UEP12bits __at(0xF76);

# 2198
extern volatile unsigned char UEP13 __at(0xF77);

asm("UEP13 equ 0F77h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL13 :1;
unsigned EPINEN13 :1;
unsigned EPOUTEN13 :1;
unsigned EPCONDIS13 :1;
unsigned EPHSHK13 :1;
};
} UEP13bits_t;
extern volatile UEP13bits_t UEP13bits __at(0xF77);

# 2274
extern volatile unsigned char UEP14 __at(0xF78);

asm("UEP14 equ 0F78h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL14 :1;
unsigned EPINEN14 :1;
unsigned EPOUTEN14 :1;
unsigned EPCONDIS14 :1;
unsigned EPHSHK14 :1;
};
} UEP14bits_t;
extern volatile UEP14bits_t UEP14bits __at(0xF78);

# 2350
extern volatile unsigned char UEP15 __at(0xF79);

asm("UEP15 equ 0F79h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL15 :1;
unsigned EPINEN15 :1;
unsigned EPOUTEN15 :1;
unsigned EPCONDIS15 :1;
unsigned EPHSHK15 :1;
};
} UEP15bits_t;
extern volatile UEP15bits_t UEP15bits __at(0xF79);

# 2426
extern volatile unsigned char SLRCON __at(0xF7A);

asm("SLRCON equ 0F7Ah");


typedef union {
struct {
unsigned SLRA :1;
unsigned SLRB :1;
unsigned SLRC :1;
};
} SLRCONbits_t;
extern volatile SLRCONbits_t SLRCONbits __at(0xF7A);

# 2458
extern volatile unsigned char VREFCON2 __at(0xF7B);

asm("VREFCON2 equ 0F7Bh");


typedef union {
struct {
unsigned DACR :5;
};
struct {
unsigned DACR0 :1;
unsigned DACR1 :1;
unsigned DACR2 :1;
unsigned DACR3 :1;
unsigned DACR4 :1;
};
} VREFCON2bits_t;
extern volatile VREFCON2bits_t VREFCON2bits __at(0xF7B);

# 2510
extern volatile unsigned char VREFCON1 __at(0xF7C);

asm("VREFCON1 equ 0F7Ch");


typedef union {
struct {
unsigned DACNSS :1;
unsigned :1;
unsigned DACPSS :2;
unsigned :1;
unsigned DACOE :1;
unsigned DACLPS :1;
unsigned DACEN :1;
};
struct {
unsigned :2;
unsigned DACPSS0 :1;
unsigned DACPSS1 :1;
};
} VREFCON1bits_t;
extern volatile VREFCON1bits_t VREFCON1bits __at(0xF7C);

# 2571
extern volatile unsigned char VREFCON0 __at(0xF7D);

asm("VREFCON0 equ 0F7Dh");


typedef union {
struct {
unsigned :2;
unsigned TSRNG :1;
unsigned TSEN :1;
unsigned FVRS :2;
unsigned FVRST :1;
unsigned FVREN :1;
};
struct {
unsigned :4;
unsigned FVRS0 :1;
unsigned FVRS1 :1;
};
} VREFCON0bits_t;
extern volatile VREFCON0bits_t VREFCON0bits __at(0xF7D);

# 2631
extern volatile unsigned char PMD0 __at(0xF7E);

asm("PMD0 equ 0F7Eh");


typedef union {
struct {
unsigned TMR1MD :1;
unsigned TMR2MD :1;
unsigned TMR3MD :1;
unsigned :1;
unsigned ACTMD :1;
unsigned USBMD :1;
unsigned UARTMD :1;
};
struct {
unsigned :4;
unsigned STMD :1;
unsigned :1;
unsigned UART1MD :1;
};
struct {
unsigned :1;
unsigned SPI1MD :1;
unsigned SPI2MD :1;
};
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __at(0xF7E);

# 2713
extern volatile unsigned char PMD1 __at(0xF7F);

asm("PMD1 equ 0F7Fh");


typedef union {
struct {
unsigned CCP1MD :1;
unsigned CCP2MD :1;
unsigned ADCMD :1;
unsigned CMP1MD :1;
unsigned CMP2MD :1;
unsigned CTMUMD :1;
unsigned MSSPMD :1;
};
struct {
unsigned :6;
unsigned SSP1MD :1;
};
struct {
unsigned :6;
unsigned MSSP1MD :1;
};
struct {
unsigned EMBMD :1;
};
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __at(0xF7F);

# 2795
extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned T0CKI :1;
unsigned AN4 :1;
unsigned OSC2 :1;
};
struct {
unsigned :2;
unsigned VREFM :1;
unsigned VREFP :1;
unsigned :1;
unsigned LVDIN :1;
};
struct {
unsigned :5;
unsigned HLVDIN :1;
};
struct {
unsigned ULPWUIN :1;
unsigned :6;
unsigned RJPU :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 2947
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned INT0 :1;
unsigned INT1 :1;
unsigned INT2 :1;
unsigned :2;
unsigned PGM :1;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 3057
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned CCP1 :1;
unsigned :3;
unsigned TX :1;
unsigned RX :1;
};
struct {
unsigned T13CKI :1;
unsigned :1;
unsigned P1A :1;
unsigned :3;
unsigned CK :1;
unsigned DT :1;
};
struct {
unsigned :1;
unsigned CCP2 :1;
unsigned PA1 :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 3199
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned :3;
unsigned RE3 :1;
};
struct {
unsigned :3;
unsigned CCP9E :1;
};
struct {
unsigned :3;
unsigned PC3E :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 3238
extern volatile unsigned char WPUB __at(0xF85);

asm("WPUB equ 0F85h");


typedef union {
struct {
unsigned WPUB0 :1;
unsigned WPUB1 :1;
unsigned WPUB2 :1;
unsigned WPUB3 :1;
unsigned WPUB4 :1;
unsigned WPUB5 :1;
unsigned WPUB6 :1;
unsigned WPUB7 :1;
};
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __at(0xF85);

# 3300
extern volatile unsigned char IOCB __at(0xF86);

asm("IOCB equ 0F86h");


typedef union {
struct {
unsigned :4;
unsigned IOCB4 :1;
unsigned IOCB5 :1;
unsigned IOCB6 :1;
unsigned IOCB7 :1;
};
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __at(0xF86);

# 3339
extern volatile unsigned char IOCC __at(0xF87);

asm("IOCC equ 0F87h");


typedef union {
struct {
unsigned IOCC0 :1;
unsigned IOCC1 :1;
unsigned IOCC2 :1;
unsigned :1;
unsigned IOCC4 :1;
unsigned IOCC5 :1;
unsigned IOCC6 :1;
unsigned IOCC7 :1;
};
} IOCCbits_t;
extern volatile IOCCbits_t IOCCbits __at(0xF87);

# 3396
extern volatile unsigned char CTMUICON __at(0xF88);

asm("CTMUICON equ 0F88h");


typedef union {
struct {
unsigned IRNG :2;
unsigned ITRIM :6;
};
struct {
unsigned IRNG0 :1;
unsigned IRNG1 :1;
unsigned ITRIM0 :1;
unsigned ITRIM1 :1;
unsigned ITRIM2 :1;
unsigned ITRIM3 :1;
unsigned ITRIM4 :1;
unsigned ITRIM5 :1;
};
} CTMUICONbits_t;
extern volatile CTMUICONbits_t CTMUICONbits __at(0xF88);

# 3472
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
unsigned LATA7 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
unsigned LA7 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 3584
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 3696
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned :1;
unsigned LC4 :1;
unsigned LC5 :1;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 3798
extern volatile unsigned char CTMUCONL __at(0xF8E);

asm("CTMUCONL equ 0F8Eh");


extern volatile unsigned char CTMUCON1 __at(0xF8E);

asm("CTMUCON1 equ 0F8Eh");


typedef union {
struct {
unsigned EDG1STAT :1;
unsigned EDG2STAT :1;
unsigned EDG1SEL :2;
unsigned EDG1POL :1;
unsigned EDG2SEL :2;
unsigned EDG2POL :1;
};
struct {
unsigned :2;
unsigned EDG1SEL0 :1;
unsigned EDG1SEL1 :1;
unsigned :1;
unsigned EDG2SEL0 :1;
unsigned EDG2SEL1 :1;
};
} CTMUCONLbits_t;
extern volatile CTMUCONLbits_t CTMUCONLbits __at(0xF8E);

# 3879
typedef union {
struct {
unsigned EDG1STAT :1;
unsigned EDG2STAT :1;
unsigned EDG1SEL :2;
unsigned EDG1POL :1;
unsigned EDG2SEL :2;
unsigned EDG2POL :1;
};
struct {
unsigned :2;
unsigned EDG1SEL0 :1;
unsigned EDG1SEL1 :1;
unsigned :1;
unsigned EDG2SEL0 :1;
unsigned EDG2SEL1 :1;
};
} CTMUCON1bits_t;
extern volatile CTMUCON1bits_t CTMUCON1bits __at(0xF8E);

# 3952
extern volatile unsigned char CTMUCONH __at(0xF8F);

asm("CTMUCONH equ 0F8Fh");


extern volatile unsigned char CTMUCON0 __at(0xF8F);

asm("CTMUCON0 equ 0F8Fh");


typedef union {
struct {
unsigned CTTRIG :1;
unsigned IDISSEN :1;
unsigned EDGSEQEN :1;
unsigned EDGEN :1;
unsigned TGEN :1;
unsigned CTMUSIDL :1;
unsigned :1;
unsigned CTMUEN :1;
};
struct {
unsigned TRIGEN :1;
unsigned :4;
unsigned SIDL :1;
unsigned :1;
unsigned ON :1;
};
} CTMUCONHbits_t;
extern volatile CTMUCONHbits_t CTMUCONHbits __at(0xF8F);

# 4034
typedef union {
struct {
unsigned CTTRIG :1;
unsigned IDISSEN :1;
unsigned EDGSEQEN :1;
unsigned EDGEN :1;
unsigned TGEN :1;
unsigned CTMUSIDL :1;
unsigned :1;
unsigned CTMUEN :1;
};
struct {
unsigned TRIGEN :1;
unsigned :4;
unsigned SIDL :1;
unsigned :1;
unsigned ON :1;
};
} CTMUCON0bits_t;
extern volatile CTMUCON0bits_t CTMUCON0bits __at(0xF8F);

# 4108
extern volatile unsigned short CCPR2 __at(0xF90);

asm("CCPR2 equ 0F90h");




extern volatile unsigned char CCPR2L __at(0xF90);

asm("CCPR2L equ 0F90h");


typedef union {
struct {
unsigned CCPR2L :8;
};
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __at(0xF90);

# 4135
extern volatile unsigned char CCPR2H __at(0xF91);

asm("CCPR2H equ 0F91h");


typedef union {
struct {
unsigned CCPR2H :8;
};
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __at(0xF91);

# 4155
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 4270
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 4377
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 4492
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 4599
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __at(0xF94);

asm("DDRC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned :3;
unsigned RC6 :1;
unsigned RC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 4692
typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned :3;
unsigned RC6 :1;
unsigned RC7 :1;
};
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __at(0xF94);

# 4777
extern volatile unsigned char CCP2CON __at(0xF97);

asm("CCP2CON equ 0F97h");


extern volatile unsigned char ECCP2CON __at(0xF97);

asm("ECCP2CON equ 0F97h");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xF97);

# 4859
typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __at(0xF97);

# 4933
extern volatile unsigned char CM1CON0 __at(0xF98);

asm("CM1CON0 equ 0F98h");


typedef union {
struct {
unsigned C1CH :2;
unsigned C1R :1;
unsigned C1SP :1;
unsigned C1POL :1;
unsigned C1OE :1;
unsigned C1OUT :1;
unsigned C1ON :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned CREF :1;
unsigned :1;
unsigned CPOL :1;
unsigned COE :1;
unsigned COUT1 :1;
unsigned CON :1;
};
struct {
unsigned CCH :2;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
};
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __at(0xF98);

# 5056
extern volatile unsigned char CM2CON0 __at(0xF99);

asm("CM2CON0 equ 0F99h");


typedef union {
struct {
unsigned C2CH :2;
unsigned C2R :1;
unsigned C2SP :1;
unsigned C2POL :1;
unsigned C2OE :1;
unsigned C2OUT :1;
unsigned C2ON :1;
};
struct {
unsigned C2CH0 :1;
unsigned C2CH1 :1;
unsigned CREF :1;
unsigned :1;
unsigned CPOL :1;
unsigned COE :1;
unsigned COUT2 :1;
unsigned CON :1;
};
struct {
unsigned CCH :2;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
};
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __at(0xF99);

# 5179
extern volatile unsigned char CM2CON1 __at(0xF9A);

asm("CM2CON1 equ 0F9Ah");


typedef union {
struct {
unsigned C2SYNC :1;
unsigned C1SYNC :1;
unsigned C2HYS :1;
unsigned C1HYS :1;
unsigned C2RSEL :1;
unsigned C1RSEL :1;
unsigned MC2OUT :1;
unsigned MC1OUT :1;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0xF9A);

# 5241
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN :7;
unsigned SPLLMULT :1;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
unsigned TUN6 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 5311
extern volatile unsigned char HLVDCON __at(0xF9C);

asm("HLVDCON equ 0F9Ch");


typedef union {
struct {
unsigned HLVDL :4;
unsigned HLVDEN :1;
unsigned IRVST :1;
unsigned BGVST :1;
unsigned VDIRMAG :1;
};
struct {
unsigned HLVDL0 :1;
unsigned HLVDL1 :1;
unsigned HLVDL2 :1;
unsigned HLVDL3 :1;
};
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __at(0xF9C);

# 5381
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
unsigned ACTIE :1;
};
struct {
unsigned :3;
unsigned SSP1IE :1;
unsigned TX1IE :1;
unsigned RC1IE :1;
unsigned :1;
unsigned STIE :1;
};
struct {
unsigned :7;
unsigned PSPIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 5480
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
unsigned ACTIF :1;
};
struct {
unsigned :3;
unsigned SSP1IF :1;
unsigned TX1IF :1;
unsigned RC1IF :1;
unsigned :1;
unsigned STIF :1;
};
struct {
unsigned :7;
unsigned PSPIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 5579
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
unsigned ADIP :1;
unsigned ACTIP :1;
};
struct {
unsigned :3;
unsigned SSP1IP :1;
unsigned TX1IP :1;
unsigned RC1IP :1;
unsigned :1;
unsigned STIP :1;
};
struct {
unsigned :7;
unsigned PSPIP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 5678
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR3IE :1;
unsigned HLVDIE :1;
unsigned BCLIE :1;
unsigned EEIE :1;
unsigned C2IE :1;
unsigned C1IE :1;
unsigned OSCFIE :1;
};
struct {
unsigned :2;
unsigned LVDIE :1;
unsigned BCL1IE :1;
unsigned :1;
unsigned CM2IE :1;
unsigned CM1IE :1;
};
struct {
unsigned :6;
unsigned CMIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 5777
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR3IF :1;
unsigned HLVDIF :1;
unsigned BCLIF :1;
unsigned EEIF :1;
unsigned C2IF :1;
unsigned C1IF :1;
unsigned OSCFIF :1;
};
struct {
unsigned :2;
unsigned LVDIF :1;
unsigned BCL1IF :1;
unsigned :1;
unsigned CM2IF :1;
unsigned CM1IF :1;
};
struct {
unsigned :6;
unsigned CMIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 5876
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned TMR3IP :1;
unsigned HLVDIP :1;
unsigned BCLIP :1;
unsigned EEIP :1;
unsigned C2IP :1;
unsigned C1IP :1;
unsigned OSCFIP :1;
};
struct {
unsigned :2;
unsigned LVDIP :1;
unsigned BCL1IP :1;
unsigned :1;
unsigned CM2IP :1;
unsigned CM1IP :1;
};
struct {
unsigned :6;
unsigned CMIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 5975
extern volatile unsigned char PIE3 __at(0xFA3);

asm("PIE3 equ 0FA3h");


typedef union {
struct {
unsigned TMR1GIE :1;
unsigned TMR3GIE :1;
unsigned USBIE :1;
unsigned CTMUIE :1;
};
struct {
unsigned RXB0IE :1;
unsigned RXB1IE :1;
unsigned TXB0IE :1;
unsigned TXB1IE :1;
};
struct {
unsigned :1;
unsigned RXBNIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0xFA3);

# 6048
extern volatile unsigned char PIR3 __at(0xFA4);

asm("PIR3 equ 0FA4h");


typedef union {
struct {
unsigned TMR1GIF :1;
unsigned TMR3GIF :1;
unsigned USBIF :1;
unsigned CTMUIF :1;
};
struct {
unsigned :1;
unsigned RXBNIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0xFA4);

# 6095
extern volatile unsigned char IPR3 __at(0xFA5);

asm("IPR3 equ 0FA5h");


typedef union {
struct {
unsigned TMR1GIP :1;
unsigned TMR3GIP :1;
unsigned USBIP :1;
unsigned CTMUIP :1;
};
struct {
unsigned :1;
unsigned RXBNIP :1;
};
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __at(0xFA5);

# 6142
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned :1;
unsigned CFGS :1;
unsigned EEPGD :1;
};
struct {
unsigned :6;
unsigned EEFS :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 6208
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");


typedef union {
struct {
unsigned EECON2 :8;
};
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __at(0xFA7);

# 6228
extern volatile unsigned char EEDATA __at(0xFA8);

asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __at(0xFA9);

asm("EEADR equ 0FA9h");




extern volatile unsigned char RCSTA1 __at(0xFAB);

asm("RCSTA1 equ 0FABh");


extern volatile unsigned char RCSTA __at(0xFAB);

asm("RCSTA equ 0FABh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :5;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAB);

# 6349
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :5;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAB);

# 6448
extern volatile unsigned char TXSTA1 __at(0xFAC);

asm("TXSTA1 equ 0FACh");


extern volatile unsigned char TXSTA __at(0xFAC);

asm("TXSTA equ 0FACh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :2;
unsigned BRGH1 :1;
};
struct {
unsigned :7;
unsigned CSRC1 :1;
};
struct {
unsigned :3;
unsigned SENDB1 :1;
};
struct {
unsigned :4;
unsigned SYNC1 :1;
};
struct {
unsigned :1;
unsigned TRMT1 :1;
};
struct {
unsigned :6;
unsigned TX91 :1;
};
struct {
unsigned TX9D1 :1;
};
struct {
unsigned :5;
unsigned TXEN1 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAC);

# 6599
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :2;
unsigned BRGH1 :1;
};
struct {
unsigned :7;
unsigned CSRC1 :1;
};
struct {
unsigned :3;
unsigned SENDB1 :1;
};
struct {
unsigned :4;
unsigned SYNC1 :1;
};
struct {
unsigned :1;
unsigned TRMT1 :1;
};
struct {
unsigned :6;
unsigned TX91 :1;
};
struct {
unsigned TX9D1 :1;
};
struct {
unsigned :5;
unsigned TXEN1 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAC);

# 6742
extern volatile unsigned char TXREG1 __at(0xFAD);

asm("TXREG1 equ 0FADh");


extern volatile unsigned char TXREG __at(0xFAD);

asm("TXREG equ 0FADh");


typedef union {
struct {
unsigned TXREG1 :8;
};
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __at(0xFAD);

# 6765
typedef union {
struct {
unsigned TXREG1 :8;
};
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __at(0xFAD);

# 6780
extern volatile unsigned char RCREG1 __at(0xFAE);

asm("RCREG1 equ 0FAEh");


extern volatile unsigned char RCREG __at(0xFAE);

asm("RCREG equ 0FAEh");


typedef union {
struct {
unsigned RCREG1 :8;
};
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __at(0xFAE);

# 6803
typedef union {
struct {
unsigned RCREG1 :8;
};
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __at(0xFAE);

# 6818
extern volatile unsigned char SPBRG1 __at(0xFAF);

asm("SPBRG1 equ 0FAFh");


extern volatile unsigned char SPBRG __at(0xFAF);

asm("SPBRG equ 0FAFh");


typedef union {
struct {
unsigned SPBRG1 :8;
};
struct {
unsigned BRG0 :1;
unsigned BRG1 :1;
unsigned BRG2 :1;
unsigned BRG3 :1;
unsigned BRG4 :1;
unsigned BRG5 :1;
unsigned BRG6 :1;
unsigned BRG7 :1;
};
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __at(0xFAF);

# 6891
typedef union {
struct {
unsigned SPBRG1 :8;
};
struct {
unsigned BRG0 :1;
unsigned BRG1 :1;
unsigned BRG2 :1;
unsigned BRG3 :1;
unsigned BRG4 :1;
unsigned BRG5 :1;
unsigned BRG6 :1;
unsigned BRG7 :1;
};
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __at(0xFAF);

# 6956
extern volatile unsigned char SPBRGH1 __at(0xFB0);

asm("SPBRGH1 equ 0FB0h");


extern volatile unsigned char SPBRGH __at(0xFB0);

asm("SPBRGH equ 0FB0h");


typedef union {
struct {
unsigned SPBRGH1 :8;
};
struct {
unsigned BRG8 :1;
unsigned BRG9 :1;
unsigned BRG10 :1;
unsigned BRG11 :1;
unsigned BRG12 :1;
unsigned BRG13 :1;
unsigned BRG14 :1;
unsigned BRG15 :1;
};
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __at(0xFB0);

# 7029
typedef union {
struct {
unsigned SPBRGH1 :8;
};
struct {
unsigned BRG8 :1;
unsigned BRG9 :1;
unsigned BRG10 :1;
unsigned BRG11 :1;
unsigned BRG12 :1;
unsigned BRG13 :1;
unsigned BRG14 :1;
unsigned BRG15 :1;
};
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __at(0xFB0);

# 7094
extern volatile unsigned char T3CON __at(0xFB1);

asm("T3CON equ 0FB1h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T3SYNC :1;
};
struct {
unsigned TMR3ON :1;
unsigned RD16 :1;
unsigned nT3SYNC :1;
unsigned SOSCEN :1;
unsigned T3CKPS :2;
unsigned TMR3CS :2;
};
struct {
unsigned :1;
unsigned T3RD16 :1;
unsigned T3SYNC :1;
unsigned T3SOSCEN :1;
unsigned T3CKPS0 :1;
unsigned T3CKPS1 :1;
unsigned TMR3CS0 :1;
unsigned TMR3CS1 :1;
};
struct {
unsigned :3;
unsigned T3OSCEN :1;
};
struct {
unsigned :3;
unsigned SOSCEN3 :1;
unsigned :3;
unsigned RD163 :1;
};
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __at(0xFB1);

# 7223
extern volatile unsigned short TMR3 __at(0xFB2);

asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __at(0xFB2);

asm("TMR3L equ 0FB2h");


typedef union {
struct {
unsigned TMR3L :8;
};
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __at(0xFB2);

# 7250
extern volatile unsigned char TMR3H __at(0xFB3);

asm("TMR3H equ 0FB3h");


typedef union {
struct {
unsigned TMR3H :8;
};
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __at(0xFB3);

# 7270
extern volatile unsigned char T3GCON __at(0xFB4);

asm("T3GCON equ 0FB4h");


typedef union {
struct {
unsigned :3;
unsigned T3GGO_NOT_T3DONE :1;
};
struct {
unsigned T3GSS :2;
unsigned T3GVAL :1;
unsigned T3GGO_nT3DONE :1;
unsigned T3GSPM :1;
unsigned T3GTM :1;
unsigned T3GPOL :1;
unsigned TMR3GE :1;
};
struct {
unsigned T3GSS0 :1;
unsigned T3GSS1 :1;
unsigned :1;
unsigned T3GGO :1;
};
struct {
unsigned :3;
unsigned NOT_T3DONE :1;
};
struct {
unsigned :3;
unsigned nT3DONE :1;
};
struct {
unsigned :3;
unsigned T3DONE :1;
};
struct {
unsigned :3;
unsigned T3GGO_NOT_DONE :1;
};
struct {
unsigned :3;
unsigned T3GGO_nDONE :1;
};
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __at(0xFB4);

# 7401
extern volatile unsigned char ACTCON __at(0xFB5);

asm("ACTCON equ 0FB5h");


extern volatile unsigned char STCON __at(0xFB5);

asm("STCON equ 0FB5h");


typedef union {
struct {
unsigned :1;
unsigned ACTORS :1;
unsigned :1;
unsigned ACTLOCK :1;
unsigned ACTSRC :1;
unsigned :1;
unsigned ACTUD :1;
unsigned ACTEN :1;
};
struct {
unsigned :1;
unsigned STOR :1;
unsigned :1;
unsigned STLOCK :1;
unsigned STSRC :1;
unsigned :1;
unsigned STUD :1;
unsigned STEN :1;
};
struct {
unsigned :1;
unsigned ACTOR :1;
unsigned :4;
unsigned ACTD :1;
unsigned ACTSEL :1;
};
} ACTCONbits_t;
extern volatile ACTCONbits_t ACTCONbits __at(0xFB5);

# 7508
typedef union {
struct {
unsigned :1;
unsigned ACTORS :1;
unsigned :1;
unsigned ACTLOCK :1;
unsigned ACTSRC :1;
unsigned :1;
unsigned ACTUD :1;
unsigned ACTEN :1;
};
struct {
unsigned :1;
unsigned STOR :1;
unsigned :1;
unsigned STLOCK :1;
unsigned STSRC :1;
unsigned :1;
unsigned STUD :1;
unsigned STEN :1;
};
struct {
unsigned :1;
unsigned ACTOR :1;
unsigned :4;
unsigned ACTD :1;
unsigned ACTSEL :1;
};
} STCONbits_t;
extern volatile STCONbits_t STCONbits __at(0xFB5);

# 7607
extern volatile unsigned char ECCP1AS __at(0xFB6);

asm("ECCP1AS equ 0FB6h");


typedef union {
struct {
unsigned PSS1BD :2;
unsigned PSS1AC :2;
unsigned ECCP1AS :3;
unsigned ECCP1ASE :1;
};
struct {
unsigned PSS1BD0 :1;
unsigned PSS1BD1 :1;
unsigned PSS1AC0 :1;
unsigned PSS1AC1 :1;
unsigned ECCP1AS0 :1;
unsigned ECCP1AS1 :1;
unsigned ECCP1AS2 :1;
unsigned CCP1ASE :1;
};
struct {
unsigned P1SSBD :2;
unsigned P1SSAC :2;
unsigned CCP1AS :3;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
};
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __at(0xFB6);

# 7741
extern volatile unsigned char PWM1CON __at(0xFB7);

asm("PWM1CON equ 0FB7h");


extern volatile unsigned char ECCP1DEL __at(0xFB7);

asm("ECCP1DEL equ 0FB7h");


typedef union {
struct {
unsigned P1DC :7;
unsigned P1RSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
unsigned PR1SEN :1;
};
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __at(0xFB7);

# 7820
typedef union {
struct {
unsigned P1DC :7;
unsigned P1RSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
unsigned PR1SEN :1;
};
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __at(0xFB7);

# 7891
extern volatile unsigned char BAUDCON1 __at(0xFB8);

asm("BAUDCON1 equ 0FB8h");


extern volatile unsigned char BAUDCON __at(0xFB8);

asm("BAUDCON equ 0FB8h");

extern volatile unsigned char BAUDCTL __at(0xFB8);

asm("BAUDCTL equ 0FB8h");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned CKTXP :1;
unsigned DTRXP :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned SCKP1 :1;
unsigned DTRXP1 :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __at(0xFB8);

# 8070
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned CKTXP :1;
unsigned DTRXP :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned SCKP1 :1;
unsigned DTRXP1 :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xFB8);

# 8234
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned CKTXP :1;
unsigned DTRXP :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned SCKP1 :1;
unsigned DTRXP1 :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xFB8);

# 8401
extern volatile unsigned char PSTR1CON __at(0xFB9);

asm("PSTR1CON equ 0FB9h");


typedef union {
struct {
unsigned STRA :1;
unsigned STRB :1;
unsigned STRC :1;
unsigned STRD :1;
unsigned STRSYNC :1;
};
struct {
unsigned STR1A :1;
unsigned STR1B :1;
unsigned STR1C :1;
unsigned STR1D :1;
unsigned STR1SYNC :1;
};
} PSTR1CONbits_t;
extern volatile PSTR1CONbits_t PSTR1CONbits __at(0xFB9);

# 8477
extern volatile unsigned char T2CON __at(0xFBA);

asm("T2CON equ 0FBAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned T2OUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFBA);

# 8548
extern volatile unsigned char PR2 __at(0xFBB);

asm("PR2 equ 0FBBh");


typedef union {
struct {
unsigned PR2 :8;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0xFBB);

# 8568
extern volatile unsigned char TMR2 __at(0xFBC);

asm("TMR2 equ 0FBCh");


typedef union {
struct {
unsigned TMR2 :8;
};
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __at(0xFBC);

# 8588
extern volatile unsigned char CCP1CON __at(0xFBD);

asm("CCP1CON equ 0FBDh");


extern volatile unsigned char ECCP1CON __at(0xFBD);

asm("ECCP1CON equ 0FBDh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBD);

# 8688
typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __at(0xFBD);

# 8780
extern volatile unsigned short CCPR1 __at(0xFBE);

asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __at(0xFBE);

asm("CCPR1L equ 0FBEh");


typedef union {
struct {
unsigned CCPR1L :8;
};
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __at(0xFBE);

# 8807
extern volatile unsigned char CCPR1H __at(0xFBF);

asm("CCPR1H equ 0FBFh");


typedef union {
struct {
unsigned CCPR1H :8;
};
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __at(0xFBF);

# 8827
extern volatile unsigned char ADCON2 __at(0xFC0);

asm("ADCON2 equ 0FC0h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :3;
unsigned :1;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0xFC0);

# 8898
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned NVCFG :2;
unsigned PVCFG :2;
unsigned :3;
unsigned TRIGSEL :1;
};
struct {
unsigned NVCFG0 :1;
unsigned NVCFG1 :1;
unsigned PVCFG0 :1;
unsigned PVCFG1 :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 8966
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :5;
};
struct {
unsigned :1;
unsigned DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 9061
extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSP1CON2 __at(0xFC5);

asm("SSP1CON2 equ 0FC5h");


extern volatile unsigned char SSPCON2 __at(0xFC5);

asm("SSPCON2 equ 0FC5h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __at(0xFC5);

# 9256
typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0xFC5);

# 9429
extern volatile unsigned char SSP1CON1 __at(0xFC6);

asm("SSP1CON1 equ 0FC6h");


extern volatile unsigned char SSPCON __at(0xFC6);

asm("SSPCON equ 0FC6h");

extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __at(0xFC6);

# 9556
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __at(0xFC6);

# 9668
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 9783
extern volatile unsigned char SSP1STAT __at(0xFC7);

asm("SSP1STAT equ 0FC7h");


extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned D :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
};
struct {
unsigned :5;
unsigned NOT_A :1;
};
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __at(0xFC7);

# 10086
typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned D :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
};
struct {
unsigned :5;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 10381
extern volatile unsigned char SSP1ADD __at(0xFC8);

asm("SSP1ADD equ 0FC8h");


extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");


typedef union {
struct {
unsigned SSP1ADD :8;
};
struct {
unsigned SSP1ADD0 :1;
unsigned SSP1ADD1 :1;
unsigned SSP1ADD2 :1;
unsigned SSP1ADD3 :1;
unsigned SSP1ADD4 :1;
unsigned SSP1ADD5 :1;
unsigned SSP1ADD6 :1;
unsigned SSP1ADD7 :1;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __at(0xFC8);

# 10554
typedef union {
struct {
unsigned SSP1ADD :8;
};
struct {
unsigned SSP1ADD0 :1;
unsigned SSP1ADD1 :1;
unsigned SSP1ADD2 :1;
unsigned SSP1ADD3 :1;
unsigned SSP1ADD4 :1;
unsigned SSP1ADD5 :1;
unsigned SSP1ADD6 :1;
unsigned SSP1ADD7 :1;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __at(0xFC8);

# 10719
extern volatile unsigned char SSP1BUF __at(0xFC9);

asm("SSP1BUF equ 0FC9h");


extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");


typedef union {
struct {
unsigned SSP1BUF :8;
};
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __at(0xFC9);

# 10742
typedef union {
struct {
unsigned SSP1BUF :8;
};
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __at(0xFC9);

# 10757
extern volatile unsigned char SSP1MSK __at(0xFCA);

asm("SSP1MSK equ 0FCAh");


extern volatile unsigned char SSPMSK __at(0xFCA);

asm("SSPMSK equ 0FCAh");


typedef union {
struct {
unsigned SSP1MSK :8;
};
struct {
unsigned SSP1MSK0 :1;
unsigned SSP1MSK1 :1;
unsigned SSP1MSK2 :1;
unsigned SSP1MSK3 :1;
unsigned SSP1MSK4 :1;
unsigned SSP1MSK5 :1;
unsigned SSP1MSK6 :1;
unsigned SSP1MSK7 :1;
};
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __at(0xFCA);

# 10830
typedef union {
struct {
unsigned SSP1MSK :8;
};
struct {
unsigned SSP1MSK0 :1;
unsigned SSP1MSK1 :1;
unsigned SSP1MSK2 :1;
unsigned SSP1MSK3 :1;
unsigned SSP1MSK4 :1;
unsigned SSP1MSK5 :1;
unsigned SSP1MSK6 :1;
unsigned SSP1MSK7 :1;
};
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __at(0xFCA);

# 10895
extern volatile unsigned char SSP1CON3 __at(0xFCB);

asm("SSP1CON3 equ 0FCBh");


extern volatile unsigned char SSPCON3 __at(0xFCB);

asm("SSPCON3 equ 0FCBh");


typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __at(0xFCB);

# 10960
typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __at(0xFCB);

# 11017
extern volatile unsigned char T1GCON __at(0xFCC);

asm("T1GCON equ 0FCCh");


typedef union {
struct {
unsigned :3;
unsigned T1GGO_NOT_T1DONE :1;
};
struct {
unsigned T1GSS :2;
unsigned T1GVAL :1;
unsigned T1GGO_nT1DONE :1;
unsigned T1GSPM :1;
unsigned T1GTM :1;
unsigned T1GPOL :1;
unsigned TMR1GE :1;
};
struct {
unsigned T1GSS0 :1;
unsigned T1GSS1 :1;
unsigned :1;
unsigned T1GGO :1;
};
struct {
unsigned :3;
unsigned NOT_T1DONE :1;
};
struct {
unsigned :3;
unsigned nT1DONE :1;
};
struct {
unsigned :3;
unsigned T1DONE :1;
};
struct {
unsigned :3;
unsigned T1GGO_NOT_DONE :1;
};
struct {
unsigned :3;
unsigned T1GGO_nDONE :1;
};
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __at(0xFCC);

# 11148
extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned RD16 :1;
unsigned nT1SYNC :1;
unsigned SOSCEN :1;
unsigned T1CKPS :2;
unsigned TMR1CS :2;
};
struct {
unsigned :1;
unsigned T1RD16 :1;
unsigned T1SYNC :1;
unsigned T1SOSCEN :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
unsigned TMR1CS0 :1;
unsigned TMR1CS1 :1;
};
struct {
unsigned :3;
unsigned T1OSCEN :1;
};
struct {
unsigned :3;
unsigned SOSCEN1 :1;
unsigned :3;
unsigned RD161 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 11277
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");


typedef union {
struct {
unsigned TMR1L :8;
};
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __at(0xFCE);

# 11304
extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");


typedef union {
struct {
unsigned TMR1H :8;
};
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __at(0xFCF);

# 11324
extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned :1;
unsigned SBOREN :1;
unsigned IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 11457
extern volatile unsigned char WDTCON __at(0xFD1);

asm("WDTCON equ 0FD1h");


typedef union {
struct {
unsigned SWDTEN :1;
};
struct {
unsigned SWDTE :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFD1);

# 11485
extern volatile unsigned char OSCCON2 __at(0xFD2);

asm("OSCCON2 equ 0FD2h");


typedef union {
struct {
unsigned LFIOFS :1;
unsigned HFIOFR :1;
unsigned PRISD :1;
unsigned SOSCGO :1;
unsigned PLLEN :1;
unsigned INTSRC :1;
unsigned SOSCRUN :1;
unsigned PLLRDY :1;
};
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __at(0xFD2);

# 11547
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned HFIOFS :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned FLTS :1;
unsigned :1;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 11630
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T08BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 11700
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");


typedef union {
struct {
unsigned TMR0L :8;
};
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __at(0xFD6);

# 11727
extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");


typedef union {
struct {
unsigned TMR0H :8;
};
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __at(0xFD7);

# 11747
extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 11818
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");


typedef union {
struct {
unsigned FSR2L :8;
};
} FSR2Lbits_t;
extern volatile FSR2Lbits_t FSR2Lbits __at(0xFD9);

# 11845
extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");


typedef union {
struct {
unsigned PLUSW2 :8;
};
} PLUSW2bits_t;
extern volatile PLUSW2bits_t PLUSW2bits __at(0xFDB);

# 11872
extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");


typedef union {
struct {
unsigned PREINC2 :8;
};
} PREINC2bits_t;
extern volatile PREINC2bits_t PREINC2bits __at(0xFDC);

# 11892
extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");


typedef union {
struct {
unsigned POSTDEC2 :8;
};
} POSTDEC2bits_t;
extern volatile POSTDEC2bits_t POSTDEC2bits __at(0xFDD);

# 11912
extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");


typedef union {
struct {
unsigned POSTINC2 :8;
};
} POSTINC2bits_t;
extern volatile POSTINC2bits_t POSTINC2bits __at(0xFDE);

# 11932
extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");


typedef union {
struct {
unsigned INDF2 :8;
};
} INDF2bits_t;
extern volatile INDF2bits_t INDF2bits __at(0xFDF);

# 11952
extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");


typedef union {
struct {
unsigned FSR1L :8;
};
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __at(0xFE1);

# 11986
extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");


typedef union {
struct {
unsigned PLUSW1 :8;
};
} PLUSW1bits_t;
extern volatile PLUSW1bits_t PLUSW1bits __at(0xFE3);

# 12013
extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");


typedef union {
struct {
unsigned PREINC1 :8;
};
} PREINC1bits_t;
extern volatile PREINC1bits_t PREINC1bits __at(0xFE4);

# 12033
extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");


typedef union {
struct {
unsigned POSTDEC1 :8;
};
} POSTDEC1bits_t;
extern volatile POSTDEC1bits_t POSTDEC1bits __at(0xFE5);

# 12053
extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");


typedef union {
struct {
unsigned POSTINC1 :8;
};
} POSTINC1bits_t;
extern volatile POSTINC1bits_t POSTINC1bits __at(0xFE6);

# 12073
extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");


typedef union {
struct {
unsigned INDF1 :8;
};
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __at(0xFE7);

# 12093
extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");


typedef union {
struct {
unsigned WREG :8;
};
} WREGbits_t;
extern volatile WREGbits_t WREGbits __at(0xFE8);

# 12113
extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");


typedef union {
struct {
unsigned FSR0L :8;
};
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __at(0xFE9);

# 12140
extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");


typedef union {
struct {
unsigned PLUSW0 :8;
};
} PLUSW0bits_t;
extern volatile PLUSW0bits_t PLUSW0bits __at(0xFEB);

# 12167
extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");


typedef union {
struct {
unsigned PREINC0 :8;
};
} PREINC0bits_t;
extern volatile PREINC0bits_t PREINC0bits __at(0xFEC);

# 12187
extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");


typedef union {
struct {
unsigned POSTDEC0 :8;
};
} POSTDEC0bits_t;
extern volatile POSTDEC0bits_t POSTDEC0bits __at(0xFED);

# 12207
extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");


typedef union {
struct {
unsigned POSTINC0 :8;
};
} POSTINC0bits_t;
extern volatile POSTINC0bits_t POSTINC0bits __at(0xFEE);

# 12227
extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");


typedef union {
struct {
unsigned INDF0 :8;
};
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __at(0xFEF);

# 12247
extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 12339
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned IOCIP :1;
unsigned :1;
unsigned TMR0IP :1;
unsigned :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :2;
unsigned T0IP :1;
unsigned :4;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 12416
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned IOCIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned IOCIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 12533
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");


typedef union {
struct {
unsigned PRODL :8;
};
} PRODLbits_t;
extern volatile PRODLbits_t PRODLbits __at(0xFF3);

# 12560
extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");


typedef union {
struct {
unsigned PRODH :8;
};
} PRODHbits_t;
extern volatile PRODHbits_t PRODHbits __at(0xFF4);

# 12580
extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");


typedef union {
struct {
unsigned TABLAT :8;
};
} TABLATbits_t;
extern volatile TABLATbits_t TABLATbits __at(0xFF5);

# 12601
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");


typedef union {
struct {
unsigned TBLPTRL :8;
};
} TBLPTRLbits_t;
extern volatile TBLPTRLbits_t TBLPTRLbits __at(0xFF6);

# 12629
extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");


typedef union {
struct {
unsigned TBLPTRH :8;
};
} TBLPTRHbits_t;
extern volatile TBLPTRHbits_t TBLPTRHbits __at(0xFF7);

# 12649
extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 12657
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");


typedef union {
struct {
unsigned PCL :8;
};
} PCLbits_t;
extern volatile PCLbits_t PCLbits __at(0xFF9);

# 12692
extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");


typedef union {
struct {
unsigned PCH :8;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0xFFA);

# 12712
extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned SP0 :1;
unsigned SP1 :1;
unsigned SP2 :1;
unsigned SP3 :1;
unsigned SP4 :1;
unsigned :2;
unsigned STKOVF :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 12792
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");


typedef union {
struct {
unsigned TOSL :8;
};
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __at(0xFFD);

# 12820
extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");


typedef union {
struct {
unsigned TOSH :8;
};
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __at(0xFFE);

# 12840
extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 12857
extern volatile __bit ABDEN __at(0x7DC0);


extern volatile __bit ABDEN1 __at(0x7DC0);


extern volatile __bit ABDOVF __at(0x7DC7);


extern volatile __bit ABDOVF1 __at(0x7DC7);


extern volatile __bit ACKDT __at(0x7E2D);


extern volatile __bit ACKDT1 __at(0x7E2D);


extern volatile __bit ACKEN __at(0x7E2C);


extern volatile __bit ACKEN1 __at(0x7E2C);


extern volatile __bit ACKSTAT __at(0x7E2E);


extern volatile __bit ACKSTAT1 __at(0x7E2E);


extern volatile __bit ACKTIM __at(0x7E5F);


extern volatile __bit ACQT0 __at(0x7E03);


extern volatile __bit ACQT1 __at(0x7E04);


extern volatile __bit ACQT2 __at(0x7E05);


extern volatile __bit ACTD __at(0x7DAE);


extern volatile __bit ACTEN __at(0x7DAF);


extern volatile __bit ACTIE __at(0x7CEF);


extern volatile __bit ACTIF __at(0x7CF7);


extern volatile __bit ACTIP __at(0x7CFF);


extern volatile __bit ACTLOCK __at(0x7DAB);


extern volatile __bit ACTMD __at(0x7BF4);


extern volatile __bit ACTOR __at(0x7DA9);


extern volatile __bit ACTORS __at(0x7DA9);


extern volatile __bit ACTSEL __at(0x7DAF);


extern volatile __bit ACTSRC __at(0x7DAC);


extern volatile __bit ACTUD __at(0x7DAE);


extern volatile __bit ACTVIE __at(0x7B22);


extern volatile __bit ACTVIF __at(0x7B2A);


extern volatile __bit ADCMD __at(0x7BFA);


extern volatile __bit ADCS0 __at(0x7E00);


extern volatile __bit ADCS1 __at(0x7E01);


extern volatile __bit ADCS2 __at(0x7E02);


extern volatile __bit ADDEN __at(0x7D5B);


extern volatile __bit ADDR0 __at(0x7B18);


extern volatile __bit ADDR1 __at(0x7B19);


extern volatile __bit ADDR2 __at(0x7B1A);


extern volatile __bit ADDR3 __at(0x7B1B);


extern volatile __bit ADDR4 __at(0x7B1C);


extern volatile __bit ADDR5 __at(0x7B1D);


extern volatile __bit ADDR6 __at(0x7B1E);


extern volatile __bit ADEN __at(0x7D5B);


extern volatile __bit ADFM __at(0x7E07);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADMSK1 __at(0x7E29);


extern volatile __bit ADMSK11 __at(0x7E29);


extern volatile __bit ADMSK2 __at(0x7E2A);


extern volatile __bit ADMSK21 __at(0x7E2A);


extern volatile __bit ADMSK3 __at(0x7E2B);


extern volatile __bit ADMSK31 __at(0x7E2B);


extern volatile __bit ADMSK4 __at(0x7E2C);


extern volatile __bit ADMSK41 __at(0x7E2C);


extern volatile __bit ADMSK5 __at(0x7E2D);


extern volatile __bit ADMSK51 __at(0x7E2D);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit AHEN __at(0x7E59);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C05);


extern volatile __bit ANSA0 __at(0x7AD8);


extern volatile __bit ANSA1 __at(0x7AD9);


extern volatile __bit ANSA2 __at(0x7ADA);


extern volatile __bit ANSA3 __at(0x7ADB);


extern volatile __bit ANSA5 __at(0x7ADD);


extern volatile __bit ANSB0 __at(0x7AE0);


extern volatile __bit ANSB1 __at(0x7AE1);


extern volatile __bit ANSB2 __at(0x7AE2);


extern volatile __bit ANSB3 __at(0x7AE3);


extern volatile __bit ANSB4 __at(0x7AE4);


extern volatile __bit ANSB5 __at(0x7AE5);


extern volatile __bit ANSC2 __at(0x7AEA);


extern volatile __bit ANSC6 __at(0x7AEE);


extern volatile __bit ANSC7 __at(0x7AEF);


extern volatile __bit BCL1IE __at(0x7D03);


extern volatile __bit BCL1IF __at(0x7D0B);


extern volatile __bit BCL1IP __at(0x7D13);


extern volatile __bit BCLIE __at(0x7D03);


extern volatile __bit BCLIF __at(0x7D0B);


extern volatile __bit BCLIP __at(0x7D13);


extern volatile __bit BF __at(0x7E38);


extern volatile __bit BF1 __at(0x7E38);


extern volatile __bit BGVST __at(0x7CE6);


extern volatile __bit BOEN __at(0x7E5C);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit BRG0 __at(0x7D78);


extern volatile __bit BRG1 __at(0x7D79);


extern volatile __bit BRG10 __at(0x7D82);


extern volatile __bit BRG11 __at(0x7D83);


extern volatile __bit BRG12 __at(0x7D84);


extern volatile __bit BRG13 __at(0x7D85);


extern volatile __bit BRG14 __at(0x7D86);


extern volatile __bit BRG15 __at(0x7D87);


extern volatile __bit BRG16 __at(0x7DC3);


extern volatile __bit BRG161 __at(0x7DC3);


extern volatile __bit BRG2 __at(0x7D7A);


extern volatile __bit BRG3 __at(0x7D7B);


extern volatile __bit BRG4 __at(0x7D7C);


extern volatile __bit BRG5 __at(0x7D7D);


extern volatile __bit BRG6 __at(0x7D7E);


extern volatile __bit BRG7 __at(0x7D7F);


extern volatile __bit BRG8 __at(0x7D80);


extern volatile __bit BRG9 __at(0x7D81);


extern volatile __bit BRGH __at(0x7D62);


extern volatile __bit BRGH1 __at(0x7D62);


extern volatile __bit BTOEE __at(0x7B34);


extern volatile __bit BTOEF __at(0x7B3C);


extern volatile __bit BTSEE __at(0x7B37);


extern volatile __bit BTSEF __at(0x7B3F);


extern volatile __bit C1CH0 __at(0x7CC0);


extern volatile __bit C1CH1 __at(0x7CC1);


extern volatile __bit C1HYS __at(0x7CD3);


extern volatile __bit C1IE __at(0x7D06);


extern volatile __bit C1IF __at(0x7D0E);


extern volatile __bit C1IP __at(0x7D16);


extern volatile __bit C1OE __at(0x7CC5);


extern volatile __bit C1ON __at(0x7CC7);


extern volatile __bit C1OUT __at(0x7CC6);


extern volatile __bit C1POL __at(0x7CC4);


extern volatile __bit C1R __at(0x7CC2);


extern volatile __bit C1RSEL __at(0x7CD5);


extern volatile __bit C1SP __at(0x7CC3);


extern volatile __bit C1SYNC __at(0x7CD1);


extern volatile __bit C1TSEL __at(0x7AC8);


extern volatile __bit C2CH0 __at(0x7CC8);


extern volatile __bit C2CH1 __at(0x7CC9);


extern volatile __bit C2HYS __at(0x7CD2);


extern volatile __bit C2IE __at(0x7D05);


extern volatile __bit C2IF __at(0x7D0D);


extern volatile __bit C2IP __at(0x7D15);


extern volatile __bit C2OE __at(0x7CCD);


extern volatile __bit C2ON __at(0x7CCF);


extern volatile __bit C2OUT __at(0x7CCE);


extern volatile __bit C2POL __at(0x7CCC);


extern volatile __bit C2R __at(0x7CCA);


extern volatile __bit C2RSEL __at(0x7CD4);


extern volatile __bit C2SP __at(0x7CCB);


extern volatile __bit C2SYNC __at(0x7CD0);


extern volatile __bit C2TSEL __at(0x7ACB);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCP1 __at(0x7C12);


extern volatile __bit CCP1ASE __at(0x7DB7);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DE8);


extern volatile __bit CCP1M1 __at(0x7DE9);


extern volatile __bit CCP1M2 __at(0x7DEA);


extern volatile __bit CCP1M3 __at(0x7DEB);


extern volatile __bit CCP1MD __at(0x7BF8);


extern volatile __bit CCP1X __at(0x7DED);


extern volatile __bit CCP1Y __at(0x7DEC);


extern volatile __bit CCP2 __at(0x7C11);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7CB8);


extern volatile __bit CCP2M1 __at(0x7CB9);


extern volatile __bit CCP2M2 __at(0x7CBA);


extern volatile __bit CCP2M3 __at(0x7CBB);


extern volatile __bit CCP2MD __at(0x7BF9);


extern volatile __bit CCP2X __at(0x7CBD);


extern volatile __bit CCP2Y __at(0x7CBC);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP9E __at(0x7C23);


extern volatile __bit CFGS __at(0x7D36);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CK __at(0x7C16);


extern volatile __bit CKE __at(0x7E3E);


extern volatile __bit CKE1 __at(0x7E3E);


extern volatile __bit CKP __at(0x7E34);


extern volatile __bit CKP1 __at(0x7E34);


extern volatile __bit CKTXP __at(0x7DC4);


extern volatile __bit CM1IE __at(0x7D06);


extern volatile __bit CM1IF __at(0x7D0E);


extern volatile __bit CM1IP __at(0x7D16);


extern volatile __bit CM2IE __at(0x7D05);


extern volatile __bit CM2IF __at(0x7D0D);


extern volatile __bit CM2IP __at(0x7D15);


extern volatile __bit CMIE __at(0x7D06);


extern volatile __bit CMIF __at(0x7D0E);


extern volatile __bit CMIP __at(0x7D16);


extern volatile __bit CMP1MD __at(0x7BFB);


extern volatile __bit CMP2MD __at(0x7BFC);


extern volatile __bit COUT1 __at(0x7CC6);


extern volatile __bit COUT2 __at(0x7CCE);


extern volatile __bit CRC16EE __at(0x7B32);


extern volatile __bit CRC16EF __at(0x7B3A);


extern volatile __bit CRC5EE __at(0x7B31);


extern volatile __bit CRC5EF __at(0x7B39);


extern volatile __bit CREN __at(0x7D5C);


extern volatile __bit CSRC __at(0x7D67);


extern volatile __bit CSRC1 __at(0x7D67);


extern volatile __bit CTMUEN __at(0x7C7F);


extern volatile __bit CTMUIE __at(0x7D1B);


extern volatile __bit CTMUIF __at(0x7D23);


extern volatile __bit CTMUIP __at(0x7D2B);


extern volatile __bit CTMUMD __at(0x7BFD);


extern volatile __bit CTMUSIDL __at(0x7C7D);


extern volatile __bit CTTRIG __at(0x7C78);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DA1 __at(0x7E3D);


extern volatile __bit DACEN __at(0x7BE7);


extern volatile __bit DACLPS __at(0x7BE6);


extern volatile __bit DACNSS __at(0x7BE0);


extern volatile __bit DACOE __at(0x7BE5);


extern volatile __bit DACPSS0 __at(0x7BE2);


extern volatile __bit DACPSS1 __at(0x7BE3);


extern volatile __bit DACR0 __at(0x7BD8);


extern volatile __bit DACR1 __at(0x7BD9);


extern volatile __bit DACR2 __at(0x7BDA);


extern volatile __bit DACR3 __at(0x7BDB);


extern volatile __bit DACR4 __at(0x7BDC);


extern volatile __bit DATA_ADDRESS __at(0x7E3D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC1B0 __at(0x7DEC);


extern volatile __bit DC1B1 __at(0x7DED);


extern volatile __bit DC2B0 __at(0x7CBC);


extern volatile __bit DC2B1 __at(0x7CBD);


extern volatile __bit DFN8EE __at(0x7B33);


extern volatile __bit DFN8EF __at(0x7B3B);


extern volatile __bit DHEN __at(0x7E58);


extern volatile __bit DIR __at(0x7B0A);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DT __at(0x7C17);


extern volatile __bit DTRXP __at(0x7DC5);


extern volatile __bit DTRXP1 __at(0x7DC5);


extern volatile __bit D_A __at(0x7E3D);


extern volatile __bit D_NOT_A __at(0x7E3D);


extern volatile __bit D_nA __at(0x7E3D);


extern volatile __bit ECCP1AS0 __at(0x7DB4);


extern volatile __bit ECCP1AS1 __at(0x7DB5);


extern volatile __bit ECCP1AS2 __at(0x7DB6);


extern volatile __bit ECCP1ASE __at(0x7DB7);


extern volatile __bit EDG1POL __at(0x7C74);


extern volatile __bit EDG1SEL0 __at(0x7C72);


extern volatile __bit EDG1SEL1 __at(0x7C73);


extern volatile __bit EDG1STAT __at(0x7C70);


extern volatile __bit EDG2POL __at(0x7C77);


extern volatile __bit EDG2SEL0 __at(0x7C75);


extern volatile __bit EDG2SEL1 __at(0x7C76);


extern volatile __bit EDG2STAT __at(0x7C71);


extern volatile __bit EDGEN __at(0x7C7B);


extern volatile __bit EDGSEQEN __at(0x7C7A);


extern volatile __bit EEFS __at(0x7D36);


extern volatile __bit EEIE __at(0x7D04);


extern volatile __bit EEIF __at(0x7D0C);


extern volatile __bit EEIP __at(0x7D14);


extern volatile __bit EEPGD __at(0x7D37);


extern volatile __bit EMBMD __at(0x7BF8);


extern volatile __bit ENDP0 __at(0x7B0B);


extern volatile __bit ENDP1 __at(0x7B0C);


extern volatile __bit ENDP2 __at(0x7B0D);


extern volatile __bit ENDP3 __at(0x7B0E);


extern volatile __bit EP0CONDIS __at(0x7B53);


extern volatile __bit EP0HSHK __at(0x7B54);


extern volatile __bit EP0INEN __at(0x7B51);


extern volatile __bit EP0OUTEN __at(0x7B52);


extern volatile __bit EP0STALL __at(0x7B50);


extern volatile __bit EP1CONDIS __at(0x7B5B);


extern volatile __bit EP1HSHK __at(0x7B5C);


extern volatile __bit EP1INEN __at(0x7B59);


extern volatile __bit EP1OUTEN __at(0x7B5A);


extern volatile __bit EP1STALL __at(0x7B58);


extern volatile __bit EP2CONDIS __at(0x7B63);


extern volatile __bit EP2HSHK __at(0x7B64);


extern volatile __bit EP2INEN __at(0x7B61);


extern volatile __bit EP2OUTEN __at(0x7B62);


extern volatile __bit EP2STALL __at(0x7B60);


extern volatile __bit EP3CONDIS __at(0x7B6B);


extern volatile __bit EP3HSHK __at(0x7B6C);


extern volatile __bit EP3INEN __at(0x7B69);


extern volatile __bit EP3OUTEN __at(0x7B6A);


extern volatile __bit EP3STALL __at(0x7B68);


extern volatile __bit EP4CONDIS __at(0x7B73);


extern volatile __bit EP4HSHK __at(0x7B74);


extern volatile __bit EP4INEN __at(0x7B71);


extern volatile __bit EP4OUTEN __at(0x7B72);


extern volatile __bit EP4STALL __at(0x7B70);


extern volatile __bit EP5CONDIS __at(0x7B7B);


extern volatile __bit EP5HSHK __at(0x7B7C);


extern volatile __bit EP5INEN __at(0x7B79);


extern volatile __bit EP5OUTEN __at(0x7B7A);


extern volatile __bit EP5STALL __at(0x7B78);


extern volatile __bit EP6CONDIS __at(0x7B83);


extern volatile __bit EP6HSHK __at(0x7B84);


extern volatile __bit EP6INEN __at(0x7B81);


extern volatile __bit EP6OUTEN __at(0x7B82);


extern volatile __bit EP6STALL __at(0x7B80);


extern volatile __bit EP7CONDIS __at(0x7B8B);


extern volatile __bit EP7HSHK __at(0x7B8C);


extern volatile __bit EP7INEN __at(0x7B89);


extern volatile __bit EP7OUTEN __at(0x7B8A);


extern volatile __bit EP7STALL __at(0x7B88);


extern volatile __bit EPCONDIS0 __at(0x7B53);


extern volatile __bit EPCONDIS1 __at(0x7B5B);


extern volatile __bit EPCONDIS10 __at(0x7BA3);


extern volatile __bit EPCONDIS11 __at(0x7BAB);


extern volatile __bit EPCONDIS12 __at(0x7BB3);


extern volatile __bit EPCONDIS13 __at(0x7BBB);


extern volatile __bit EPCONDIS14 __at(0x7BC3);


extern volatile __bit EPCONDIS15 __at(0x7BCB);


extern volatile __bit EPCONDIS2 __at(0x7B63);


extern volatile __bit EPCONDIS3 __at(0x7B6B);


extern volatile __bit EPCONDIS4 __at(0x7B73);


extern volatile __bit EPCONDIS5 __at(0x7B7B);


extern volatile __bit EPCONDIS6 __at(0x7B83);


extern volatile __bit EPCONDIS7 __at(0x7B8B);


extern volatile __bit EPCONDIS8 __at(0x7B93);


extern volatile __bit EPCONDIS9 __at(0x7B9B);


extern volatile __bit EPHSHK0 __at(0x7B54);


extern volatile __bit EPHSHK1 __at(0x7B5C);


extern volatile __bit EPHSHK10 __at(0x7BA4);


extern volatile __bit EPHSHK11 __at(0x7BAC);


extern volatile __bit EPHSHK12 __at(0x7BB4);


extern volatile __bit EPHSHK13 __at(0x7BBC);


extern volatile __bit EPHSHK14 __at(0x7BC4);


extern volatile __bit EPHSHK15 __at(0x7BCC);


extern volatile __bit EPHSHK2 __at(0x7B64);


extern volatile __bit EPHSHK3 __at(0x7B6C);


extern volatile __bit EPHSHK4 __at(0x7B74);


extern volatile __bit EPHSHK5 __at(0x7B7C);


extern volatile __bit EPHSHK6 __at(0x7B84);


extern volatile __bit EPHSHK7 __at(0x7B8C);


extern volatile __bit EPHSHK8 __at(0x7B94);


extern volatile __bit EPHSHK9 __at(0x7B9C);


extern volatile __bit EPINEN0 __at(0x7B51);


extern volatile __bit EPINEN1 __at(0x7B59);


extern volatile __bit EPINEN10 __at(0x7BA1);


extern volatile __bit EPINEN11 __at(0x7BA9);


extern volatile __bit EPINEN12 __at(0x7BB1);


extern volatile __bit EPINEN13 __at(0x7BB9);


extern volatile __bit EPINEN14 __at(0x7BC1);


extern volatile __bit EPINEN15 __at(0x7BC9);


extern volatile __bit EPINEN2 __at(0x7B61);


extern volatile __bit EPINEN3 __at(0x7B69);


extern volatile __bit EPINEN4 __at(0x7B71);


extern volatile __bit EPINEN5 __at(0x7B79);


extern volatile __bit EPINEN6 __at(0x7B81);


extern volatile __bit EPINEN7 __at(0x7B89);


extern volatile __bit EPINEN8 __at(0x7B91);


extern volatile __bit EPINEN9 __at(0x7B99);


extern volatile __bit EPOUTEN0 __at(0x7B52);


extern volatile __bit EPOUTEN1 __at(0x7B5A);


extern volatile __bit EPOUTEN10 __at(0x7BA2);


extern volatile __bit EPOUTEN11 __at(0x7BAA);


extern volatile __bit EPOUTEN12 __at(0x7BB2);


extern volatile __bit EPOUTEN13 __at(0x7BBA);


extern volatile __bit EPOUTEN14 __at(0x7BC2);


extern volatile __bit EPOUTEN15 __at(0x7BCA);


extern volatile __bit EPOUTEN2 __at(0x7B62);


extern volatile __bit EPOUTEN3 __at(0x7B6A);


extern volatile __bit EPOUTEN4 __at(0x7B72);


extern volatile __bit EPOUTEN5 __at(0x7B7A);


extern volatile __bit EPOUTEN6 __at(0x7B82);


extern volatile __bit EPOUTEN7 __at(0x7B8A);


extern volatile __bit EPOUTEN8 __at(0x7B92);


extern volatile __bit EPOUTEN9 __at(0x7B9A);


extern volatile __bit EPSTALL0 __at(0x7B50);


extern volatile __bit EPSTALL1 __at(0x7B58);


extern volatile __bit EPSTALL10 __at(0x7BA0);


extern volatile __bit EPSTALL11 __at(0x7BA8);


extern volatile __bit EPSTALL12 __at(0x7BB0);


extern volatile __bit EPSTALL13 __at(0x7BB8);


extern volatile __bit EPSTALL14 __at(0x7BC0);


extern volatile __bit EPSTALL15 __at(0x7BC8);


extern volatile __bit EPSTALL2 __at(0x7B60);


extern volatile __bit EPSTALL3 __at(0x7B68);


extern volatile __bit EPSTALL4 __at(0x7B70);


extern volatile __bit EPSTALL5 __at(0x7B78);


extern volatile __bit EPSTALL6 __at(0x7B80);


extern volatile __bit EPSTALL7 __at(0x7B88);


extern volatile __bit EPSTALL8 __at(0x7B90);


extern volatile __bit EPSTALL9 __at(0x7B98);


extern volatile __bit FERR __at(0x7D5A);


extern volatile __bit FLTS __at(0x7E9A);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit FRM0 __at(0x7B40);


extern volatile __bit FRM1 __at(0x7B41);


extern volatile __bit FRM10 __at(0x7B4A);


extern volatile __bit FRM2 __at(0x7B42);


extern volatile __bit FRM3 __at(0x7B43);


extern volatile __bit FRM4 __at(0x7B44);


extern volatile __bit FRM5 __at(0x7B45);


extern volatile __bit FRM6 __at(0x7B46);


extern volatile __bit FRM7 __at(0x7B47);


extern volatile __bit FRM8 __at(0x7B48);


extern volatile __bit FRM9 __at(0x7B49);


extern volatile __bit FSEN __at(0x7B12);


extern volatile __bit FVREN __at(0x7BEF);


extern volatile __bit FVRS0 __at(0x7BEC);


extern volatile __bit FVRS1 __at(0x7BED);


extern volatile __bit FVRST __at(0x7BEE);


extern volatile __bit GCEN __at(0x7E2F);


extern volatile __bit GCEN1 __at(0x7E2F);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit HFIOFR __at(0x7E91);


extern volatile __bit HFIOFS __at(0x7E9A);


extern volatile __bit HLVDEN __at(0x7CE4);


extern volatile __bit HLVDIE __at(0x7D02);


extern volatile __bit HLVDIF __at(0x7D0A);


extern volatile __bit HLVDIN __at(0x7C05);


extern volatile __bit HLVDIP __at(0x7D12);


extern volatile __bit HLVDL0 __at(0x7CE0);


extern volatile __bit HLVDL1 __at(0x7CE1);


extern volatile __bit HLVDL2 __at(0x7CE2);


extern volatile __bit HLVDL3 __at(0x7CE3);


extern volatile __bit I2C_DAT __at(0x7E3D);


extern volatile __bit I2C_READ __at(0x7E3A);


extern volatile __bit I2C_START __at(0x7E3B);


extern volatile __bit I2C_STOP __at(0x7E3C);


extern volatile __bit IDISSEN __at(0x7C79);


extern volatile __bit IDLEIE __at(0x7B24);


extern volatile __bit IDLEIF __at(0x7B2C);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INT0 __at(0x7C08);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C09);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C0A);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTSRC __at(0x7E95);


extern volatile __bit IOCB4 __at(0x7C34);


extern volatile __bit IOCB5 __at(0x7C35);


extern volatile __bit IOCB6 __at(0x7C36);


extern volatile __bit IOCB7 __at(0x7C37);


extern volatile __bit IOCC0 __at(0x7C38);


extern volatile __bit IOCC1 __at(0x7C39);


extern volatile __bit IOCC2 __at(0x7C3A);


extern volatile __bit IOCC4 __at(0x7C3C);


extern volatile __bit IOCC5 __at(0x7C3D);


extern volatile __bit IOCC6 __at(0x7C3E);


extern volatile __bit IOCC7 __at(0x7C3F);


extern volatile __bit IOCIE __at(0x7F93);


extern volatile __bit IOCIF __at(0x7F90);


extern volatile __bit IOCIP __at(0x7F88);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRNG0 __at(0x7C40);


extern volatile __bit IRNG1 __at(0x7C41);


extern volatile __bit IRVST __at(0x7CE5);


extern volatile __bit ITRIM0 __at(0x7C42);


extern volatile __bit ITRIM1 __at(0x7C43);


extern volatile __bit ITRIM2 __at(0x7C44);


extern volatile __bit ITRIM3 __at(0x7C45);


extern volatile __bit ITRIM4 __at(0x7C46);


extern volatile __bit ITRIM5 __at(0x7C47);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LA7 __at(0x7C4F);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATA7 __at(0x7C4F);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC4 __at(0x7C5C);


extern volatile __bit LATC5 __at(0x7C5D);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC4 __at(0x7C5C);


extern volatile __bit LC5 __at(0x7C5D);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LFIOFS __at(0x7E90);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit MC1OUT __at(0x7CD7);


extern volatile __bit MC2OUT __at(0x7CD6);


extern volatile __bit MSK0 __at(0x7E40);


extern volatile __bit MSK01 __at(0x7E40);


extern volatile __bit MSK1 __at(0x7E41);


extern volatile __bit MSK11 __at(0x7E41);


extern volatile __bit MSK2 __at(0x7E42);


extern volatile __bit MSK21 __at(0x7E42);


extern volatile __bit MSK3 __at(0x7E43);


extern volatile __bit MSK31 __at(0x7E43);


extern volatile __bit MSK4 __at(0x7E44);


extern volatile __bit MSK41 __at(0x7E44);


extern volatile __bit MSK5 __at(0x7E45);


extern volatile __bit MSK51 __at(0x7E45);


extern volatile __bit MSK6 __at(0x7E46);


extern volatile __bit MSK61 __at(0x7E46);


extern volatile __bit MSK7 __at(0x7E47);


extern volatile __bit MSK71 __at(0x7E47);


extern volatile __bit MSSP1MD __at(0x7BFE);


extern volatile __bit MSSPMD __at(0x7BFE);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_ADDRESS __at(0x7E3D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_T1DONE __at(0x7E63);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T3DONE __at(0x7DA3);


extern volatile __bit NOT_T3SYNC __at(0x7D8A);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_WRITE __at(0x7E3A);


extern volatile __bit NVCFG0 __at(0x7E08);


extern volatile __bit NVCFG1 __at(0x7E09);


extern volatile __bit OERR __at(0x7D59);


extern volatile __bit ON __at(0x7C7F);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OSCFIE __at(0x7D07);


extern volatile __bit OSCFIF __at(0x7D0F);


extern volatile __bit OSCFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit P1A __at(0x7C12);


extern volatile __bit P1M0 __at(0x7DEE);


extern volatile __bit P1M1 __at(0x7DEF);


extern volatile __bit P1RSEN __at(0x7DBF);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PC3E __at(0x7C23);


extern volatile __bit PCIE __at(0x7E5E);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PDC0 __at(0x7DB8);


extern volatile __bit PDC1 __at(0x7DB9);


extern volatile __bit PDC2 __at(0x7DBA);


extern volatile __bit PDC3 __at(0x7DBB);


extern volatile __bit PDC4 __at(0x7DBC);


extern volatile __bit PDC5 __at(0x7DBD);


extern volatile __bit PDC6 __at(0x7DBE);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PEN __at(0x7E2A);


extern volatile __bit PEN1 __at(0x7E2A);


extern volatile __bit PGC __at(0x7C0E);


extern volatile __bit PGD __at(0x7C0F);


extern volatile __bit PGM __at(0x7C0D);


extern volatile __bit PIDEE __at(0x7B30);


extern volatile __bit PIDEF __at(0x7B38);


extern volatile __bit PKTDIS __at(0x7B04);


extern volatile __bit PLLEN __at(0x7E94);


extern volatile __bit PLLRDY __at(0x7E97);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit PPB0 __at(0x7B10);


extern volatile __bit PPB1 __at(0x7B11);


extern volatile __bit PPBI __at(0x7B09);


extern volatile __bit PPBRST __at(0x7B06);


extern volatile __bit PR1SEN __at(0x7DBF);


extern volatile __bit PRISD __at(0x7E92);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PSPIE __at(0x7CEF);


extern volatile __bit PSPIF __at(0x7CF7);


extern volatile __bit PSPIP __at(0x7CFF);


extern volatile __bit PSS1AC0 __at(0x7DB2);


extern volatile __bit PSS1AC1 __at(0x7DB3);


extern volatile __bit PSS1BD0 __at(0x7DB0);


extern volatile __bit PSS1BD1 __at(0x7DB1);


extern volatile __bit PSSAC0 __at(0x7DB2);


extern volatile __bit PSSAC1 __at(0x7DB3);


extern volatile __bit PSSBD0 __at(0x7DB0);


extern volatile __bit PSSBD1 __at(0x7DB1);


extern volatile __bit PVCFG0 __at(0x7E0A);


extern volatile __bit PVCFG1 __at(0x7E0B);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit RC4 __at(0x7C14);


extern volatile __bit RC5 __at(0x7C15);


extern volatile __bit RC8_9 __at(0x7D5E);


extern volatile __bit RC9 __at(0x7D5E);


extern volatile __bit RCD8 __at(0x7D58);


extern volatile __bit RCEN __at(0x7E2B);


extern volatile __bit RCEN1 __at(0x7E2B);


extern volatile __bit RCIDL __at(0x7DC6);


extern volatile __bit RCIDL1 __at(0x7DC6);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RCMT __at(0x7DC6);


extern volatile __bit RCMT1 __at(0x7DC6);


extern volatile __bit RD __at(0x7D30);


extern volatile __bit RD161 __at(0x7E6F);


extern volatile __bit RD163 __at(0x7D8F);


extern volatile __bit RE3 __at(0x7C23);


extern volatile __bit READ_WRITE __at(0x7E3A);


extern volatile __bit RESUME __at(0x7B02);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RJPU __at(0x7C07);


extern volatile __bit RSEN __at(0x7E29);


extern volatile __bit RSEN1 __at(0x7E29);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RW1 __at(0x7E3A);


extern volatile __bit RX __at(0x7C17);


extern volatile __bit RX9 __at(0x7D5E);


extern volatile __bit RX9D __at(0x7D58);


extern volatile __bit RXB0IE __at(0x7D18);


extern volatile __bit RXB1IE __at(0x7D19);


extern volatile __bit RXBNIE __at(0x7D19);


extern volatile __bit RXBNIF __at(0x7D21);


extern volatile __bit RXBNIP __at(0x7D29);


extern volatile __bit RXCKP __at(0x7DC5);


extern volatile __bit RXDTP __at(0x7DC5);


extern volatile __bit RXDTP1 __at(0x7DC5);


extern volatile __bit R_NOT_W __at(0x7E3A);


extern volatile __bit R_W __at(0x7E3A);


extern volatile __bit R_nW __at(0x7E3A);


extern volatile __bit SBCDE __at(0x7E5A);


extern volatile __bit SBOREN __at(0x7E86);


extern volatile __bit SCIE __at(0x7E5D);


extern volatile __bit SCKP __at(0x7DC4);


extern volatile __bit SCKP1 __at(0x7DC4);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SDAHT __at(0x7E5B);


extern volatile __bit SE0 __at(0x7B05);


extern volatile __bit SEN __at(0x7E28);


extern volatile __bit SEN1 __at(0x7E28);


extern volatile __bit SENDB __at(0x7D63);


extern volatile __bit SENDB1 __at(0x7D63);


extern volatile __bit SIDL __at(0x7C7D);


extern volatile __bit SLRA __at(0x7BD0);


extern volatile __bit SLRB __at(0x7BD1);


extern volatile __bit SLRC __at(0x7BD2);


extern volatile __bit SMP __at(0x7E3F);


extern volatile __bit SMP1 __at(0x7E3F);


extern volatile __bit SOFIE __at(0x7B26);


extern volatile __bit SOFIF __at(0x7B2E);


extern volatile __bit SOSCEN1 __at(0x7E6B);


extern volatile __bit SOSCEN3 __at(0x7D8B);


extern volatile __bit SOSCGO __at(0x7E93);


extern volatile __bit SOSCRUN __at(0x7E96);


extern volatile __bit SP0 __at(0x7FE0);


extern volatile __bit SP1 __at(0x7FE1);


extern volatile __bit SP2 __at(0x7FE2);


extern volatile __bit SP3 __at(0x7FE3);


extern volatile __bit SP4 __at(0x7FE4);


extern volatile __bit SPEN __at(0x7D5F);


extern volatile __bit SPI1MD __at(0x7BF1);


extern volatile __bit SPI2MD __at(0x7BF2);


extern volatile __bit SPLLMULT __at(0x7CDF);


extern volatile __bit SRCLK0 __at(0x7AC4);


extern volatile __bit SRCLK1 __at(0x7AC5);


extern volatile __bit SRCLK2 __at(0x7AC6);


extern volatile __bit SREN __at(0x7D5D);


extern volatile __bit SRENA __at(0x7D5D);


extern volatile __bit SRLEN __at(0x7AC7);


extern volatile __bit SRNQEN __at(0x7AC2);


extern volatile __bit SRPR __at(0x7AC0);


extern volatile __bit SRPS __at(0x7AC1);


extern volatile __bit SRQEN __at(0x7AC3);


extern volatile __bit SRRC1E __at(0x7AB8);


extern volatile __bit SRRC2E __at(0x7AB9);


extern volatile __bit SRRCKE __at(0x7ABA);


extern volatile __bit SRRPE __at(0x7ABB);


extern volatile __bit SRSC1E __at(0x7ABC);


extern volatile __bit SRSC2E __at(0x7ABD);


extern volatile __bit SRSCKE __at(0x7ABE);


extern volatile __bit SRSPE __at(0x7ABF);


extern volatile __bit SSP1ADD0 __at(0x7E40);


extern volatile __bit SSP1ADD1 __at(0x7E41);


extern volatile __bit SSP1ADD2 __at(0x7E42);


extern volatile __bit SSP1ADD3 __at(0x7E43);


extern volatile __bit SSP1ADD4 __at(0x7E44);


extern volatile __bit SSP1ADD5 __at(0x7E45);


extern volatile __bit SSP1ADD6 __at(0x7E46);


extern volatile __bit SSP1ADD7 __at(0x7E47);


extern volatile __bit SSP1IE __at(0x7CEB);


extern volatile __bit SSP1IF __at(0x7CF3);


extern volatile __bit SSP1IP __at(0x7CFB);


extern volatile __bit SSP1MD __at(0x7BFE);


extern volatile __bit SSP1MSK0 __at(0x7E50);


extern volatile __bit SSP1MSK1 __at(0x7E51);


extern volatile __bit SSP1MSK2 __at(0x7E52);


extern volatile __bit SSP1MSK3 __at(0x7E53);


extern volatile __bit SSP1MSK4 __at(0x7E54);


extern volatile __bit SSP1MSK5 __at(0x7E55);


extern volatile __bit SSP1MSK6 __at(0x7E56);


extern volatile __bit SSP1MSK7 __at(0x7E57);


extern volatile __bit SSPEN __at(0x7E35);


extern volatile __bit SSPEN1 __at(0x7E35);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit SSPM0 __at(0x7E30);


extern volatile __bit SSPM01 __at(0x7E30);


extern volatile __bit SSPM1 __at(0x7E31);


extern volatile __bit SSPM11 __at(0x7E31);


extern volatile __bit SSPM2 __at(0x7E32);


extern volatile __bit SSPM21 __at(0x7E32);


extern volatile __bit SSPM3 __at(0x7E33);


extern volatile __bit SSPM31 __at(0x7E33);


extern volatile __bit SSPOV __at(0x7E36);


extern volatile __bit SSPOV1 __at(0x7E36);


extern volatile __bit STALLIE __at(0x7B25);


extern volatile __bit STALLIF __at(0x7B2D);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit START1 __at(0x7E3B);


extern volatile __bit STEN __at(0x7DAF);


extern volatile __bit STIE __at(0x7CEF);


extern volatile __bit STIF __at(0x7CF7);


extern volatile __bit STIP __at(0x7CFF);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STLOCK __at(0x7DAB);


extern volatile __bit STMD __at(0x7BF4);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit STOP1 __at(0x7E3C);


extern volatile __bit STOR __at(0x7DA9);


extern volatile __bit STR1A __at(0x7DC8);


extern volatile __bit STR1B __at(0x7DC9);


extern volatile __bit STR1C __at(0x7DCA);


extern volatile __bit STR1D __at(0x7DCB);


extern volatile __bit STR1SYNC __at(0x7DCC);


extern volatile __bit STRA __at(0x7DC8);


extern volatile __bit STRB __at(0x7DC9);


extern volatile __bit STRC __at(0x7DCA);


extern volatile __bit STRD __at(0x7DCB);


extern volatile __bit STRSYNC __at(0x7DCC);


extern volatile __bit STSRC __at(0x7DAC);


extern volatile __bit STUD __at(0x7DAE);


extern volatile __bit SUSPND __at(0x7B01);


extern volatile __bit SWDTE __at(0x7E88);


extern volatile __bit SWDTEN __at(0x7E88);


extern volatile __bit SYNC __at(0x7D64);


extern volatile __bit SYNC1 __at(0x7D64);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C04);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0IP __at(0x7F8A);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T13CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1DONE __at(0x7E63);


extern volatile __bit T1GGO __at(0x7E63);


extern volatile __bit T1GGO_NOT_DONE __at(0x7E63);


extern volatile __bit T1GGO_NOT_T1DONE __at(0x7E63);


extern volatile __bit T1GGO_nDONE __at(0x7E63);


extern volatile __bit T1GGO_nT1DONE __at(0x7E63);


extern volatile __bit T1GPOL __at(0x7E66);


extern volatile __bit T1GSPM __at(0x7E64);


extern volatile __bit T1GSS0 __at(0x7E60);


extern volatile __bit T1GSS1 __at(0x7E61);


extern volatile __bit T1GTM __at(0x7E65);


extern volatile __bit T1GVAL __at(0x7E62);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E69);


extern volatile __bit T1SOSCEN __at(0x7E6B);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit T2CKPS0 __at(0x7DD0);


extern volatile __bit T2CKPS1 __at(0x7DD1);


extern volatile __bit T2OUTPS0 __at(0x7DD3);


extern volatile __bit T2OUTPS1 __at(0x7DD4);


extern volatile __bit T2OUTPS2 __at(0x7DD5);


extern volatile __bit T2OUTPS3 __at(0x7DD6);


extern volatile __bit T3CKPS0 __at(0x7D8C);


extern volatile __bit T3CKPS1 __at(0x7D8D);


extern volatile __bit T3DONE __at(0x7DA3);


extern volatile __bit T3GGO __at(0x7DA3);


extern volatile __bit T3GGO_NOT_DONE __at(0x7DA3);


extern volatile __bit T3GGO_NOT_T3DONE __at(0x7DA3);


extern volatile __bit T3GGO_nDONE __at(0x7DA3);


extern volatile __bit T3GGO_nT3DONE __at(0x7DA3);


extern volatile __bit T3GPOL __at(0x7DA6);


extern volatile __bit T3GSPM __at(0x7DA4);


extern volatile __bit T3GSS0 __at(0x7DA0);


extern volatile __bit T3GSS1 __at(0x7DA1);


extern volatile __bit T3GTM __at(0x7DA5);


extern volatile __bit T3GVAL __at(0x7DA2);


extern volatile __bit T3OSCEN __at(0x7D8B);


extern volatile __bit T3RD16 __at(0x7D89);


extern volatile __bit T3SOSCEN __at(0x7D8B);


extern volatile __bit T3SYNC __at(0x7D8A);


extern volatile __bit TGEN __at(0x7C7C);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS0 __at(0x7E6E);


extern volatile __bit TMR1CS1 __at(0x7E6F);


extern volatile __bit TMR1GE __at(0x7E67);


extern volatile __bit TMR1GIE __at(0x7D18);


extern volatile __bit TMR1GIF __at(0x7D20);


extern volatile __bit TMR1GIP __at(0x7D28);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1MD __at(0x7BF0);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2MD __at(0x7BF1);


extern volatile __bit TMR2ON __at(0x7DD2);


extern volatile __bit TMR3CS0 __at(0x7D8E);


extern volatile __bit TMR3CS1 __at(0x7D8F);


extern volatile __bit TMR3GE __at(0x7DA7);


extern volatile __bit TMR3GIE __at(0x7D19);


extern volatile __bit TMR3GIF __at(0x7D21);


extern volatile __bit TMR3GIP __at(0x7D29);


extern volatile __bit TMR3IE __at(0x7D01);


extern volatile __bit TMR3IF __at(0x7D09);


extern volatile __bit TMR3IP __at(0x7D11);


extern volatile __bit TMR3MD __at(0x7BF2);


extern volatile __bit TMR3ON __at(0x7D88);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TRIGEN __at(0x7C78);


extern volatile __bit TRIGSEL __at(0x7E0F);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISA7 __at(0x7C97);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC4 __at(0x7CA4);


extern volatile __bit TRISC5 __at(0x7CA5);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRMT __at(0x7D61);


extern volatile __bit TRMT1 __at(0x7D61);


extern volatile __bit TRNIE __at(0x7B23);


extern volatile __bit TRNIF __at(0x7B2B);


extern volatile __bit TSEN __at(0x7BEB);


extern volatile __bit TSRNG __at(0x7BEA);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TUN5 __at(0x7CDD);


extern volatile __bit TUN6 __at(0x7CDE);


extern volatile __bit TX __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX8_9 __at(0x7D66);


extern volatile __bit TX9 __at(0x7D66);


extern volatile __bit TX91 __at(0x7D66);


extern volatile __bit TX9D __at(0x7D60);


extern volatile __bit TX9D1 __at(0x7D60);


extern volatile __bit TXB0IE __at(0x7D1A);


extern volatile __bit TXB1IE __at(0x7D1B);


extern volatile __bit TXCKP __at(0x7DC4);


extern volatile __bit TXCKP1 __at(0x7DC4);


extern volatile __bit TXD8 __at(0x7D60);


extern volatile __bit TXEN __at(0x7D65);


extern volatile __bit TXEN1 __at(0x7D65);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit UA __at(0x7E39);


extern volatile __bit UA1 __at(0x7E39);


extern volatile __bit UART1MD __at(0x7BF6);


extern volatile __bit UARTMD __at(0x7BF6);


extern volatile __bit UERRIE __at(0x7B21);


extern volatile __bit UERRIF __at(0x7B29);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit UOEMON __at(0x7B16);


extern volatile __bit UPP0 __at(0x7B10);


extern volatile __bit UPP1 __at(0x7B11);


extern volatile __bit UPUEN __at(0x7B14);


extern volatile __bit URSTIE __at(0x7B20);


extern volatile __bit URSTIF __at(0x7B28);


extern volatile __bit USBEN __at(0x7B03);


extern volatile __bit USBIE __at(0x7D1A);


extern volatile __bit USBIF __at(0x7D22);


extern volatile __bit USBIP __at(0x7D2A);


extern volatile __bit USBMD __at(0x7BF5);


extern volatile __bit UTEYE __at(0x7B17);


extern volatile __bit UTRDIS __at(0x7B13);


extern volatile __bit VDIRMAG __at(0x7CE7);


extern volatile __bit VREFM __at(0x7C02);


extern volatile __bit VREFP __at(0x7C03);


extern volatile __bit W4E __at(0x7DC1);


extern volatile __bit WCOL __at(0x7E37);


extern volatile __bit WCOL1 __at(0x7E37);


extern volatile __bit WPUB0 __at(0x7C28);


extern volatile __bit WPUB1 __at(0x7C29);


extern volatile __bit WPUB2 __at(0x7C2A);


extern volatile __bit WPUB3 __at(0x7C2B);


extern volatile __bit WPUB4 __at(0x7C2C);


extern volatile __bit WPUB5 __at(0x7C2D);


extern volatile __bit WPUB6 __at(0x7C2E);


extern volatile __bit WPUB7 __at(0x7C2F);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WUE __at(0x7DC1);


extern volatile __bit WUE1 __at(0x7DC1);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA __at(0x7E3D);


extern volatile __bit nADDRESS __at(0x7E3D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nT1DONE __at(0x7E63);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT3DONE __at(0x7DA3);


extern volatile __bit nT3SYNC __at(0x7D8A);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nW __at(0x7E3A);


extern volatile __bit nWRITE __at(0x7E3A);

# 19 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18F-K_DFP/1.8.249/xc8\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);

# 156
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 192
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);

# 156 "mcc_generated_files/pin_manager.h"
void PIN_MANAGER_Initialize (void);

# 168
void PIN_MANAGER_IOC(void);

# 15 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 29 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 253 "mcc_generated_files/ext_int.h"
void EXT_INT_Initialize(void);

# 275
void INT1_ISR(void);

# 299
void INT1_CallBack(void);

# 322
void INT1_SetInterruptHandler(void (* InterruptHandler)(void));

# 346
extern void (*INT1_InterruptHandler)(void);

# 370
void INT1_DefaultInterruptHandler(void);

void normaliza(void);

unsigned long Hash_algoritmo ();

# 15 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 100 "mcc_generated_files/tmr0.h"
void TMR0_Initialize(void);

# 129
void TMR0_StartTimer(void);

# 161
void TMR0_StopTimer(void);

# 196
uint8_t TMR0_ReadTimer(void);

# 235
void TMR0_WriteTimer(uint8_t timerVal);

# 271
void TMR0_Reload(void);

# 310
bool TMR0_HasOverflowOccured(void);

# 15 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 4 "C:\Program Files\Microchip\xc8\v2.36\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 88
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 76 "mcc_generated_files/eusart1.h"
typedef union {
struct {
unsigned perr : 1;
unsigned ferr : 1;
unsigned oerr : 1;
unsigned reserved : 5;
};
uint8_t status;
}eusart1_status_t;

# 111
void EUSART1_Initialize(void);

# 159
bool EUSART1_is_tx_ready(void);

# 207
bool EUSART1_is_rx_ready(void);

# 254
bool EUSART1_is_tx_done(void);

# 302
eusart1_status_t EUSART1_get_last_status(void);

# 322
uint8_t EUSART1_Read(void);

# 342
void EUSART1_Write(uint8_t txData);

# 363
void EUSART1_Write_string(const char* data);

void EUSART1_SetFramingErrorHandler(void (* interruptHandler)(void));

# 383
void EUSART1_SetOverrunErrorHandler(void (* interruptHandler)(void));

# 401
void EUSART1_SetErrorHandler(void (* interruptHandler)(void));

# 73 "mcc_generated_files/mcc.h"
void SYSTEM_Initialize(void);

# 86
void OSCILLATOR_Initialize(void);

# 52 "mcc_generated_files/interrupt_manager.c"
void INTERRUPT_Initialize (void)
{

RCONbits.IPEN = 0;
}

void __interrupt() INTERRUPT_InterruptManager (void)
{

if(INTCON3bits.INT1IE == 1 && INTCON3bits.INT1IF == 1)
{
if (INT1IF == 1)

{




if (flag_codigo == 0)
{
if (cuenta != 0)
{
timer_aux = TMR0;
TMR0 = 0;
tiempo[cuenta - 1] = timer_aux;
cuenta++;
INTEDG1 = !INTEDG1;

if (TMR0IF == 1)
{
cuenta--;
flag_codigo = 1;
INT1IE = 0;
}
}
else
{
TMR0IF = 0;
TMR0 = 0;
cuenta++;
}
}
}
INT1IF = 0;

INT1_ISR();
}
}

