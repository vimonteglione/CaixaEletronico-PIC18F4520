#include "config.h"
#include "pic18f4520.h"
#include "delay.h"
#include "lcd.h"
#include "teclado.h"
#include "caixaeletronica.h"



void main() {
    struct valor saldo; //sera praticamente uma variavel gloabal que sera alterada conforme usuario sacar ou depositar
    struct valor dep; //armazena quanto usuario quer depositar
    struct valor sac; //armazena quanto usuario quer sacar
    struct valor conta; //armazena numero da conta do usuario
    unsigned char est; //armazena qual tecla foi pressionada (RB3, RB4 ou RB5)
    int flag = 0; //para ver se conta ja foi inserida ou nao dentro do loop infinito

    ADCON1 = 0x06; //configuracao teclas
    TRISD = 0x00;
    TRISE = 0x00;
    TRISB = 0x01;

    lcd_init();
    
    PORTB = 0xFF; //torna PORTB 11111111
    
    lcd_cmd(L_CLR);
    lcd_cmd(L_L1);
    lcd_str("   Caixa Eletronico (banco UNIFEI)");

    for (;;) { //loop infinito
        TRISA = 0x20; //configuracao para receber RB3, RB4 ou RB5
        TRISB = 0x3F;

        lcd_cmd(L_L2);
        lcd_str(" RB3.Saldo RB4.Depositar RB5.Sacar ");

        //atraso_ms(atrasoMed);
        lcd_cmd(0x18);

        if (!BitTst(PORTB, 3) || !BitTst(PORTB, 4) || !BitTst(PORTB, 5)) { //se alguma RB foi pressionada
            est = PORTB; //armazena qual das 3 foi pressionada

            if (flag == 0) { //pede a conta se a pessoa esta na primeira execucao
                TRISB = 0xF8; //teclado numerico

                lcd_cmd(L_CLR);
                lcd_cmd(L_L1);
                lcd_str("Conta: ");

                saldo = leconta(0); //usuario tecla numero de sua conta e isso gera um valor que será armazenado em saldo
                for(int h = 0; h < 4; h++){ //reverte saldo para conta e armazena na variavel conta
                    conta.x[h] = saldo.x[h] - h;
                }

                lcd_cmd(L_L2);
                lcd_str("Aguarde...");
                piscaLed(); //pisca leds em sequencia mostrando um "carregamento"
                
            }

            if (!BitTst(est, 3)) { //se RB3 foi pressionado mostra o valor da variavel saldo
                lcd_cmd(L_CLR); 
                lcd_cmd(L_L1);

                lcd_str("Saldo: R$");
                for (int h = 0; h < 4; h++) {
                    lcd_dat(saldo.x[h]);
                }
                   
                TRISA = 0x20; //configuracao teclas extras para receber RB0
                TRISB = 0x3F;

                lcd_cmd(L_L2);
                lcd_str(" RB0 p/ voltar          ");
                exibeSeg(saldo); //enquanto usuario nao clica em RB0 mostra o saldo no display de 7 segmentos
                
                BitClr(PORTA, 5); //para limpar leds de 7 segmento
                BitClr(PORTA, 4);
                BitClr(PORTA, 3);
                BitClr(PORTA, 2);
                
                lcd_cmd(L_CLR); //limpar
                PORTB = 0xFF;
            }
            if (!BitTst(est, 4)) { //pede quanto o usuario quer depositar e soma esse valor em saldo
                TRISB = 0xF8; //teclado numerico

                lcd_cmd(L_CLR);
                lcd_cmd(L_L1);
                lcd_str("Depositar:R$");
                dep = leconta(1); //le quantia a depositar
                saldo = soma(saldo, dep); //soma a quantia no saldo

                TRISA = 0x20; //configuracao teclas extras para receber RB0
                TRISB = 0x3F;

                lcd_cmd(L_L2);
                lcd_str(" RB0 p/ voltar          ");
                exibeSeg(saldo); //enquanto usuario nao clica em RB0 mostra o saldo no display de 7 segmentos
                
                BitClr(PORTA, 5); //para limpar leds de 7 segmento
                BitClr(PORTA, 4);
                BitClr(PORTA, 3);
                BitClr(PORTA, 2);
                
                lcd_cmd(L_CLR); //limpar
                PORTB = 0xFF;

            }
            if (!BitTst(est, 5)) { //pede quanto o usuario quer sacar e subtrai esse valor em saldo
                TRISB = 0xF8; //teclado numerico

                lcd_cmd(L_CLR);
                lcd_cmd(L_L1);
                lcd_str("Sacar:R$");
                sac = leconta(1); //le quantia a sacar
                saldo = subtrai(saldo, sac); //subtrai quantia no saldo

                TRISA = 0x20; //configuracao teclas extras para receber RB0
                TRISB = 0x3F;

                lcd_cmd(L_L2);
                lcd_str(" RB0 p/ voltar          ");
                exibeSeg(saldo); //enquanto usuario nao clica em RB0 mostra o saldo no display de 7 segmentos
                
                BitClr(PORTA, 5); //para limpar leds de 7 segmento
                BitClr(PORTA, 4);
                BitClr(PORTA, 3);
                BitClr(PORTA, 2);
                
                lcd_cmd(L_CLR); //limpar
                PORTB = 0xFF;
            }
            flag = 1; //flag nao sera mais zero entao nao vai mais pedir para colocar numero da conta na execucao
        }
        if(flag == 1){//se estiver com uma conta ja registrada mostra conta
            lcd_cmd(L_L1);
            lcd_str(" Conta: ");
            for (int h = 0; h < 4; h++) {
                lcd_dat(conta.x[h]);
            }
        }
    }

}