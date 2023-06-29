/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC18F25K50
        Driver Version    :  2.00
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

#include "mcc_generated_files/mcc.h"
#include "Librerias/esp8266.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>


////////////////////////////////////////////////////////////////////////////////
////////// DECLARACION DE VARIABLES

#define Rele1 LATA5
#define Rele2 LATB0
#define OutDig LATA3
#define Led LATB7

char texto[100];
int cuenta;
int codigo_ir;

//END //////////////////////////////////////////////////////////////////////////

/*
                         Main application
 */

void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();
    
    ANSELA = 0b00000111;
    ANSELC = 0x00;                                                              //Todo el puerto C lo hace digital
    TRISAbits.TRISA5 = 0;
    TRISBbits.TRISB0 = 0;
    TRISBbits.TRISB7 = 0;                                                       //Salid RB7 como salida
    
    LATA5 = 0;
    LATB0 = 0;
    LATB7 = 0;

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts
    // Use the following macros to:

    // Enable the Global Interrupts
//    INTERRUPT_GlobalInterruptEnable();                                          // es lo mismo que GIE = 1; y INTCON = 0b11000000;

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Enable the Peripheral Interrupts
//    INTERRUPT_PeripheralInterruptEnable();                                      //es lo mismo que PEIE = 1; y INTCON = 0b11000000;

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    void esp8266_router_init();

    while (1)
    {
        // Add your application code          
            EUSART1_Write_string("Son: ");
            sprintf(texto, "%d", cuenta);
            EUSART1_Write_string(texto);
            EUSART1_Write_string("\r");
            EUSART1_Write_string("\n");
            sprintf(texto, "%lx", codigo_ir);
            EUSART1_Write_string("CODIGO IR = ");
            EUSART1_Write_string(texto);
            EUSART1_Write_string("\r");
            EUSART1_Write_string("\n");
            
        __delay_ms(80);
        Led =~ Led; 
    }
}
/**
 End of File
*/