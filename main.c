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
#include "Librerias/Modbus_TCP.h"
#include "Librerias/esp8266.h"



////////////////////////////////////////////////////////////////////////////////
////////// DECLARACION DE VARIABLES

#define Rele1 LATA5
#define Rele2 LATB0
#define led1 LATB7
#define InputDig1 PORTA.RA3
#define InputDig2 PORTA.RA4


//usadas para leer datos modbus
extern unsigned int  rec_son;
extern unsigned char flag_modbus;

//buffer para enviar varias variables analogas holding, si neecsita más cambie el tamaño
unsigned int buff_tx[5];

//registro para escribir coils digitales
union {
    unsigned int byte;   
    // a structure with 8 single bit bit-field objects, overlapping the union member "byte"
    struct {
        unsigned b0:1;
        unsigned b1:1;
        unsigned b2:1;
        unsigned b3:1;
        unsigned b4:1;
        unsigned b5:1;
        unsigned b6:1;
        unsigned b7:1;
        unsigned b8:1;
        unsigned b9:1;
        unsigned b10:1;
        unsigned b11:1;
        unsigned b12:1;
        unsigned b13:1;
        unsigned b14:1;
        unsigned b15:1;
    };
}digital_out;
// digital_out.byte; seria el byte complet de 8 bits
// digital.out.b0; es el bit a bit
//unsigned int digital_out = 0;
// le da nombre a las  salidas digitales deseadas   le puede colocar el no,bre que deseen y anexar hasta 15
#define digit1 digital_out.b0
#define digit2 digital_out.b1
#define digit3 digital_out.b2
#define digit4 digital_out.b3
#define digit5 digital_out.b4
#define digit6 digital_out.b5
#define digit7 digital_out.b6
#define digit8 digital_out.b7






unsigned int codigo;  //leer el adc

float val1, val2;  // variables de control   analogas escalada
unsigned int lectu1,lectu2;    //  variables de lectura analogas  escalada



//END //////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// FUNCION DE INTERRUPCION
void interrupt INTERRUPT_InterruptManager (void)
{
    if (RCIF == 1)                                                              //Si presenta una interrupcion en recepcion UART
    {
        esp82666_interrupcion_1();
    }
}
//END //////////////////////////////////////////////////////////////////////////

/*
                         Main application
 */


void main(void)
{
    
    // Initialize the device
    SYSTEM_Initialize();
    
    
//    ANSELA = 0b00000111;
//    ANSELC = 0x00;                                                              //Todo el puerto C lo hace digital
//    TRISAbits.TRISA5 = 0;
//    TRISBbits.TRISB0 = 0;
//    TRISBbits.TRISB7 = 0;                                                       //Salid RB7 como salida
//    TRISAbits.TRISA3 = 1;                                                       //Input RA3 como Entrada
//    TRISAbits.TRISA4 = 1;                                                       //Input RA3 como Entrada
    
//    Input_Dig_1_SetDigitalInput();
//    
    LATA5 = 0;
    LATB0 = 0;
    LATB7 = 0;
    
    
//    EUSART1_Write_string("INCIIANDO\r\n");

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



// Configura el modulo esp_8266
     // inicia modulo Esp8266

     // configura interrupciom serial
    PIR1bits.RC1IF = 0;
    PIE1bits.RC1IE = 1;
    GIE = 1; // autiliza interrcpiones
    


    // quita el ECO
    manda_AT_COMANDO("ATE0","OK", "ERROR", 500);
    manda_AT_COMANDO("AT+CWMODE=1","OK", "no change", 1000); // se conecta a una red existente
    //manda_AT_COMANDO("AT+CWJAP=\"LA_MEJOR\",\"forever17\"","OK","OK",10000);  //se conecta a una red WIFI
    manda_AT_COMANDO("AT+CWJAP=\"TIGO-4EA0\",\"2NB112100448\"","OK","OK",10000);  //se conecta a una red WIFI
    //manda_AT_COMANDO("AT+CWJAP=\"Celular Alcides\",\"noconectar\"","OK","OK",10000);  //se conecta a una red WIFI
    manda_AT_COMANDO("AT+CIPMUX=1","OK","OK",3000);  //Permite multiples conexiones
    manda_AT_COMANDO("AT+CIFSR","OK","OK",5000);  //muestra la ip del modulo
    __delay_ms(2000);
    //  conecta("192.168.43.80");
    conecta("192.168.1.16");
    

    while (1)
    {
        // Add your application code          
//        codigo=ADC_Get_Sample(0);
//        val1=codigo*100.0/1023.0; // lo escala de o a 100
//        Delay_us(2);
//        codigo=ADC_Get_Sample(1);
//        val2=codigo*100.0/1023.0; // lo escala de o a 100
//        Delay_us(2);


        // manda dato a un registro holding
        /*  modbus_write_holding(0,val1); //manda a la direccion cero el dato 100
        modbus_write_holding(1,val2); //manda a la direccion uno el dato 100
        */
        
        //manda varias variabels analogas
        // carga el buffer con los datos a enviar
//        buff_tx[0]=val1;
//        buff_tx[1]=val2;
//        modbus_write_holding_varios(0,buff_tx,2);// manda desde la direccion cero dos datos

         //manda hasta 16 coils o datos digitales
        if (Input_Dig_1_GetValue() == 1) digit1 =! digit1;
        if (Input_Dig_2_GetValue() == 1) digit2 =! digit2;
        
//
        modbus_write_coilsdigital(0,digital_out.byte);  //  saca desde la direccion cero las salidas digiles  permite 15
        
        //manda dato a un registro holding
        modbus_write_holding(0,100); //manda a la direccion cero el dato 100
        modbus_write_holding(1,50); //manda a la direccion 1 el dato 50
            
        __delay_ms(80);
        LED_Toggle(); 
    }
}
/**
 End of File
*/