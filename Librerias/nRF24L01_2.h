#include "nRF24L01.h"

/*
extern int spi_miso;
extern int spi_clock;
extern int spi_mosi;
extern int SPI_CS;
extern int CE_2401;
extern int INT_2401;

extern int spi_miso_Direction ;
extern int spi_clock_Direction;
extern int spi_mosi_Direction ;
extern int SPI_CS_Direction;
extern int CE_2401_Direction;
extern int INT_2401_Direction;
*/

extern const unsigned char direccion_tx[];
extern const unsigned char direccion_rx[];


void spi_s_init()
{
    //configura pines a usar como spi;
    spi_mosi_Direction = 0;
    spi_clock_Direction = 0;
    SPI_CS_Direction = 0;
    spi_miso_Direction = 1;
    CE_2401_Direction = 0;   //Salida CE
    INT_2401_Direction = 1;  //Entrada

    spi_clock = 0;
    SPI_CS = 0;
    spi_mosi = 0;
    CE_2401 = 0;
    
}

unsigned char  spi_s_read()
{
    unsigned char cont_s = 0;
    unsigned char dato_ = 0;

    for(cont_s = 0; cont_s < 8; cont_s++)
    {
        dato_ <<= 1;
        spi_clock = 1;
        __delay_us(1);   //retardo de lectura

        if(spi_miso != 0)
        {
            dato_ |= 1;
        }
        spi_clock = 0;
        __delay_us(1);
    }
    return dato_;
}

void spi_s_write(unsigned char dato_)
{
    unsigned char cont_s = 0;

    for(cont_s = 0; cont_s < 8; cont_s++)
    {

        if((dato_ & 0x80) != 0) spi_mosi = 1;  //sino termina ritacion coloca un uno sino un cero
        else    spi_mosi = 0;
        dato_ <<= 1;  //vota
        //genera un pulso del reloj
        spi_clock = 1;
        __delay_us(5);
        spi_clock = 0;
        __delay_us(5);
    }
}


//escribe un valor en un registro
void nrf2401_write(unsigned char reg, unsigned char valor)
{
    SPI_CS = 0;
    spi_s_write((reg | W_REGISTER));  //comando de escritura
    spi_s_write(valor);   //escribe el valor
    SPI_CS = 1;
    __delay_us(5);

}

void nrf2401_comando(unsigned char comando)
{
    SPI_CS = 0;
    spi_s_write(comando);
    SPI_CS = 1;
    __delay_us(5);
}

unsigned char nrf2401_read(unsigned char reg)
{
    unsigned char dato_ = 0;
    SPI_CS = 0;
    spi_s_write((reg | R_REGISTER));
    dato_ = spi_s_read();
    SPI_CS = 1;
    __delay_us(5);
    return dato_;
}


void nrf2401_direccion_TX_RX(const unsigned char *direccion_,  unsigned char registro)
{
    unsigned char cont_s;

    SPI_CS = 0;
    spi_s_write(registro | W_REGISTER);
    for(cont_s = 0; cont_s < 5; cont_s++)  //son cinco bytes de direccion
    {
        spi_s_write(direccion_[cont_s]);
    }
    SPI_CS = 1;
    __delay_us(5);

}


//limpia buffer de  rx
void flush_RX()
{
    nrf2401_write(status, 0x70);
    nrf2401_comando(FLUSH_RX);
}

//limpia buffer de  TX
void flush_TX()
{
    nrf2401_write(status, 0x70);
    nrf2401_comando(FLUSH_TX);
}

//limpia buffer de tx y rx
void flush_TX_RX()
{
    nrf2401_write(status, 0x70);
    nrf2401_comando(FLUSH_TX);
    nrf2401_comando(FLUSH_RX);
}


//
void nrf2401_envia(unsigned char dato_tx)
{
    unsigned char cont_ = 0;

    flush_TX();
    nrf2401_write(CONFIG,  PWR_UP +CRC2 + EN_CRC); //PASA A MODO DE Tranmison    Y ENCIENDE EL MODULO   2 bit crc
    //   nrf2401_write(CONFIG, 0x3A);

    SPI_CS = 0;
    spi_s_write(W_TX_PAYLOAD);    //escribe comando de envio de datos
    spi_s_write(dato_tx);          //escribe en el buffer
    SPI_CS = 1;
    CE_2401 = 1;
    __delay_us(15);
    CE_2401 = 0;
    nrf2401_write(CONFIG, PRIM_RX + PWR_UP +CRC2 + EN_CRC); //PASA A MODO DE RECEPCION    Y ENCIENDE EL MODULO 2 bits crc
}


//lee dato del buffer

char nrf2401_recibe()
{
    char valor_;
    SPI_CS = 0;
    spi_s_write(R_RX_PAYLOAD);
    valor_ = spi_s_read();
    SPI_CS = 1;
    __delay_us(5);
    return (valor_);
}


void nrF2401_init_RX(unsigned char canal)
{
    CE_2401 = 0;
    nrf2401_write(CONFIG, CRC2 + EN_CRC);  // 2 bit crc
    nrf2401_write(SETUP_RETR, 0x00);   //no hay retrasmision solo es recepcion
    nrf2401_write(SETUP_AW, AW5);   //DIRECCION DE 5 BYTES
    nrf2401_write(RF_SETUP, RF_DR_250Kb + RF_PWR_0db);      //a maxima potencia y 2mbps
    nrf2401_write(RF_CH, canal);    //CANAL DE COMUNICACION
    nrf2401_write(EN_AA, 0x00); //sin autoreconocimiento
    nrf2401_write(RX_PW_P0, 1); //tamaño de trama en el caso 1
    nrf2401_write(CONFIG, PRIM_RX + PWR_UP +CRC2 + EN_CRC); //PASA A MODO DE RECEPCION    Y ENCIENDE EL MODULO 2 bits crc
    nrf2401_direccion_TX_RX(direccion_tx , TX_ADDR);
    nrf2401_direccion_TX_RX(direccion_tx, RX_ADDR_P0);
    flush_TX_RX();
    CE_2401 = 1;
}

void nrF2401_init_TX(unsigned char canal)
{
    CE_2401 = 0;    //para podre escribir  en los registro
    nrf2401_write(SETUP_RETR, 0x00);  //sin retrasmisión
    // nrf2401_write(SETUP_RETR, 0xfa);  //con 10 retrasmisones cada 4 ms
    nrf2401_write(SETUP_AW, AW5);  // direccion de 5 bytes
    nrf2401_write(RF_SETUP, RF_DR_250Kb + RF_PWR_0db);      //a maxima potencia y 1mbps
    nrf2401_write(RF_CH, canal);   //canal de comunicacion  tiene para 127 canales por defecto el 2
    nrf2401_write(EN_AA, 0);  //sin autoreconocimiento
    nrf2401_write(CONFIG, PWR_UP +CRC2 + EN_CRC);  //configura el regsito 2 bits de crc
    nrf2401_direccion_TX_RX(direccion_tx, TX_ADDR);
    nrf2401_direccion_TX_RX(direccion_tx, RX_ADDR_P0);
    flush_TX_RX();
    CE_2401 = 1;
}


unsigned char get_Status()
{
    return nrf2401_read (status);
}

unsigned char get_fifo_status()
{
    return nrf2401_read (FIFO_STATUS);

}

//Procedimiento Para envviar una cadeda
void nrf2401_envia_Text(char* Text)
{
    flush_TX();
    while(*Text)
    {
        nrf2401_envia(*Text++);
    }
    __delay_ms(3);//espera que lleguen los datos
}

char nrf2401_haydatos()
{
    if(get_Status() == 0x40) return(1);
    else return(0);
}

//Para Recibir Una cadena hast que llegue un stocarcater
void nrf2401_recibe_Text(char* Buffer, char StopChar)
{
    flush_RX();
    
    for (int i = 0; i < 20; i++) {
        if(get_Status() == 0x40) *Buffer++ = nrf2401_recibe();
        if (nrf2401_recibe() == '/') break;
    }

//    while(*(Buffer-1)!= StopChar)   //mientras no llegue el caracter deseado
//    {
//        if(get_Status() == 0x40) *Buffer++ = nrf2401_recibe();  //sigue almacenando en el buffer       ,
//    }
    *--Buffer = 0; //coloca un cero al final para que sea una cadena
}