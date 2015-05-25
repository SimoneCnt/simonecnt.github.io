---
layout: default
title: Cygne Install Instructions
priority: 0.6
---

Cygne: Install Instructions
===========================
---

Since 16 Aug 2014 Cygne use CMake to generate the Makefiles. The basic commands
to build the Cygne software and the libcygne library are:
    
        mkdir build
        cd build
        cmake ..
        make

You should find the compiled files directly inside the build/ directory.

If you want to change the compiler, for example if you want to use the clang 
compiler instead of the GNU C compiler (gcc), type something like:

        CC=clang cmake ..

This use of CMake is probably very superficial and probabably will fail on 
some computers. Let me know if you have any problems and I will try to fix it.

This procedure at the moment is tested on a Ubuntu GNOME 14.04 (with gcc 4.8.2
and clang 3.4) and on Apple MacBookAir 10.9.3, upon install of the Apple Developer 
Tools.

