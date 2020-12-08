# 1 "newmain.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "newmain.c" 2
# 1 "./config.h" 1
# 38 "./config.h"
#pragma config OSC=HS
#pragma config WDT=OFF
#pragma config LVP=OFF
#pragma config DEBUG = OFF
#pragma config WDTPS = 1
# 1 "newmain.c" 2

# 1 "./pic18f4520.h" 1
# 2 "newmain.c" 2

# 1 "./delay.h" 1



void atraso_ms(int t);
# 3 "newmain.c" 2

# 1 "./lcd.h" 1
# 14 "./lcd.h"
void lcd_init(void);
void lcd_cmd(unsigned char val);
void lcd_dat(unsigned char val);
void lcd_str(const char* str);
# 4 "newmain.c" 2

# 1 "./teclado.h" 1







    unsigned char tc_tecla(unsigned int timeout);
# 5 "newmain.c" 2

# 1 "./caixaeletronica.h" 1
# 11 "./caixaeletronica.h"
struct valor {
    unsigned char x[4];
};
struct valor leconta(int);
void piscaLed();
void exibeSeg(struct valor);
struct valor subtrai(struct valor , struct valor );
struct valor soma(struct valor , struct valor );
# 6 "newmain.c" 2




void main() {
    struct valor saldo;
    struct valor dep;
    struct valor sac;
    struct valor conta;
    unsigned char est;
    int flag = 0;

    (*(volatile __near unsigned char*)0xFC1) = 0x06;
    (*(volatile __near unsigned char*)0xF95) = 0x00;
    (*(volatile __near unsigned char*)0xF96) = 0x00;
    (*(volatile __near unsigned char*)0xF93) = 0x01;

    lcd_init();

    (*(volatile __near unsigned char*)0xF81) = 0xFF;

    lcd_cmd(0x01);
    lcd_cmd(0x80);
    lcd_str("   Caixa Eletronico (banco UNIFEI)");

    for (;;) {
        (*(volatile __near unsigned char*)0xF92) = 0x20;
        (*(volatile __near unsigned char*)0xF93) = 0x3F;

        lcd_cmd(0xC0);
        lcd_str(" RB3.Saldo RB4.Depositar RB5.Sacar ");


        lcd_cmd(0x18);

        if (!(((*(volatile __near unsigned char*)0xF81)) & (1<<3)) || !(((*(volatile __near unsigned char*)0xF81)) & (1<<4)) || !(((*(volatile __near unsigned char*)0xF81)) & (1<<5))) {
            est = (*(volatile __near unsigned char*)0xF81);

            if (flag == 0) {
                (*(volatile __near unsigned char*)0xF93) = 0xF8;

                lcd_cmd(0x01);
                lcd_cmd(0x80);
                lcd_str("Conta: ");

                saldo = leconta(0);
                for(int h = 0; h < 4; h++){
                    conta.x[h] = saldo.x[h] - h;
                }

                lcd_cmd(0xC0);
                lcd_str("Aguarde...");
                piscaLed();

            }

            if (!((est) & (1<<3))) {
                lcd_cmd(0x01);
                lcd_cmd(0x80);

                lcd_str("Saldo: R$");
                for (int h = 0; h < 4; h++) {
                    lcd_dat(saldo.x[h]);
                }

                (*(volatile __near unsigned char*)0xF92) = 0x20;
                (*(volatile __near unsigned char*)0xF93) = 0x3F;

                lcd_cmd(0xC0);
                lcd_str(" RB0 p/ voltar          ");
                exibeSeg(saldo);

                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));

                lcd_cmd(0x01);
                (*(volatile __near unsigned char*)0xF81) = 0xFF;
            }
            if (!((est) & (1<<4))) {
                (*(volatile __near unsigned char*)0xF93) = 0xF8;

                lcd_cmd(0x01);
                lcd_cmd(0x80);
                lcd_str("Depositar:R$");
                dep = leconta(1);
                saldo = soma(saldo, dep);

                (*(volatile __near unsigned char*)0xF92) = 0x20;
                (*(volatile __near unsigned char*)0xF93) = 0x3F;

                lcd_cmd(0xC0);
                lcd_str(" RB0 p/ voltar          ");
                exibeSeg(saldo);

                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));

                lcd_cmd(0x01);
                (*(volatile __near unsigned char*)0xF81) = 0xFF;

            }
            if (!((est) & (1<<5))) {
                (*(volatile __near unsigned char*)0xF93) = 0xF8;

                lcd_cmd(0x01);
                lcd_cmd(0x80);
                lcd_str("Sacar:R$");
                sac = leconta(1);
                saldo = subtrai(saldo, sac);

                (*(volatile __near unsigned char*)0xF92) = 0x20;
                (*(volatile __near unsigned char*)0xF93) = 0x3F;

                lcd_cmd(0xC0);
                lcd_str(" RB0 p/ voltar          ");
                exibeSeg(saldo);

                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
                (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));

                lcd_cmd(0x01);
                (*(volatile __near unsigned char*)0xF81) = 0xFF;
            }
            flag = 1;
        }
        if(flag == 1){
            lcd_cmd(0x80);
            lcd_str(" Conta: ");
            for (int h = 0; h < 4; h++) {
                lcd_dat(conta.x[h]);
            }
        }
    }

}
