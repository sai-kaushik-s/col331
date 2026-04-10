# Initial process that runs in user space.

#include "syscall.h"
#include "traps.h"

.globl start
start:
  pushl $argv
  pushl $1
  call main

argv:
  .long initstr
  .long 0

initstr:
  .string "init\0"
