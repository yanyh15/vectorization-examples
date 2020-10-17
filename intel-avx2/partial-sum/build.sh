#!/bin/bash

gcc main.c -c -o /tmp/main.o
nasm -f elf64 sum.asm -o /tmp/sum.o
gcc /tmp/main.o /tmp/sum.o -o psum
