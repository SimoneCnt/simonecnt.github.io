---
layout: default
title: Cygne
priority: 0.8
---

Cygne
=====
---

## What is cygne?

This project consists essentially in a set of tools to deal with some molecular 
modeling troubles. I am a computational chemist and very often I face myself 
with some very annoying and repetitive tasks. From the necessity to develop 
some software to do the work instead of me, and from my interest in C 
programming, I decided to start the develop of this project. It doesn't claim 
to go anywhere. I just develop it in my spare time implementing the functions 
that I need or that I'm most interested in. 

Just to describe briefly, cygne involve the development of two subprojects: 
the `libcygne` library and the `cygne` software. The `libcygne` library contains 
all the functions written. They involve the reading and writing of common 
chemical file format, functions to move, rotate or align molecules, generate 
graphene layers, doins some simple matrix algebra, and so on. All function 
names begin with the `cyg_` prefix in order to avoid collapsing with other 
library function names. 

The second subproject, the `cygne` software, aimes to give an interactive 
command line frontend to the `libcygne` library. Work are continuously in 
progress in both the library and the software and, at the moment, all can be 
just considered a draft, a container to be filled of interesting 
functionalities. If you wish to get any option, capability or improvement 
implemented feel free to ask. 


## Where to go next?

First of all I invite you to take a look at the licence under which this 
software is released. I chose the GNU GPLv3 copyleft licence in order to keep
this software as free as possible. Fell free to redistribute and/or modify it 
under the terms of the GNU General Public License as published by the Free 
Software Foundation, either version 3 of the License, or (at your option) any 
later version. Obviously, cygne is distributed in the hope that it will be 
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
See the [GNU General Public License](/cygne/license.html) for more details..

If you agree with these licence, feel free to compile and install this 
software. You can find the instructions in the [install page](/cygne/install.html). 

