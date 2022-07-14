// taken from https://github.com/void-linux/void-packages/blob/master/srcpkgs/musl-legacy-compat/files/cdefs.h
// raw source: https://github.com/void-linux/void-packages/raw/master/srcpkgs/musl-legacy-compat/files/cdefs.h 

#ifndef _SYS_CDEFS_H_
#define _SYS_CDEFS_H_

#warning WARNING: using non-standard header <sys/cdefs.h>
#warning this is an external glibc header that SHOULD not be used.
#warning please file an issue upstream about this! Thank you.
#warning more information, see: https://wiki.musl-libc.org/faq.html#Q:-When-compiling-something-against-musl,-I-get-error-messages-about-%3Ccode%3Esys/cdefs.h%3C/code%3E

#undef __P
#undef __PMT

#define __P(args)	args
#define __PMT(args)	args

#define __CONCAT(x,y)	x ## y
#define __STRING(x)	#x

#ifdef  __cplusplus
# define __BEGIN_DECLS	extern "C" {
# define __END_DECLS	}
#else
# define __BEGIN_DECLS
# define __END_DECLS
#endif

#if defined(__GNUC__) && !defined(__cplusplus)
# define __THROW	__attribute__ ((__nothrow__))
# define __NTH(fct)	__attribute__ ((__nothrow__)) fct
#else
# define __THROW
# define __NTH(fct)     fct
#endif

#define __CONCAT(x,y)   x ## y
#define __STRING(x)     #x

#endif /* _SYS_CDEFS_H_ */
