---
layout: default
title: Wordom
priority: 0.6
banner: coding
---

Wordom: The trajectory manipulation tool
=====
---

Wordom is a (simple) command line utility conceived to spare the user some 
time in manipulating and converting dcd, xtc, pdb, crd and xyz files. Wordom 
is also a versatile program for a broad range of molecular structure and 
dynamics analysis. As a plus, it’s easy to use in shell scripts. Due to its 
simplicity, it is very easy and straightforward to add your own analysis 
module. Basically, most of what you have to do is write the algorithm – the 
data are made available by the existing wordom i/o modules.

Up to now, I contributed to this software through the following modules:

 * RING: Ring Perception module. Given an undirected simple graph, perceive 
     all present rings. It has been designed to monitor the degree of 
     self-assembly, when molecular self-assembly at surfaces is studied.
 * COM: Center of Mass module. Simply print the dynamic of the center of mass
     of a selection of atoms. Useful to study the diffusion of a molecule in
     solution or when physisorbed on a surface.
 * TILT and TWIST modules. Designed to study different angles betwen selections.
     The definition is very general, it has been used to study the dynamic of 
     channel proteins.
 * PORE: Measure the radius of the pore of a channel protein. To be released.
 * FLUX: Measure the water flux through a channel protein. To be released.

Wordom is released under the open source GPL license. To get the code and the 
documentation, refer to the [project home page](http://wordom.sourceforge.net/).

