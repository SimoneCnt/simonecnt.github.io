---
layout: default
title: Units of Measure
date: 2018-06-29
priority: 0.4
banner: radioactivity
mathjax: true
---

{{ page.title }}
=====
---

## Activity (Bq, Ci, Rd) & Specific Activity (Bq/g)

The activity is the amount of radiation a nuclide emits per unit of time. It is
thus a physical property of that nuclide. It is measured in becquerel (Bq),
which is just the number decays per second. Non-standard units are also the
curie (Ci), which is equal to 37 GBq, or the rutherford (Rd), which is equal to
1 MBq. It is also useful to express the activity per unit of mass, thus in
becquerel per gram (Bq/g). This allows to quickly get the activity of a sample,
just multiplying its specific activity in Bq/g for the mass of the sample.  The
specific activity S<sub>A</sub> is deeply connected to the half-life
T<sub>1/2</sub> of the nuclide: \\[ S\_A = \frac{N\_A\,\ln 2}{T\_{1/2}\,m} \\]
where N<sub>A</sub> the Avogadro's number, and m the molecular weight of the
nuclide. Espressing the half-life in seconds and the molecular weight in grams
per mole (g/mol), the specific activity in Bq/g can be obtaied by \\[
S\_A\,[Bq/g] = \frac{4.17\cdot 10^{23}\,[1/mol]}{T\_{1/2}\,[s]\,\,m\,[g/mol]}
\\] This allows easy calculations of the activity of radioactive samples, for
example:

<table class='nice' >
 <tr><th>Nuclide</th><th>Half-life (years)</th><th>Molecular<br>weight</th><th>Specific<br>activity</th><th>Mass</th><th>Activity</th></tr>
 <tr><td>Potassium-40</td><td>1.252 10<sup>9</sup></td><td>40 g/mol</td><td>264.5 KBq/g</td><td>0.117 mg</td><td>31 Bq</td></tr>
 <tr><td>Thorium-232</td><td>14 10<sup>9</sup></td><td>232 g/mol</td><td>4.06 kBq/g</td><td>1 g</td><td>4 kBq</td></tr>
 <tr><td>Neptunium-237</td><td>2.144 10<sup>6</sup></td><td>237 g/mol</td><td>26 MBq/g</td><td>8.7 ng</td><td>0.23 Bq</td></tr>
 <tr><td>Americium-241</td><td>432.2</td><td>241 g/mol</td><td>126.9 GBq/g</td><td>0.29 &mu;g</td><td>37 KBq</td></tr>
</table>

The masses in this table are picked arbitrarily, usually matching numbers shown below.


## Count rate (CPM)

The count rate is the most immediate unit of measure of radioactivity. It is
usually expressed in counts per minute (CPM) or counts per second (CPS). As the
name says, it is the number of events your detector measure per unit of time.
This is _exactly_ what your detector measure. Unfortunately, it is difficult to
compare count rate with other detectors or reference data. Since each detector
is different from another the count rate can change significantly between two
detectors.

## Detector

STS-5 tube from Radioactive@Home BOINC project (from 2012, version 2.51). 

STS-5 is very similar to the more common SBM-20; both russian detectors.
Detector is cilindrical tube covered by a thin metal shield. Moreover the tube
and circuits are inside a plastic case for protection. This implies &alpha;
radiation is mostly shielded, as well as most of &beta; (probably). This makes
the setup essentially a &gamma; detector only. Any other tube rated for 400V
can be used with the ame circuitry.

Detector is powered by USB, have a nice LCD display, make noise buz at each
detection, and --most importantly-- send data to computer for logging. The
interface to the computer is via a hid interface (see code on github).

Conversion factor from CPM to &mu;Sv is 171.2 (magic number, just use it...).


