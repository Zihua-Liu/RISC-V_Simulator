#ifndef __H_SYSCALL_
#define __H_SYSCALL_

#include <fcntl.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <error.h>
#include "memory.h"
#include <sys/stat.h>

/*
 * we copy the syscall table below from RISC-V documents
 * yet we don't implement all system calls
 */
#define sys_exit 93
#define sys_exit_group 94
#define sys_getpid 172
#define sys_kill 129
#define sys_read 63
#define sys_write 64
#define sys_openat 56
#define sys_close 57
#define sys_lseek 62
#define sys_brk 214
#define sys_linkat 37
#define sys_unlinkat 35
#define sys_mkdirat 34
#define sys_chdir 49
#define sys_getcwd 17
#define sys_fstat 80
#define sys_fstatat 79
#define sys_faccessat 48
#define sys_pread 67
#define sys_pwrite 68
#define sys_uname 160
#define sys_getuid 174
#define sys_geteuid 175
#define sys_getgid 176
#define sys_getegid 177
#define sys_mmap 222
#define sys_munmap 215
#define sys_mremap 216
#define sys_mprotect 226
#define sys_rt_sigaction 134
#define sys_writev 66
#define sys_gettimeofday 169
#define sys_times 153
#define sys_fcntl 25
#define sys_ftruncate 46
#define sys_getdents 61
#define sys_dup 23
#define sys_readlinkat 78
#define sys_rt_sigprocmask 135
#define sys_ioctl 29
#define sys_getrlimit 163
#define sys_setrlimit 164
#define sys_getrusage 165
#define sys_clock_gettime 113
#define sys_open 1024
#define sys_link 1025
#define sys_unlink 1026
#define sys_mkdir 1030
#define sys_access 1033
#define sys_stat 1038
#define sys_lstat 1039
#define sys_time 1062


long do_syscall(memory *mem, long a0, long a1, long a2, long a3, long a4, long a5, unsigned long num)
{
    long ret;
    switch(num)
    {
        case sys_getpid:
            ret = syscall(SYS_getpid);
            break;
        case sys_kill:
            ret = syscall(SYS_kill, (pid_t)a0, (int)a1);
            break;
        case sys_read:
            ret = syscall(SYS_read, (int)a0, (char*)mem->get_address((unsigned int)a1), (size_t)a2);
            break;
        case sys_write:
            ret = syscall(SYS_write, (int)a0, (const char*)mem->get_address((unsigned int)a1), (size_t)a2);
            break;
        case sys_openat:
            ret = syscall(SYS_openat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (int)a2, (int)a3);
            break;
        case sys_close:
            ret = 0;
            break;
        case sys_lseek:
            ret = syscall(SYS_lseek, (int)a0, (size_t)a1, (int)a2);
            break;
        case sys_brk:
            ret = 0;
            break;
        case sys_linkat:
            ret = syscall(SYS_linkat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (int)a2, (const char*)mem->get_address((unsigned int)a3), (int)a4);
            break;
        case sys_unlinkat:
            ret = syscall(SYS_unlinkat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (int)a2);
            break;
        case sys_mkdirat:
            ret = syscall(SYS_mkdirat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (int)a2);
            break;
        case sys_chdir:
            ret = syscall(SYS_chdir, (const char*)mem->get_address((unsigned int)a0));
            break;
        case sys_getcwd:
            ret = syscall(SYS_getcwd, (const char*)mem->get_address((unsigned int)a0), (size_t)a1);
            break;
        case sys_fstat:
            ret = a0;
            break;
        case sys_fstatat:
            ret = syscall(SYS_newfstatat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (void*)a2, (int)a3);
            break;
        case sys_faccessat:
            ret = syscall(SYS_faccessat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (int)a2);
            break;
        case sys_pread:
            ret = syscall(SYS_pread64, (int)a0, (char*)mem->get_address((unsigned int)a1), (size_t)a2, (off_t)a3);
            break;
        case sys_pwrite:
            ret = syscall(SYS_pwrite64, (unsigned int)a0, (const char*)mem->get_address((unsigned int)a1), (size_t)a2, (off_t)a3);
            break;
        case sys_uname:
            ret = syscall(SYS_uname, (void*)mem->get_address((unsigned int)a0));
            break;
        case sys_getuid:
            ret = syscall(SYS_getuid);
            break;
        case sys_geteuid:
            ret = syscall(SYS_geteuid);
            break;
        case sys_getgid:
            ret = syscall(SYS_getgid);
            break;
        case sys_getegid:
            ret = syscall(SYS_getegid);
            break;
        case sys_mmap:
            ret = syscall(SYS_mmap, (uintptr_t)a0, (size_t)a1, (int)a2, (int)a3, (int)a4, (off_t)a5);
            break;
        case sys_munmap:
            ret = syscall(SYS_munmap, (uintptr_t)a0, (size_t)a1);
            break;
        case sys_writev:
            ret = syscall(SYS_writev, (int)a0, (const void*)mem->get_address((unsigned int)a1), (int)a2);
            break;
        case sys_gettimeofday:
            ret = syscall(SYS_gettimeofday, (long*)mem->get_address(a0));
            break;
        case sys_times:
            ret = syscall(SYS_times, (struct tms*)mem->get_address(a0));
            break;
        case sys_fcntl:
            ret = syscall(SYS_fcntl, (int)a0, (int)a1, (int)a2);
            break;
        case sys_ftruncate:
            ret = syscall(SYS_ftruncate, (int)a0, (off_t)a1);
            break;
        case sys_getdents:
            ret = syscall(SYS_getdents, (int)a0, (void*)mem->get_address((unsigned int)a1), (int)a2);
            break;
        case sys_dup:
            ret = syscall(SYS_dup, (int)a0);
            break;
        case sys_readlinkat:
            ret = syscall(SYS_readlinkat, (int)a0, (const char*)mem->get_address((unsigned int)a1), (char*)mem->get_address((unsigned int)a2), (int)a3);
            break;
        case sys_rt_sigprocmask:
            ret = syscall(SYS_rt_sigprocmask, (int)a0, (sigset_t*)mem->get_address((unsigned int)a1), (sigset_t*)mem->get_address((unsigned int)a2), (size_t)a3);
            break;
        case sys_ioctl:
            ret = syscall(SYS_ioctl, (unsigned int)a0, (unsigned int)a1, (unsigned long)a2);
            break;
        case sys_getrlimit:
            ret = syscall(SYS_getrlimit, (unsigned int)a0, (struct rlimit*)mem->get_address((unsigned int)a1));
            break;
        case sys_setrlimit:
            ret = syscall(SYS_setrlimit, (unsigned int)a0, (struct rlimit*)mem->get_address((unsigned int)a1));
            break;
        case sys_getrusage:
            ret = syscall(SYS_getrusage, (int)a0, (struct rusage*)mem->get_address((unsigned int)a1));
            break;
        case sys_clock_gettime:
            ret = syscall(SYS_clock_gettime, (clockid_t)a0, (struct timespec*)mem->get_address((unsigned int)a1));
            break;
        case sys_open:
            ret = syscall(SYS_open, (const char*)mem->get_address((unsigned int)a0), (int)a1, a2);
            break;
        case sys_link:
            ret = syscall(SYS_link, (const char*)mem->get_address((unsigned int)a0), (const char*)mem->get_address((unsigned int)a1));
            break;
        case sys_unlink:
            ret = syscall(SYS_unlink, (const char*)mem->get_address((unsigned int)a0));
            break;
        case sys_mkdir:
            ret = syscall(SYS_mkdir, (const char*)mem->get_address((unsigned int)a0), a1);
            break;
        case sys_access:
            ret = syscall(SYS_access, (const char*)mem->get_address((unsigned int)a0), (int)a1);
            break;
        case sys_stat:
            ret = syscall(SYS_stat, (const char*)mem->get_address((unsigned int)a0), (struct __old_kernel_stat*)mem->get_address((unsigned int)a1));
            break;
        case sys_lstat:
            ret = syscall(SYS_lstat, (const char*)mem->get_address((unsigned int)a0), (struct __old_kernel_stat*)mem->get_address((unsigned int)a1));
            break;
        case sys_time:
            ret = syscall(SYS_time, (time_t*)mem->get_address((unsigned int)a0));
            break;
        case sys_exit:
        case sys_exit_group:
            cout << "[WARNING]: sys_exit would kill the simulator" << endl;
            ret = 0;
            break;
        default:
            cout << "unimplememted syscall " << num << endl;
            //ret = -1;
            ret = 0;
            break;
    }
    return ret;
}

#endif