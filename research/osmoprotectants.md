---
layout: default
title: Osmoprotectants effects on protein denaturation
priority: 0.6
banner: research
---

{{ page.title }}
===============
---

Nature developed a variety of methods to allow many organisms to survive in
extreme environmental conditions, such as high temperatures or pressures, or
high salt concentrations.  One of these methods is the use of osmoprotectants,
small molecules present in the cellular fluid that are able to stabilize the
native and functional structure of the proteins in the cell.  Analogous, but
opposite, is the effect of denaturants, also small molecules that, instead,
destabilize the proteins structure making them not functional. 

Osmoprotectants have a key role in very different industrial fields:

 - in agriculture plants capable of synthesizing this type of compounds could
   lead to the development of species more resistant to drought and requiring
   lower amounts of water for irrigation;
 - in cosmetic osmoprotectants are used as components of products aimed at
   protecting the epithelial cells from dehydration and drying;
 - in ocular pharmacology osmoprotectants find applications in
   the treatment of dry eye, to compensate extracellular hyperosmolarity
   without interfering with cellular metabolic processes

The aim of this project is to reproduce the action of osmoprotectants and
denaturants via computational techniques with the ultimate goal of designing
new osmoprotectants. The way chosen to measure the osmoprotectant/denaturant
activity is to denature artificially a model protein and see how
osmoprotectants and denaturants influence the process. This can be done via the
determination of unfolding free energy profiles. Given the free energy
difference for the unfolding of the protein in pure water, an increase in the
free energy difference is expected in the presence of osmoprotectants as they
stabilize the folded structure making the unfolding more difficult.  A
denaturant should instead decrease the stability of the folded state and thus
decreasing the unfolding free energy difference.

In this preliminary work, the beta-hairpin fragment of G protein was used as
model peptide to unfold in the presence of four cosolvents: glycine betaine and
ectoine as osmoprotectants, urea and guanidinium chloride as denaturants.  All
four are standard compounds, widely used in both computational and experimental
studies.  The free energy difference was evaluated using Umbrella Sampling and
WHAM, using as reaction coordinate the end-to-end distance of the peptide.

I worked on this project during my bachelor and master at the University of
Milan in the group of prof. Maurizio Sironi. A BOINC project (SimOne@home, the
first in Italy, not active anymore) was created to manage the computational
work.


### References:

 - {% assign ref = "pieraccini2013modelling" %} {% reference ref %} [See details.](/publications/{{ref}}/)


