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
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

////////////////////////////////////////////////////////////////////////////////
// PARA USO DEL MODULO NRF24L01
#include "Librerias/nRF24L01.h"

#define spi_miso PORTBbits.RB3
#define spi_clock LATBbits.LATB2
#define spi_mosi LATCbits.LATC1
#define SPI_CS LATCbits.LATC2
#define CE_2401 LATBbits.LATB1
#define INT_2401 PORTCbits.RC0

#define spi_miso_Direction TRISBbits.TRISB3
#define spi_clock_Direction TRISBbits.TRISB2
#define spi_mosi_Direction TRISCbits.TRISC1
#define SPI_CS_Direction TRISCbits.TRISC2
#define CE_2401_Direction TRISBbits.TRISB1
#define INT_2401_Direction TRISCbits.TRISC0

const unsigned char direccion_tx[5] = {17, 17, 17, 17, 17};                     //direccion de transmision.
const unsigned char direccion_rx[5] = {17, 17, 17, 17, 17};                     //direccion de recepcion.

#include "Librerias/nRF24L01_2.h"
//END //////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
////////// DECLARACION DE VARIABLES
char procesa[30];
char trama[30];
char trama[30];
char puntero = 0;
char datorx;
char flag_rx = 0;

//END //////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
/// DECLARACION DE FUNCIONES
//void procesarx()
//{
//    if(strstr(trama,"cier="))
//    {
//        if(strstr(trama,"on")) 
//        {
//            LATB0 = 1;
//            __delay_ms(300);
//            LATB0 = 0;
//        }
//        else LATB0 = 0;
//    }
//    if(strstr(trama,"aper="))
//    {
//        if(strstr(trama,"on")) 
//        {
//            LATA5 = 1;
//            __delay_ms(300);
//            LATA5 = 0;
//        }
//        else LATA5 = 0;
//    }
//}
//END //////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// FUNCION DE INTERRUPCION
//void interrupt INTERRUPT_InterruptManager (void)
//{
//    if (RCIF == 1)                                                              //Si presenta una interrupcion en recepcion UART
//    {
//        datorx = EUSART1_Read();                                                //lee el dato
//        trama[puntero] = datorx;                                                //lo almacena en la trama
//        puntero++;                                                              //incrementa el contador de trama
//        if(puntero >= 30) puntero = 0;                                          //si llegan mas de 30 datos erroneos inicia el almacenamiento
//        if(datorx == '/')                                                       //Si llega el fin de la trama
//        {
//            RCIE = 0;                                                           //deshabilita la interrupcion
//            flag_rx = 1;                                                        //activa la bandera de que hay una trama valida
//        }
//        RCIF = 0;
//    }
//}
//END //////////////////////////////////////////////////////////////////////////

/*
                         Main application
 */

void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();
    

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    ANSELA = 0b00000111;
    ANSELB = 0b00000000;
    ANSELC = 0x00;                                                              //Todo el puerto C lo hace digital

//    INTCON = 0b01000000;                                                        //Habilita interrupciones de perifericos
//    RCIF = 0;                                                                   //Limpia bandera interrupcion serial
//    GIE = 1;                                                                    //Autoriza todas las interrupciones programadas 

    while (1)
    {
        // Add your application code
        
//        if (flag_rx == 1)
//        {
//            procesarx();                                                        //Llama el procedimiento de procesar la trama
//            puntero = 0;                                                        //Inicializa el conteo
//            memset (trama, 0, 30);                                              //Limpia la trama
//            flag_rx = 0;
//            RCIF = 0;                                                           //Limpia la bandera de la interrupcion
//            RCIE = 1;                                                           //Habilita la interrupcion serial
//        }
    }
}
/**
 End of File
*/