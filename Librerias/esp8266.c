/*
 * File:   esp8266.c
 * Author: TEOREMAIEE
 *
 * Created on June 29, 2023, 12:34 AM
 */


#include "esp8266.h"
//#include "../mcc_generated_files/eusart1.h"


void esp8266_router_init()
{
    EUSART1_Write_string("ATE0\r\n");                                           //Deshabilita todos los ECOs
    __delay_ms(1000);
    
    EUSART1_Write_string("AT+CWMODE=2\r\n");                                    //Habilita el modo 2 como acces point
    __delay_ms(200);
    
    //Antes de poner Mode, cierra servidores pone conexion unica
    EUSART1_Write_string("AT+CIPSERVER=0\r\n");                                 //Cierra servidores
    __delay_ms(200);
    EUSART1_Write_string("AT+CIPMUX=0\r\n");                                    //pone conexion unica
    __delay_ms(200);
    
    EUSART1_Write_string("AT+CIPMODE=0\r\n");                                   //trabaja en cadena no en hexadecimales
    __delay_ms(200);
    
    
    //RED WIFI como acces point canal 5 clave tipo WPA2_PSK
    EUSART1_Write_string("AT+CWSAP=\"ESP8266_IDEM\",\"noconectar\",5,3\r\n");   //datos de red wifi, hay 14 canales
    __delay_ms(200);
    //IP DEL ACCES POINT
    EUSART1_Write_string("AT+CIPAP=\"192.168.1.253\"\r\n");                     //IP que tendra el esp8266
    __delay_ms(200);
    
    EUSART1_Write_string("AT+CIPMUX=0\r\n");                                    //pone conexion unica
    __delay_ms(200);
    
    EUSART1_Write_string("AT+CIPSERVER=1,200\r\n");                             //abre servidor en puerto 200
    __delay_ms(200);
    
    EUSART1_Write_string("AT+CIPSTO=0\r\n");                                    //??
    __delay_ms(200);
}



