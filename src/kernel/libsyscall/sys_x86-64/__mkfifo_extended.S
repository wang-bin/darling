#define __SYSCALL_32BIT_ARG_BYTES 20
#include "SYS.h"

#ifndef SYS_mkfifo_extended
#error "SYS_mkfifo_extended not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__x86_64__)
__SYSCALL2(__mkfifo_extended, mkfifo_extended, 5, cerror_nocancel)
#endif

