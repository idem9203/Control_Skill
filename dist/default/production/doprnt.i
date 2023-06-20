
# 1 "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\doprnt.c"

# 4 "C:\Program Files\Microchip\xc8\v2.36\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 4 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\ctype.h"
extern __bit isalpha(char);
extern __bit isupper(char);
extern __bit islower(char);
extern __bit isdigit(char);
extern __bit isxdigit(char);
extern __bit isspace(char);
extern __bit ispunct(char);
extern __bit isalnum(char);
extern __bit isprint(char);
extern __bit isgraph(char);
extern __bit iscntrl(char);


extern char toupper(char);
extern char tolower(char);

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);


# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 104 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdlib.h"
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);

# 14 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\string.h"
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

# 36
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);

# 30 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\math.h"
extern double fabs(double);
extern double floor(double);
extern double ceil(double);
extern double modf(double, double *);
extern double sqrt(double);
extern double atof(const char *);
extern double sin(double) ;
extern double cos(double) ;
extern double tan(double) ;
extern double asin(double) ;
extern double acos(double) ;
extern double atan(double);
extern double atan2(double, double) ;
extern double log(double);
extern double log10(double);
extern double pow(double, double) ;
extern double exp(double) ;
extern double sinh(double) ;
extern double cosh(double) ;
extern double tanh(double);
extern double eval_poly(double, const double *, int);
extern double frexp(double, int *);
extern double ldexp(double, int);
extern double fmod(double, double);
extern double trunc(double);
extern double round(double);


# 12 "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\doprnt.c"
#pragma warning disable 350

# 366
const static unsigned long hexpowers[] = {1, 0x10, 0x100, 0x1000,

0x10000, 0x100000, 0x1000000, 0x10000000

};

# 463
int

# 505
sprintf(char * sp, const char * f, ...)
{
va_list ap;




char c;

# 517
int prec;

# 525
unsigned char flag;

# 540
union {
unsigned long vd;
double integ;
} tmpval;

unsigned long val;
unsigned len;
const char * cp;


*ap = __va_start();


while((c = *f++)) {

if(c != '%')

{
((*sp++ = (c)));
continue;
}

# 565
flag = 0;

# 659
loop:

switch(c = *f++) {

case 0:
goto alldone;


case 'l':

flag |= 0x10;
goto loop;

# 744
case 'x':

# 749
break;

# 828
default:

# 839
continue;

# 848
}

# 1299
{

# 1307
if(flag & 0x10)
val = (*(unsigned long *)__va_arg((*(unsigned long **)ap), (unsigned long)0));
else


val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
}

# 1342
for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
if(val < hexpowers[c])
break;

# 1448
{

# 1495
}


prec = c;

while(prec--) {

# 1504
{

# 1525
{
unsigned char idx = (val / hexpowers[(unsigned int)prec]) & 0xF;

# 1532
c = "0123456789abcdef"[idx];

}

# 1549
}
((*sp++ = (c)));
}

# 1559
}

alldone:


*sp = 0;

return 0;
}
