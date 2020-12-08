#include <stdio.h>
#include <stdlib.h>
#include "caixaeletronica.h"
#include "pic18f4520.h"
#include "lcd.h"
#include "teclado.h"
#include "delay.h"
#include "config.h"


unsigned int atrasoMin = 20;
unsigned int atrasoMed = 150;
unsigned int atrasoMax = 1000;
unsigned int atrasoMax2 = 3000;
unsigned int atrasoLed = 150;

void piscaLed() {
    TRISD = 0x00;
    PORTD = 0x00;
    TRISB = 0x00;
    PORTB = 0x00;
    for (int l = 0; l < 1; l++) {
        PORTD = 0b00000000;
        PORTB = 0b00000000;
        atraso_ms(atrasoLed);
        PORTD = 0b00000001;
        PORTB = 0b10000000;
        atraso_ms(atrasoLed);
        PORTD = 0b00000010;
        PORTB = 0b01000000;
        atraso_ms(atrasoLed);
        PORTD = 0b00000100;
        PORTB = 0b00100000;
        atraso_ms(atrasoLed);
        PORTD = 0b00001000;
        PORTB = 0b00010000;
        atraso_ms(atrasoLed);
        PORTD = 0b00010000;
        PORTB = 0b00001000;
        atraso_ms(atrasoLed);
        PORTD = 0b00100000;
        PORTB = 0b00000100;
        atraso_ms(atrasoLed);
        PORTD = 0b01000000;
        PORTB = 0b00000010;
        atraso_ms(atrasoLed);
        PORTD = 0b10000000;
        PORTB = 0b00000001;
        atraso_ms(atrasoLed);
        PORTD = 0b01000000;
        PORTB = 0b00000010;
        atraso_ms(atrasoLed);
        PORTD = 0b00100000;
        PORTB = 0b00000100;
        atraso_ms(atrasoLed);
        PORTD = 0b00010000;
        PORTB = 0b00001000;
        atraso_ms(atrasoLed);
        PORTD = 0b00001000;
        PORTB = 0b00010000;
        atraso_ms(atrasoLed);
        PORTD = 0b00000100;
        PORTB = 0b00100000;
        atraso_ms(atrasoLed);
        PORTD = 0b00000010;
        PORTB = 0b01000000;
        atraso_ms(atrasoLed);
        PORTD = 0b00000001;
        PORTB = 0b00000001;

    }
}

void exibeSeg(struct valor saldo) {
    int unsigned k, i;

    BitClr(INTCON2, 7);
    ADCON1 = 0x0E;
    TRISA = 0x00;
    TRISD = 0x00;
    PORTD = 0x00;
    while (BitTst(PORTB, 0)) { //enquanto usuario nao apertar RB0


        if (saldo.x[3] == 48) {
            PORTD = 0x3F;
        }
        if (saldo.x[3] == 49) {
            PORTD = 0x06;
        }
        if (saldo.x[3] == 50) {
            PORTD = 0x5B;
        }
        if (saldo.x[3] == 51) {
            PORTD = 0x4F;
        }
        if (saldo.x[3] == 52) {
            PORTD = 0x66;
        }
        if (saldo.x[3] == 53) {
            PORTD = 0x6D;
        }
        if (saldo.x[3] == 54) {
            PORTD = 0x7D;
        }
        if (saldo.x[3] == 55) {
            PORTD = 0x07;
        }
        if (saldo.x[3] == 56) {
            PORTD = 0x7F;
        }
        if (saldo.x[3] == 57) {
            PORTD = 0x6F;
        }

        BitSet(PORTA, 5);
        BitClr(PORTA, 4);
        BitClr(PORTA, 3);
        BitClr(PORTA, 2);
        for (k = 0; k < 1500; k++);


        if (saldo.x[2] == 48) {
            PORTD = 0x3F;
        }
        if (saldo.x[2] == 49) {
            PORTD = 0x06;
        }
        if (saldo.x[2] == 50) {
            PORTD = 0x5B;
        }
        if (saldo.x[2] == 51) {
            PORTD = 0x4F;
        }
        if (saldo.x[2] == 52) {
            PORTD = 0x66;
        }
        if (saldo.x[2] == 53) {
            PORTD = 0x6D;
        }
        if (saldo.x[2] == 54) {
            PORTD = 0x7D;
        }
        if (saldo.x[2] == 55) {
            PORTD = 0x07;
        }
        if (saldo.x[2] == 56) {
            PORTD = 0x7F;
        }
        if (saldo.x[2] == 57) {
            PORTD = 0x6F;
        }

        BitClr(PORTA, 5);
        BitSet(PORTA, 4);
        BitClr(PORTA, 3);
        BitClr(PORTA, 2);
        for (k = 0; k < 1500; k++);

        if (saldo.x[1] == 48) {
            PORTD = 0x3F;
        }
        if (saldo.x[1] == 49) {
            PORTD = 0x06;
        }
        if (saldo.x[1] == 50) {
            PORTD = 0x5B;
        }
        if (saldo.x[1] == 51) {
            PORTD = 0x4F;
        }
        if (saldo.x[1] == 52) {
            PORTD = 0x66;
        }
        if (saldo.x[1] == 53) {
            PORTD = 0x6D;
        }
        if (saldo.x[1] == 54) {
            PORTD = 0x7D;
        }
        if (saldo.x[1] == 55) {
            PORTD = 0x07;
        }
        if (saldo.x[1] == 56) {
            PORTD = 0x7F;
        }
        if (saldo.x[1] == 57) {
            PORTD = 0x6F;
        }

        BitClr(PORTA, 5);
        BitClr(PORTA, 4);
        BitSet(PORTA, 3);
        BitClr(PORTA, 2);
        for (k = 0; k < 1500; k++);

        if (saldo.x[0] == 48) {
            PORTD = 0x3F;
        }
        if (saldo.x[0] == 49) {
            PORTD = 0x06;
        }
        if (saldo.x[0] == 50) {
            PORTD = 0x5B;
        }
        if (saldo.x[0] == 51) {
            PORTD = 0x4F;
        }
        if (saldo.x[0] == 52) {
            PORTD = 0x66;
        }
        if (saldo.x[0] == 53) {
            PORTD = 0x6D;
        }
        if (saldo.x[0] == 54) {
            PORTD = 0x7D;
        }
        if (saldo.x[0] == 55) {
            PORTD = 0x07;
        }
        if (saldo.x[0] == 56) {
            PORTD = 0x7F;
        }
        if (saldo.x[0] == 57) {
            PORTD = 0x6F;
        }
        BitClr(PORTA, 5);
        BitClr(PORTA, 4);
        BitClr(PORTA, 3);
        BitSet(PORTA, 2);
        for (k = 0; k < 1500; k++);
    }
    BitClr(PORTA, 5);
    BitClr(PORTA, 4);
    BitClr(PORTA, 3);
    BitClr(PORTA, 2);
}
struct valor leconta(int op) {
    unsigned char i;
    unsigned char j = 0;
    unsigned char tmp = 0x30;
    struct valor saldo;
    while (tmp < 0x3C) {

        TRISD = 0x0F;
        tmp = tc_tecla(0) + 0x30;
        TRISD = 0x00;

        if (op == 0) { //se estiver gerando o saldo
            saldo.x[j] = tmp + j;
            if (saldo.x[j] > 57) {
                saldo.x[j] = 53;
            }
        }
        if (op == 1) {
            saldo.x[j] = tmp;
        }

        lcd_dat(tmp);
        if (tmp == 0x3A) {
            lcd_cmd(L_L2);
            for (i = 0; i < 16; i++) {
                lcd_dat(i % 2);
                atraso_ms(atrasoMin);
            }
            lcd_cmd(L_L2);
        }
        j++;
    }
    return saldo; //retorna soma dos numeros da conta (com erro)
}

struct valor soma(struct valor saldo, struct valor dep) {
    for (int i = 3; i > 0; i--) {
        saldo.x[i] = saldo.x[i] + dep.x[i] - 0x30;
        if (saldo.x[i] > 57) {
            saldo.x[i] = saldo.x[i] - 10;
            saldo.x[i - 1] = saldo.x[i - 1] + 1;
        }
    }
    return saldo;
}

struct valor subtrai(struct valor saldo, struct valor sac) {
    for (int i = 3; i > 0; i--) {
        if (saldo.x[i] >= sac.x[i]) {
            saldo.x[i] = saldo.x[i] - sac.x[i] + 0x30;
        } else {
            saldo.x[i - 1] = saldo.x[i - 1] - 1;
            saldo.x[i] = saldo.x[i] + 10;
            i++;
        }
    }
    return saldo;
}