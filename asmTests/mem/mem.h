// Generated by asm2c https://github.com/frranck/asm2c
#ifndef MEM_H__
#include <stdint.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <math.h>
#include <setjmp.h>
#include <stddef.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

#if defined(_WIN32) || defined(__INTEL_COMPILER)
#define INLINE __inline
#elif defined(__STDC_VERSION__) && __STDC_VERSION__>=199901L
#define INLINE inline
#elif defined(__GNUC__)
#define INLINE __inline__
#else
#define INLINE
#endif

#if defined(_REAL_MODE)
#define realAddress(offset,segment) ((db *)&m+(dd)offset + 0x10*m.segment.dw.val)
#else
#define realAddress(offset,segment) ((db *)&m+(dd)offset+m.selectors[m.segment.dw.val])
#endif

#define db uint8_t
#define dw uint16_t
#define dd uint32_t

#ifdef MSB_FIRST
typedef struct dblReg {
	db v0;
	db v1;
	db v2;
	db val;
} dblReg;
typedef struct dbhReg {
	db v0;
	db v1;
	db val;
	db v2;
} dbhReg;
typedef struct dwReg {
	dw v0;
	dw val;
} dwReg;
typedef struct dblReg16 {
	db v0;
	db val;
} dblReg16;
typedef struct dbhReg16 {
	db val;
	db v0;
} dbhReg16;
#else
typedef struct dblReg {
	db val;
	db v0;
	db v1;
	db v2;
} dblReg;
typedef struct dbhReg {
	db v0;
	db val;
	db v1;
	db v2;
} dbhReg;
typedef struct dwReg {
	dw val;
	dw v0;
} dwReg;
typedef struct dblReg16 {
	db val;
	db v0;
} dblReg16;
typedef struct dbhReg16 {
	db v0;
	db val;
} dbhReg16;
#endif

typedef struct ddReg {
	dd val;
} ddReg;


typedef union registry32Bits
{
	struct dblReg dbl;
	struct dbhReg dbh;
	struct dwReg dw;
	struct ddReg dd;
} registry32Bits;


typedef struct dwReg16 {
	dw val;
} dwReg16;



typedef union registry16Bits
{
	struct dblReg16 dbl;
	struct dbhReg16 dbh;
	struct dwReg16 dw;
} registry16Bits;


#define VGARAM_SIZE 320*200
#define STACK_SIZE 1024*sizeof(dd)
#define HEAP_SIZE 1024*1024*4
#define NB_SELECTORS 128

#define PUSHAD memcpy (&m.stack[m.stackPointer], &m.eax.dd.val, sizeof (dd)*8); m.stackPointer+=sizeof(dd)*8; assert(m.stackPointer<STACK_SIZE)

#define POPAD m.stackPointer-=sizeof(dd)*8; memcpy (&m.eax.dd.val, &m.stack[m.stackPointer], sizeof (dd)*8)

#define PUSH(nbBits,a) memcpy (&m.stack[m.stackPointer], &a, sizeof (a)); m.stackPointer+=sizeof(a); assert(m.stackPointer<STACK_SIZE)

#define POP(nbBits,a) m.stackPointer-=sizeof(a); memcpy (&a, &m.stack[m.stackPointer], sizeof (a))

#define AFFECT_ZF(a) m.ZF=(a==0)
#define AFFECT_CF(a) m.CF=a
#define ISNEGATIVE(nbBits,a) (a & (1 << (nbBits-1)))
#define AFFECT_SF(nbBits, a) m.SF=ISNEGATIVE(nbBits,a) //(a>>(nbBits-1))&1

// TODO: add missings affected flags on CMP
#define CMP(nbBits,a,nbBitsSrc,b) AFFECT_ZF(a-b); AFFECT_CF(a<b); AFFECT_SF(nbBits,(a-b));
#define OR(nbBits,a,nbBitsSrc,b) a=a|b; AFFECT_ZF(a); AFFECT_SF(nbBits, a)
#define XOR(nbBits,a,nbBitsSrc,b) a=a^b; AFFECT_ZF(a); AFFECT_SF(nbBits, a)
#define AND(nbBits,a,nbBitsSrc,b) a=a&b; AFFECT_ZF(a); AFFECT_SF(nbBits, a)
#define NEG(nbBits,a) AFFECT_CF(a!=0); a=-a;
#define TEST(nbBits,a,nbBitsSrc,b) AFFECT_ZF((a&b)); AFFECT_CF(b<a); AFFECT_SF(nbBits, (a&b))

#define SHR(nbBits,a,nbBitsSrc,b) a=a>>b
#define SHL(nbBits,a,nbBitsSrc,b) a=a<<b
#define ROR(nbBits,a,nbBitsSrc,b) a=(a>>b | a<<(nbBits-b))
#define ROL(nbBits,a,nbBitsSrc,b) a=(a<<b | a>>(nbBits-b))

#define SAR(nbBits,a,nbBitsSrc,b) a=(( (a & (1 << (nbBits-1)))?-1:0)<<(nbBits-(0x1f & b))) | (a >> (0x1f & b))  // TODO

#define READDDp(a) ((dd *) &m.a)
#define READDWp(a) ((dw *) &m.a)
#define READDBp(a) ((db *) &m.a)

#define READDD(a) (m.a.dd.val)

#ifdef MSB_FIRST
#define READDBhW(a) (*(((db *) &m.a)+0))
#define READDBhD(a) (*(((db *) &m.a)+2))
#define READDBlW(a) (*(((db *) &m.a)+1))
#define READDBlD(a) (*(((db *) &m.a)+3))
#else
#define READDBhW(a) (*(((db *) &m.a)+1))
#define READDBhD(a) (*(((db *) &m.a)+1))
#define READDBlW(a) (*(((db *) &m.a)))
#define READDBlD(a) (*(((db *) &m.a)))
#endif

#define READDW(a) (*((dw *) &m.a.dw.val))
#define READDBh(a) (*((db *) &m.a.dbh.val))
#define READDBl(a) (*((db *) &m.a.dbl.val))

#define AAD m.eax.dbl.val = m.eax.dbl.val + (m.eax.dbh.val * 10) & 0xFF; m.eax.dbh.val = 0; //TODO

#define ADD(nbBits,a,nbBitsSrc,b) a=a+b; AFFECT_ZF(a); AFFECT_CF(a<b); AFFECT_SF(nbBits,a);
#define SUB(nbBits,a,nbBitsSrc,b) a=a-b; AFFECT_ZF(a); AFFECT_CF(b<a); AFFECT_SF(nbBits,a);

#define ADC(nbBits,a,nbBitsSrc,b) a=a+b+m.CF; AFFECT_ZF(a); AFFECT_CF(a<b); AFFECT_SF(nbBits,a); //TODO
#define SBB(nbBits,a,nbBitsSrc,b) a=a-b-m.CF; AFFECT_ZF(a); AFFECT_CF(b<a); AFFECT_SF(nbBits,a); 

// TODO: should affects OF, SF, ZF, AF, and PF
#define INC(nbBits,a) a=a+1; AFFECT_ZF(a)
#define DEC(nbBits,a) a=a-1; AFFECT_ZF(a)

#define NOT(nbBits,a) a= ~a;// AFFECT_ZF(a) //TODO
#define SETNZ(nbBits,a) a= (!m.ZF)&1; //TODO
#define SETZ(nbBits,a) a= (m.ZF)&1; //TODO
#define SETB(nbBits,a) a= (m.CF)&1; //TODO


#define JE(label) if (m.ZF) GOTOLABEL(label)
#define JZ(label) JE(label)

#define JNE(label) if (!m.ZF) GOTOLABEL(label)
#define JNZ(label) JNE(label)

#define JNB(label) if (!m.CF) GOTOLABEL(label)
#define JAE(label) JNB(label)
#define JNC(label) JNB(label)

#define JGE(label) if (!m.SF) GOTOLABEL(label) // TODO
#define JG(label) if (!m.ZF && !m.SF) GOTOLABEL(label) // TODO

#define JLE(label) if (m.ZF || m.SF) GOTOLABEL(label) // TODO
#define JL(label) if (m.SF) GOTOLABEL(label) // TODO

#define JCXZ(label) if (m.ecx.dw.val == 0) GOTOLABEL(label) // TODO
#define JECXZ(label) if (m.ecx.dd.val == 0) GOTOLABEL(label) // TODO


#define JB(label) if (m.CF) GOTOLABEL(label)
#define JC(label) JB(label)
#define JNAE(label) JB(label)

#define JA(label) if (!m.CF && !m.ZF) GOTOLABEL(label)
#define JNBE(label) JA(label)

#define JS(label) if (m.SF) GOTOLABEL(label)
#define JNS(label) if (!m.SF) GOTOLABEL(label)

#define JNA(label) if (m.CF || m.ZF) GOTOLABEL(label)
#define JBE(label) JNA(label)

#define MOV(nbBits,dest,nbBitsSrc,src) dest = src

#define MOV(nbBits,dest,nbBitsSrc,src) dest = src
#define MOVZX(nbBits,dest,nbBitsSrc,src) dest = src
#define MOVSX(nbBits,dest,nbBitsSrc,src) if (ISNEGATIVE(nbBitsSrc,src)) { dest = ((-1 ^ (( 1 <<nbBitsSrc )-1)) | src ); } else { dest = src; }

#define BT(nbBits,dest,nbBitsSrc,src) m.CF = dest & (1 << src) //TODO
#define BTS(nbBits,dest,nbBitsSrc,src) m.CF = dest & (1 << src); dest |= 1 << src
#define BTC(nbBits,dest,nbBitsSrc,src) m.CF = dest & (1 << src); dest ^= (1 << src)
#define BTR(nbBits,dest,nbBitsSrc,src) m.CF = dest & (1 << src); dest &= ~(1 << src)

// LEA - Load Effective Address
#define LEA(nbBits,dest,nbBitsSrc,src) dest = src

#define XCHG(nbBits,dest,nbBitsSrc,src) PUSH(nbBits,dest);PUSH(nbBitsSrc,src);POP(nbBits,dest);POP(nbBits,dest) //TODO

// MOVSx (DF FLAG not implemented)
#define MOVS(a,ecx) src=realAddress(m.esi.dd.val,ds); dest=realAddress(m.edi.dd.val,es); \
	if (labs(((char *)dest)-((char *)src))<=a) { \
		for(i=0; i<ecx; i++) {  \
			src=realAddress(m.esi.dd.val,ds); dest=realAddress(m.edi.dd.val,es); \
			memmove(dest,src,a); m.edi.dd.val+=a; m.esi.dd.val+=a; } \
	} else { \
		memmove(dest,src,a*ecx); m.edi.dd.val+=a*ecx; m.esi.dd.val+=a*ecx; \
	}

#define CMPS(a,ecx) \
	for(size_t i=0; i<ecx; i++) {  \
			src=realAddress(m.esi.dd.val,ds); dest=realAddress(m.edi.dd.val,es); \
			AFFECT_ZF( (*(char*)dest-*(char*)src) ); m.edi.dd.val+=a; m.esi.dd.val+=a; \
			if (!m.ZF) break; \
	}

#define REPE_CMPS(b) CMPS(b,m.ecx.dd.val)
#define REPE_CMPSB REPE_CMPS(1)
#define CBW m.eax.dbh.val = m.eax.dbl.val & (1 << 7)?-1:0 // TODO
#define CWD m.edx.dw.val = m.eax.dw.val & (1 << 15)?-1:0
#define CWDE m.eax.dw.v0 = m.eax.dw.val & (1 << 15)?-1:0

#define MOVSB MOVS(1,1)
#define MOVSW MOVS(2,1)
#define MOVSD MOVS(4,1)

#define REP_MOVS(b) MOVS(b,m.ecx.dd.val)
#define REP_MOVSB REP_MOVS(1)
#define REP_MOVSW REP_MOVS(2)
#define REP_MOVSD REP_MOVS(4)

#define STOS(a,b) memcpy (realAddress(m.edi.dd.val,es), ((db *)&m.eax.dd.val)+b, a); m.edi.dd.val+=a

#ifdef MSB_FIRST
#define STOSB STOS(1,3)
#define STOSW STOS(2,2)
#else
#define STOSB STOS(1,0)
#define STOSW STOS(2,0)
#endif

#define STOSD STOS(4,0)

#define REP_STOSB for (i=0; i<m.ecx.dd.val; i++) { STOSB; }
#define REP_STOSW for (i=0; i<m.ecx.dd.val; i++) { STOSW; }
#define REP_STOSD for (i=0; i<m.ecx.dd.val; i++) { STOSD; }

#define LODS(a,b) memcpy (((db *)&m.eax.dd.val)+b, realAddress(m.esi.dd.val,ds), a); m.esi.dd.val+=a

#ifdef MSB_FIRST
#define LODSB LODS(1,3)
#define LODSW LODS(2,2)
#else
#define LODSB LODS(1,0)
#define LODSW LODS(2,0)
#endif

#define LODSD LODS(4,0)

#define REP_LODS(a,b) for (i=0; i<m.ecx.dd.val; i++) { LODS(a,b); }

#ifdef MSB_FIRST
#define REP_LODSB REP_LODS(1,3)
#define REP_LODSW REP_LODS(2,2)
#else
#define REP_LODSB REP_LODS(1,0)
#define REP_LODSW REP_LODS(2,0)
#endif

#define REP_LODSD REP_LODS(4,0)

// JMP - Unconditional Jump
#define JMP(label) GOTOLABEL(label)
#define GOTOLABEL(a) goto a

#define LOOP(label) DEC(32,m.ecx.dd.val); JNZ(label)
#define LOOPE(label) --m.ecx.dd.val; if (m.ecx.dd.val!=0 && m.ZF) GOTOLABEL(label) //TODO

#define CLD m.DF=0
#define STD m.DF=1

#define STC m.CF=1 //TODO
#define CLC m.CF=0 //TODO
#define CMC m.CF ^= 1 //TODO

void stackDump();
void hexDump (void *addr, int len);
void asm2C_INT(int a);
void asm2C_init();
void asm2C_printOffsets(unsigned int offset);

// directjeu nosetjmp,2
// directmenu
#define INT(a) asm2C_INT(a); TESTJUMPTOBACKGROUND

#define TESTJUMPTOBACKGROUND  if (m.jumpToBackGround) CALL(moveToBackGround);

void asm2C_OUT(int16_t address, int data);
#define OUT(a,b) asm2C_OUT(a,b)
int8_t asm2C_IN(int16_t data);
#define IN(a,b) a = asm2C_IN(b); TESTJUMPTOBACKGROUND

#define STI // TODO: STI not implemented
#define CLI // TODO: STI not implemented
#define PUSHF
#define POPF
#define NOP

#define CALL(label) \
	if (setjmp(jmpbuffer) == 0) { \
		PUSH(?,jmpbuffer); \
		JMP(label); \
	}

#define RET POP(x,jmpbuffer); longjmp(jmpbuffer, 0);

#define RETN RET //TODO test
#define RETF RET

#ifdef __LIBSDL2__
#include <SDL2/SDL.h>
#include <SDL2/SDL_mixer.h>
#endif

#ifdef __LIBRETRO__
#include "libretro.h"
extern retro_log_printf_t log_cb;
#else
extern FILE * logDebug;
#endif

void log_error(const char *fmt, ...);
void log_debug(const char *fmt, ...);
void log_info(const char *fmt, ...);
void log_debug2(const char *fmt, ...);

#if DEBUG==2
    #define R(a) log_debug("l:%d:%s\n",__LINE__,#a); a
#else
    #define R(a) a
#endif

bool is_little_endian();

#if defined(_MSC_VER)
#define SWAP16 _byteswap_ushort
#define SWAP32 _byteswap_ulong
#else
#define SWAP16(x) ((uint16_t)(                  \
			   (((uint16_t)(x) & 0x00ff) << 8)      | \
			   (((uint16_t)(x) & 0xff00) >> 8)        \
			   ))
#define SWAP32(x) ((uint32_t)(           \
			   (((uint32_t)(x) & 0x000000ff) << 24) | \
			   (((uint32_t)(x) & 0x0000ff00) <<  8) | \
			   (((uint32_t)(x) & 0x00ff0000) >>  8) | \
			   (((uint32_t)(x) & 0xff000000) >> 24)   \
			   ))
#endif

#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
#define MEM_H__
#pragma pack(push, 1)
typedef struct Mem {
registry32Bits eax;
registry32Bits ebx;
registry32Bits ecx;
registry32Bits edx;
registry32Bits esi;
registry32Bits edi;
registry32Bits ebp;
registry32Bits esp;
registry16Bits cs;
registry16Bits ds;
registry16Bits es;
registry16Bits fs;
registry16Bits gs;
registry16Bits ss;
bool CF;
bool ZF;
bool DF;
bool SF;
bool isLittle;
bool jumpToBackGround;
bool executionFinished;
db exitCode;
db a;
db b;
db c;
db d;
db e;
db f;
db pas_de_mem[70];
db pbs1[43];
db pbs2[56];
db ascii[11];
db dummy1[4096];

db vgaPalette[256*3];
dd selectorsPointer;
dd selectors[NB_SELECTORS];
dd stackPointer;
dd stack[STACK_SIZE];
dd heapPointer;
db heap[HEAP_SIZE];
db vgaRamPaddingBefore[VGARAM_SIZE];
db vgaRam[VGARAM_SIZE];
db vgaRamPaddingAfter[VGARAM_SIZE];
char *path;
} Memory;
#pragma pack(pop)
extern Memory m;
int program();
#define sizeOfeax 4
#define sizeOfebx 4
#define sizeOfecx 4
#define sizeOfedx 4
#define sizeOfesi 4
#define sizeOfedi 4
#define sizeOfebp 4
#define sizeOfesp 4
#define sizeOfcs 2
#define sizeOfds 2
#define sizeOfes 2
#define sizeOffs 2
#define sizeOfgs 2
#define sizeOfss 2
#define sizeOfa  1
#define sizeOfb  1
#define sizeOfc  1
#define sizeOfd  1
#define sizeOfe  1
#define sizeOff  1
#define sizeOfpas_de_mem  1
#define sizeOfpbs1  1
#define sizeOfpbs2  1
#define sizeOfascii  1

void fixBigEndian(void *data);
#ifdef __cplusplus
}
#endif
#endif


