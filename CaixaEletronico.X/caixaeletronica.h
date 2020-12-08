/* 
 * File:   caixaeletronica.h
 * Author: luisf
 *
 * Created on 8 de Julho de 2020, 00:26
 */

#ifndef CAIXAELETRONICA_H
#define	CAIXAELETRONICA_H

struct valor {
    unsigned char x[4];
};
struct valor leconta(int);
void piscaLed();
void exibeSeg(struct valor);
struct valor subtrai(struct valor , struct valor );
struct valor soma(struct valor , struct valor );


#endif	/* CAIXAELETRONICA_H */

