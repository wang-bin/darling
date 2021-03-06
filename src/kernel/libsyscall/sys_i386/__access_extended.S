#define __SYSCALL_32BIT_ARG_BYTES 16
#include "SYS.h"

#ifndef SYS_access_extended
#error "SYS_access_extended not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__)
__SYSCALL2(__access_extended, access_extended, 4, cerror_nocancel)
#endif

#if defined(__i386__)
	.globl	accessx_np
		accessx_np = __access_extended
#endif

