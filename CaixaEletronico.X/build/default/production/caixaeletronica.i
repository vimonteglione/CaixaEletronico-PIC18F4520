# 1 "caixaeletronica.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "caixaeletronica.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 2 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 2 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 1 3





typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 137 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long ssize_t;
# 168 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 246 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long off_t;
# 399 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 2 3
# 52 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

#pragma printf_check(printf) const
#pragma printf_check(vprintf) const
#pragma printf_check(sprintf) const
#pragma printf_check(snprintf) const
#pragma printf_check(vsprintf) const
#pragma printf_check(vsnprintf) const

int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 1 "caixaeletronica.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 1 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);





size_t __ctype_get_mb_cur_max(void);
# 2 "caixaeletronica.c" 2

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
# 3 "caixaeletronica.c" 2

# 1 "./pic18f4520.h" 1
# 4 "caixaeletronica.c" 2

# 1 "./lcd.h" 1
# 14 "./lcd.h"
void lcd_init(void);
void lcd_cmd(unsigned char val);
void lcd_dat(unsigned char val);
void lcd_str(const char* str);
# 5 "caixaeletronica.c" 2

# 1 "./teclado.h" 1







    unsigned char tc_tecla(unsigned int timeout);
# 6 "caixaeletronica.c" 2

# 1 "./delay.h" 1



void atraso_ms(int t);
# 7 "caixaeletronica.c" 2

# 1 "./config.h" 1
# 38 "./config.h"
#pragma config OSC=HS
#pragma config WDT=OFF
#pragma config LVP=OFF
#pragma config DEBUG = OFF
#pragma config WDTPS = 1
# 8 "caixaeletronica.c" 2



unsigned int atrasoMin = 20;
unsigned int atrasoMed = 150;
unsigned int atrasoMax = 1000;
unsigned int atrasoMax2 = 3000;
unsigned int atrasoLed = 150;

void piscaLed() {
    (*(volatile __near unsigned char*)0xF95) = 0x00;
    (*(volatile __near unsigned char*)0xF83) = 0x00;
    (*(volatile __near unsigned char*)0xF93) = 0x00;
    (*(volatile __near unsigned char*)0xF81) = 0x00;
    for (int l = 0; l < 1; l++) {
        (*(volatile __near unsigned char*)0xF83) = 0b00000000;
        (*(volatile __near unsigned char*)0xF81) = 0b00000000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00000001;
        (*(volatile __near unsigned char*)0xF81) = 0b10000000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00000010;
        (*(volatile __near unsigned char*)0xF81) = 0b01000000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00000100;
        (*(volatile __near unsigned char*)0xF81) = 0b00100000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00001000;
        (*(volatile __near unsigned char*)0xF81) = 0b00010000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00010000;
        (*(volatile __near unsigned char*)0xF81) = 0b00001000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00100000;
        (*(volatile __near unsigned char*)0xF81) = 0b00000100;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b01000000;
        (*(volatile __near unsigned char*)0xF81) = 0b00000010;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b10000000;
        (*(volatile __near unsigned char*)0xF81) = 0b00000001;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b01000000;
        (*(volatile __near unsigned char*)0xF81) = 0b00000010;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00100000;
        (*(volatile __near unsigned char*)0xF81) = 0b00000100;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00010000;
        (*(volatile __near unsigned char*)0xF81) = 0b00001000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00001000;
        (*(volatile __near unsigned char*)0xF81) = 0b00010000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00000100;
        (*(volatile __near unsigned char*)0xF81) = 0b00100000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00000010;
        (*(volatile __near unsigned char*)0xF81) = 0b01000000;
        atraso_ms(atrasoLed);
        (*(volatile __near unsigned char*)0xF83) = 0b00000001;
        (*(volatile __near unsigned char*)0xF81) = 0b00000001;

    }
}

void exibeSeg(struct valor saldo) {
    int unsigned k, i;

    (((*(volatile __near unsigned char*)0xFF1)) &= ~(1<<7));
    (*(volatile __near unsigned char*)0xFC1) = 0x0E;
    (*(volatile __near unsigned char*)0xF92) = 0x00;
    (*(volatile __near unsigned char*)0xF95) = 0x00;
    (*(volatile __near unsigned char*)0xF83) = 0x00;
    while ((((*(volatile __near unsigned char*)0xF81)) & (1<<0))) {


        if (saldo.x[3] == 48) {
            (*(volatile __near unsigned char*)0xF83) = 0x3F;
        }
        if (saldo.x[3] == 49) {
            (*(volatile __near unsigned char*)0xF83) = 0x06;
        }
        if (saldo.x[3] == 50) {
            (*(volatile __near unsigned char*)0xF83) = 0x5B;
        }
        if (saldo.x[3] == 51) {
            (*(volatile __near unsigned char*)0xF83) = 0x4F;
        }
        if (saldo.x[3] == 52) {
            (*(volatile __near unsigned char*)0xF83) = 0x66;
        }
        if (saldo.x[3] == 53) {
            (*(volatile __near unsigned char*)0xF83) = 0x6D;
        }
        if (saldo.x[3] == 54) {
            (*(volatile __near unsigned char*)0xF83) = 0x7D;
        }
        if (saldo.x[3] == 55) {
            (*(volatile __near unsigned char*)0xF83) = 0x07;
        }
        if (saldo.x[3] == 56) {
            (*(volatile __near unsigned char*)0xF83) = 0x7F;
        }
        if (saldo.x[3] == 57) {
            (*(volatile __near unsigned char*)0xF83) = 0x6F;
        }

        (((*(volatile __near unsigned char*)0xF80)) |= (1<<5));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));
        for (k = 0; k < 1500; k++);


        if (saldo.x[2] == 48) {
            (*(volatile __near unsigned char*)0xF83) = 0x3F;
        }
        if (saldo.x[2] == 49) {
            (*(volatile __near unsigned char*)0xF83) = 0x06;
        }
        if (saldo.x[2] == 50) {
            (*(volatile __near unsigned char*)0xF83) = 0x5B;
        }
        if (saldo.x[2] == 51) {
            (*(volatile __near unsigned char*)0xF83) = 0x4F;
        }
        if (saldo.x[2] == 52) {
            (*(volatile __near unsigned char*)0xF83) = 0x66;
        }
        if (saldo.x[2] == 53) {
            (*(volatile __near unsigned char*)0xF83) = 0x6D;
        }
        if (saldo.x[2] == 54) {
            (*(volatile __near unsigned char*)0xF83) = 0x7D;
        }
        if (saldo.x[2] == 55) {
            (*(volatile __near unsigned char*)0xF83) = 0x07;
        }
        if (saldo.x[2] == 56) {
            (*(volatile __near unsigned char*)0xF83) = 0x7F;
        }
        if (saldo.x[2] == 57) {
            (*(volatile __near unsigned char*)0xF83) = 0x6F;
        }

        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
        (((*(volatile __near unsigned char*)0xF80)) |= (1<<4));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));
        for (k = 0; k < 1500; k++);

        if (saldo.x[1] == 48) {
            (*(volatile __near unsigned char*)0xF83) = 0x3F;
        }
        if (saldo.x[1] == 49) {
            (*(volatile __near unsigned char*)0xF83) = 0x06;
        }
        if (saldo.x[1] == 50) {
            (*(volatile __near unsigned char*)0xF83) = 0x5B;
        }
        if (saldo.x[1] == 51) {
            (*(volatile __near unsigned char*)0xF83) = 0x4F;
        }
        if (saldo.x[1] == 52) {
            (*(volatile __near unsigned char*)0xF83) = 0x66;
        }
        if (saldo.x[1] == 53) {
            (*(volatile __near unsigned char*)0xF83) = 0x6D;
        }
        if (saldo.x[1] == 54) {
            (*(volatile __near unsigned char*)0xF83) = 0x7D;
        }
        if (saldo.x[1] == 55) {
            (*(volatile __near unsigned char*)0xF83) = 0x07;
        }
        if (saldo.x[1] == 56) {
            (*(volatile __near unsigned char*)0xF83) = 0x7F;
        }
        if (saldo.x[1] == 57) {
            (*(volatile __near unsigned char*)0xF83) = 0x6F;
        }

        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
        (((*(volatile __near unsigned char*)0xF80)) |= (1<<3));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));
        for (k = 0; k < 1500; k++);

        if (saldo.x[0] == 48) {
            (*(volatile __near unsigned char*)0xF83) = 0x3F;
        }
        if (saldo.x[0] == 49) {
            (*(volatile __near unsigned char*)0xF83) = 0x06;
        }
        if (saldo.x[0] == 50) {
            (*(volatile __near unsigned char*)0xF83) = 0x5B;
        }
        if (saldo.x[0] == 51) {
            (*(volatile __near unsigned char*)0xF83) = 0x4F;
        }
        if (saldo.x[0] == 52) {
            (*(volatile __near unsigned char*)0xF83) = 0x66;
        }
        if (saldo.x[0] == 53) {
            (*(volatile __near unsigned char*)0xF83) = 0x6D;
        }
        if (saldo.x[0] == 54) {
            (*(volatile __near unsigned char*)0xF83) = 0x7D;
        }
        if (saldo.x[0] == 55) {
            (*(volatile __near unsigned char*)0xF83) = 0x07;
        }
        if (saldo.x[0] == 56) {
            (*(volatile __near unsigned char*)0xF83) = 0x7F;
        }
        if (saldo.x[0] == 57) {
            (*(volatile __near unsigned char*)0xF83) = 0x6F;
        }
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
        (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
        (((*(volatile __near unsigned char*)0xF80)) |= (1<<2));
        for (k = 0; k < 1500; k++);
    }
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<3));
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<2));
}
struct valor leconta(int op) {
    unsigned char i;
    unsigned char j = 0;
    unsigned char tmp = 0x30;
    struct valor saldo;
    while (tmp < 0x3C) {

        (*(volatile __near unsigned char*)0xF95) = 0x0F;
        tmp = tc_tecla(0) + 0x30;
        (*(volatile __near unsigned char*)0xF95) = 0x00;

        if (op == 0) {
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
            lcd_cmd(0xC0);
            for (i = 0; i < 16; i++) {
                lcd_dat(i % 2);
                atraso_ms(atrasoMin);
            }
            lcd_cmd(0xC0);
        }
        j++;
    }
    return saldo;
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
