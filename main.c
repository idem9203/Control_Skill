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
unsigned char dato_serial = 0;
//char texto[20];
//END //////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
////////// DECLARACION DE VARIABLES
#define RELE1 LATA5
#define RELE2 LATB0
unsigned int valor = 0;
double voltaje = 0.0;
double sensibilidad = 0.282;
double relacion = 0.100;
double I = 0.0;
double I_max = 0.0;
double I_min = 0.0;
double I_rms = 0.0;
double offset = 0.100;
int i = 0;
int j = 0;
int k = 0;
int l = 0;
char valor_string[14];

////////////////////////////////////////////////////////////////////////////////
// CUATRO HORAS
unsigned long conteo = 0;
unsigned long currentSeg = 0;
unsigned long previousMillis = 0;                                               //Conteo anterior
const long intervalo = 14400;                                                   //Tiempo de espera en segundos

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
// ECUACION PARA OBTENER N MUESTRAS DE CORRIENTE 
double get_corriente_AC(int n_muestras)
{
  double corriente = 0.0;
  I_max = 0.0;
  I_min = 0.0;
  for(int i = 0; i < n_muestras; i++)
  {
      valor = ADC_GetConversion(0);
      voltaje =  valor * (5.0 / 1023.0);                                        ////lectura del sensor
      corriente = ((voltaje - 2.527) / sensibilidad);                             //Ecuación  para obtener la corriente
      if (corriente > I_max) I_max = corriente;
      if (corriente < I_min) I_min = corriente;
  }
//  I_max = I_max / n_muestras;
//  I_min = I_min / n_muestras;
  return(((I_max - I_min) / 2));
}

////////////////////////////////////////////////////////////////////////////////
// CALIBRACION
//
//double get_voltage(int n_muestras)
//{
//  double voltage=0.0;
//  double v_max = 0.0;
//  for(int i=0;i<n_muestras;i++)
//  {
//    voltage = ADC_GetConversion(0) * (5.0 / 1023.0);   
//    if (voltage > v_max) v_max = voltage;
//  }
//  voltage=voltage/n_muestras;
//  return(v_max);
//}
////////////////////////////////////////////////////////////////////////////////

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

////////////////////////////////////////////////////////////////////////////////
// DISPARO POR SOBRE CORRIENTE
void trip_protec_current()
{
    I = ((get_corriente_AC(2000) - offset) / relacion);
    if (I <= 9)
    {
        RELE1 = 0;
        currentSeg = conteo;
        if (currentSeg - previousMillis >= intervalo)
        {
            previousMillis = currentSeg;
            RELE1 = 1;
            __delay_ms(3000);
        }
    }
    if (I >= 16 && I < 17)
    {
        i = i + 1;
        if (i > 600)
        {
            i = 0;
            RELE1 = 0;
            while(1){}
        }
    }
    if (I >= 17 && I < 18)
    {
        j = j + 1;
        if ( j > 300)
        {
            j = 0;
            RELE1 = 0;
            while(1){}
        }
    }
    if (I >= 18 && I < 19)
    {
        k = k + 1;
        if (k > 120)
        {
            k = 0;
            RELE1 = 0;
            while(1){}          
        }
    }
    if (I >= 19)
    {
        l = l + 1;
        if (l > 15)
        {
            l = 0;
            RELE1 = 0;
            while(1){}
        }
    }
}

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
//    RCIE = 1;                                                                   //Habilita la interrupcion serial
//    GIE = 1;                                                                    //Autoriza todas las interrupciones programadas 

    //INICIAMOS EL MODULO NRF24L01
    spi_s_init();
//    nrF2401_init_TX(17);                                                        //incicializa transmision por el canal 17
    nrF2401_init_RX(17);                                                        //Inicializa recepcion por el canal 17
    ////////////////////////////////////////////////////////////////////////////
    
    
    __delay_ms(2000);
    RELE1 = 1;
    __delay_ms(3000);

    while (1)
    {
        // Add your application code        
        
//        I_rms = I * 0.707 / 0.150;
//        snprintf(valor_string, 14, "%.3f Amp.\n\r", (get_corriente_AC(2000) - offset) / relacion);
//        if (EUSART1_is_tx_ready()) EUSART1_Write_string(valor_string);
        
        trip_protec_current();
        
        if(nrf2401_haydatos() == 1)                                             //Recibe datos del modulo NRF2401
        {
            dato_serial = nrf2401_recibe();
            if (dato_serial == 1) 
            {
                RELE1 = 1;
                __delay_ms(3000);
            }
        }
   
        __delay_ms(100);
        

    }
}
/**
 End of File
*/