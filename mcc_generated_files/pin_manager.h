/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC18F25K50
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set Input_Dig_1 aliases
#define Input_Dig_1_TRIS                 TRISAbits.TRISA3
#define Input_Dig_1_LAT                  LATAbits.LATA3
#define Input_Dig_1_PORT                 PORTAbits.RA3
#define Input_Dig_1_ANS                  ANSELAbits.ANSA3
#define Input_Dig_1_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define Input_Dig_1_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define Input_Dig_1_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define Input_Dig_1_GetValue()           PORTAbits.RA3
#define Input_Dig_1_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define Input_Dig_1_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define Input_Dig_1_SetAnalogMode()      do { ANSELAbits.ANSA3 = 1; } while(0)
#define Input_Dig_1_SetDigitalMode()     do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set Input_Dig_2 aliases
#define Input_Dig_2_TRIS                 TRISAbits.TRISA4
#define Input_Dig_2_LAT                  LATAbits.LATA4
#define Input_Dig_2_PORT                 PORTAbits.RA4
#define Input_Dig_2_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define Input_Dig_2_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define Input_Dig_2_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define Input_Dig_2_GetValue()           PORTAbits.RA4
#define Input_Dig_2_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define Input_Dig_2_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)

// get/set RELE_1 aliases
#define RELE_1_TRIS                 TRISAbits.TRISA5
#define RELE_1_LAT                  LATAbits.LATA5
#define RELE_1_PORT                 PORTAbits.RA5
#define RELE_1_ANS                  ANSELAbits.ANSA5
#define RELE_1_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RELE_1_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RELE_1_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RELE_1_GetValue()           PORTAbits.RA5
#define RELE_1_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RELE_1_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RELE_1_SetAnalogMode()      do { ANSELAbits.ANSA5 = 1; } while(0)
#define RELE_1_SetDigitalMode()     do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set RELE_2 aliases
#define RELE_2_TRIS                 TRISBbits.TRISB0
#define RELE_2_LAT                  LATBbits.LATB0
#define RELE_2_PORT                 PORTBbits.RB0
#define RELE_2_WPU                  WPUBbits.WPUB0
#define RELE_2_ANS                  ANSELBbits.ANSB0
#define RELE_2_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define RELE_2_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define RELE_2_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define RELE_2_GetValue()           PORTBbits.RB0
#define RELE_2_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define RELE_2_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define RELE_2_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define RELE_2_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define RELE_2_SetAnalogMode()      do { ANSELBbits.ANSB0 = 1; } while(0)
#define RELE_2_SetDigitalMode()     do { ANSELBbits.ANSB0 = 0; } while(0)

// get/set LED aliases
#define LED_TRIS                 TRISBbits.TRISB7
#define LED_LAT                  LATBbits.LATB7
#define LED_PORT                 PORTBbits.RB7
#define LED_WPU                  WPUBbits.WPUB7
#define LED_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define LED_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define LED_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define LED_GetValue()           PORTBbits.RB7
#define LED_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define LED_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define LED_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define LED_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define RC6_SetAnalogMode()         do { ANSELCbits.ANSC6 = 1; } while(0)
#define RC6_SetDigitalMode()        do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RC7_SetAnalogMode()         do { ANSELCbits.ANSC7 = 1; } while(0)
#define RC7_SetDigitalMode()        do { ANSELCbits.ANSC7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/