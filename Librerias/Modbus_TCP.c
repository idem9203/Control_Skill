/*
 * File:   Modbus_TCP.c
 * Author: TEOREMAIEE
 *
 * Created on June 29, 2023, 10:43 PM
 */
#include "../Librerias/Modbus_TCP.h"
#include "../Librerias/esp8266.h"
#include "builtins.h"

char modbus_rx[50]; // Buffer RX modbux
char modbus_tx[50];// Buffer TX modbus

unsigned int tamano;
extern  char estado_rec;



void modbus_write_holding(unsigned int dir_mod, unsigned int dat_mod)
{
    PIE1bits.RC1IE = 0; // deshabiliota interrpciones
    modbus_tx[0] = 0;
    modbus_tx[1] = 0;
    modbus_tx[2] = 0;
    modbus_tx[3] = 00;// identifica protocolo modbus
    modbus_tx[4] = 00;;// identifica protocolo modbus

    modbus_tx[5] = 6;  // largo trama
    modbus_tx[6] = dir_esclavo; //  Identificación del esclavo
    modbus_tx[7] = 6;  // comando de escribir 1 regsito holding
    //  guarda la direccion
    modbus_tx[8] = Hi(dir_mod);
    modbus_tx[9] = Lo(dir_mod);
    //guarda la dato
    modbus_tx[10] = Hi(dat_mod);
    modbus_tx[11] = Lo(dat_mod);
    //  manda la info
    manda_esp8266_bytes(modbus_tx,12);

}

void modbus_write_holding_varios(unsigned int dir_mod, unsigned int *buff_datos,unsigned int cuantos)
{
    unsigned char cuent1;
    PIE1bits.RC1IE = 0; // deshabilita interrupcio
    modbus_tx[0] = 0;
    modbus_tx[1] = 0;
    modbus_tx[2] = 0;
    modbus_tx[3] = 00;// identifica protocolo modbus
    modbus_tx[4] = 00;;// identifica protocolo modbus

    modbus_tx[5] = 7 + cuantos * 2;  // largo trama
    modbus_tx[6] = dir_esclavo; //  Identificación del esclavo
    modbus_tx[7] = 0x10;  // comando de escribir varios regsito holding
    //guarda la direccion
    modbus_tx[8] = Hi(dir_mod);
    modbus_tx[9] = Lo(dir_mod);
    //guarda la cuantos
    modbus_tx[10] = Hi(cuantos);
    modbus_tx[11] = Lo(cuantos);
    // contador de datos
    modbus_tx[12] = 2 * cuantos;
    for(cuent1 = 13; cuent1 < 12 + 2 * cuantos; cuent1++)
    {
        modbus_tx[cuent1] = Hi(*buff_datos);
        cuent1++;
        modbus_tx[cuent1] = Lo(*buff_datos++);

    }
    //manda la info
    manda_esp8266_bytes(modbus_tx,17);
}

void modbus_write_coilsdigital(unsigned int dir_mod, unsigned int dat_dig)
{ 
    PIE1bits.RC1IE = 0; // dehabilita interrpcion
    modbus_tx[0] = 0;
    modbus_tx[1] = 0;
    modbus_tx[2] = 0;
    modbus_tx[3] = 00;// identifica protocolo modbus
    modbus_tx[4] = 00;;// identifica protocolo modbus

    modbus_tx[5] = 9;  // largo trama
    modbus_tx[6] = dir_esclavo; //  Identificación del esclavo
    modbus_tx[7] = 0x0f; // comando de escribir varios coils
    //guarda la direccion
    modbus_tx[8] = Hi(dir_mod);
    modbus_tx[9] = Lo(dir_mod);
    //cuantos escribe
    modbus_tx[10] = 00;
    modbus_tx[11] = 0x0f;
    modbus_tx[12] = 02;
    modbus_tx[13] = Lo(dat_dig);
    modbus_tx[14] = Hi(dat_dig);
    //manda la info
    manda_esp8266_bytes(modbus_tx,15);

}
//para leer info
//+ipd,4,13:6
void modbus_read_analog(unsigned int dir_mod, unsigned int cuantos)
{
    unsigned char cuent1;
    tamano=cuantos;
    modbus_tx[0] = 0;
    modbus_tx[1] = 0;
    modbus_tx[2] = 0;
    modbus_tx[3] = 00;// identifica protocolo modbus
    modbus_tx[4] = 00;;// identifica protocolo modbus

    modbus_tx[5] = 2 + cuantos * 2;  // largo trama
    modbus_tx[6]= dir_esclavo; //  Identificación del esclavo
    modbus_tx[7]= 0x4;  // comando de escribir varios regsito holding
    //guarda la direccion
    modbus_tx[8] = Hi(dir_mod);
    modbus_tx[9] = Lo(dir_mod);
    //guarda la cuantos
    modbus_tx[10] = Hi(cuantos);
    modbus_tx[11] = Lo(cuantos);
    // contador de datos
    //manda la info

    estado_rec = 1;// estado de captura recibidos
    PIR1bits.RC1IF = 0;
    //BORRA ERRORES DE RECEPCION
    CREN = 0;
    CREN = 1;
    PIE1bits.RC1IE = 1; // habilita la recepcoón
    manda_esp8266_bytes(modbus_tx,12);
}