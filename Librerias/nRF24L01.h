
void spi_s_init();
unsigned char spi_s_read();
void spi_s_write(unsigned char dato_);
void nrf2401_write(unsigned char reg, unsigned char valor);
void nrf2401_comando(unsigned char comando);
unsigned char nrf2401_read(unsigned char reg);
void nrf2401_direccion_TX_RX(const unsigned char *direccion_,  unsigned char registro);
void flush_RX();
void flush_TX();
void flush_TX_RX();
void nrf2401_envia(unsigned char dato_tx);
char nrf2401_haydatos();  //retorna 1 ai hay datos para leer sino retorna 0
char nrf2401_recibe();
void nrF2401_init_RX(unsigned char canal);
void nrF2401_init_TX(unsigned char canal);
unsigned char get_Status();
unsigned char get_fifo_status();
void nrf2401_envia_Text(char* Text);
void nrf2401_recibe_Text(char* Buffer, char StopChar);


/* Memory Map */
#define CONFIG      0x00
#define EN_AA       0x01
#define EN_RXADDR   0x02
#define SETUP_AW    0x03
#define SETUP_RETR  0x04
#define RF_CH       0x05
#define RF_SETUP    0x06
#define status      0x07
#define OBSERVE_TX  0x08
#define CD          0x09
#define RX_ADDR_P0  0x0A
#define RX_ADDR_P1  0x0B
#define RX_ADDR_P2  0x0C
#define RX_ADDR_P3  0x0D
#define RX_ADDR_P4  0x0E
#define RX_ADDR_P5  0x0F
#define TX_ADDR     0x10
#define RX_PW_P0    0x11
#define RX_PW_P1    0x12
#define RX_PW_P2    0x13
#define RX_PW_P3    0x14
#define RX_PW_P4    0x15
#define RX_PW_P5    0x16
#define FIFO_STATUS 0x17
#define DYNPD       0x1C
#define FEATURE     0x1D


/* Bit Mnemonics */
#define MASK_RX_DR  0x40 //6
#define MASK_TX_DS  0x20 //5
#define MASK_MAX_RT 0x10 //4
#define EN_CRC      0x08 //3
#define CRC1        0x00 //1
#define CRC2        0x04 //2
#define PWR_UP      0x02 //1
#define PRIM_RX     0x01 //0
#define ENAA_P5     0x20 //5
#define ENAA_P4     0x10 //4
#define ENAA_P3     0x08 //3
#define ENAA_P2     0x04 //2
#define ENAA_P1     0x02 //1
#define ENAA_P0     0x01 //0
#define ERX_P5      0x20 //5
#define ERX_P4      0x10 //4
#define ERX_P3      0x08 //3
#define ERX_P2      0x04 //2
#define ERX_P1      0x02 //1
#define ERX_P0      0x01 //0
#define AW3         0x01 //0     3 bytes
#define AW4         0x02 //0     4 bytes
#define AW5         0x03 //0     5 bytes
#define ARD         0x10 //4
#define ARC         0x01 //0
#define PLL_LOCK    0x10 //4
#define RF_DR       0x08 //3
#define RF_PWR_0db      0x06 //6
#define RF_PWR_6db     0x04 //4
#define RF_PWR_12db     0x02 //2
#define RF_PWR_18db     0x00 //0

#define RF_DR_1Mb     0x00 // 1mbps
#define RF_DR_2Mb     0x08 // 2mbps
#define RF_DR_250Kb    0x10 //250kps

#define RX_DR       0x40 //6
#define TX_DS       0x20 //5
#define MAX_RT      0x10 //4
#define RX_P_NO     0x02 //1
#define TX_FULL     0x01 //0
#define PLOS_CNT    0x10 //4
#define ARC_CNT     0x01 //0
#define TX_REUSE    0x40 //6
#define FIFO_FULL   0x20 //5
#define TX_EMPTY    0x10 //4
#define RX_FULL     0x02 //1
#define RX_EMPTY    0x01 //0
#define DPL_P5      0x20 //5
#define DPL_P4      0x10 //4
#define DPL_P3      0x08 //3
#define DPL_P2      0x04 //2
#define DPL_P1      0x02 //1
#define DPL_P0      0x01 //0
#define EN_DPL      0x04 //2
#define EN_ACK_PAY  0x02 //1
#define EN_DYN_ACK  0x01 //0


/* Instruction Mnemonics */
#define R_REGISTER    0x00
#define W_REGISTER    0x20
#define REGISTER_MASK 0x1F
#define ACTIVATE      0x50
#define R_RX_PL_WID   0x60
#define R_RX_PAYLOAD  0x61
#define W_TX_PAYLOAD  0xA0
#define W_ACK_PAYLOAD 0xA8     // and with ack pipe number
#define FLUSH_TX      0xE1
#define FLUSH_RX      0xE2
#define REUSE_TX_PL   0xE3
//#define NOP           0xFF


/* Non-P omissions */
#define LNA_HCURR   0x01 //0


/* P model memory Map */
#define RPD         0x09


/* P model bit Mnemonics */
#define RF_DR_LOW   0x10 //5
#define RF_DR_HIGH  0x08 //3
#define RF_PWR_LOW  0x02 //1
#define RF_PWR_HIGH 0x06 //2