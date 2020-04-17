---
layout: default
title: MineralApp Manual
date: 2020-04-16
priority: 0.6
banner: research
---

{{ page.title }}
=====
---


<img src="https://raw.githubusercontent.com/SimoneCnt/MineralApp/master/mineralapp.png" alt="MineralApp logo" style="float:right;width:30%;margin:15px;">

**Simone Conti**  **[simonecnt@gmail.com](mailto:simonecnt@gmail.com)**

A small and simple application to create a database of your minerals. You can
add your mineral collection, storing any details you are interested in, helping
you (hopefully...) to keep your mineral collection well organized!

[https://github.com/SimoneCnt/MineralApp](https://github.com/SimoneCnt/MineralApp)


## License and Copyright

This code and manual has been written by Simone Conti.

©️ 2019-2020 Simone Conti [simonecnt@gmail.com](mailto:simonecnt@gmail.com) 

MineralApp is free software: you can redistribute it and/or modify it under the
terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

MineralApp is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see
[http://www.gnu.org/licenses/](http://www.gnu.org/licenses/). 


## Postcardware

You are free to use this software. If you like it and find it useful, I would
highly appreciate you sending me a postcard (or a mineral!) from your hometown.

You can find my current address on my website:
[https://3dz2.com](https://3dz2.com) 


## Install

MineralApp is written in C++ and wxWidgets
([https://wxwidgets.org/](https://wxwidgets.org/)). As such, you can install it
on any operating system (in theory...). The source code is maintained on GitHub
([https://github.com/SimoneCnt/MineralApp](https://github.com/SimoneCnt/MineralApp)),
where it is publicly available for everyone. It has been tested on Arch Linux
and on MacOS (10.15). On Microsoft Windows it should work, but I can not test
it at the moment. Detailed instructions for each operative system are shown
below. If you find any problem with the instructions below, please let me know.


### MacOS

For MacOS, MineralApp is packaged in a `dmg` file. You can download the latest version from:

[https://github.com/SimoneCnt/MineralApp/raw/master/MineralApp.dmg](https://github.com/SimoneCnt/MineralApp/raw/330257cfe825a0974a6c5a8bd98a922d9723f829/MineralApp.dmg) 

Open it, and drag MineralApp.app into the Applications directory. Done!

If you do not trust binaries from strangers, follow the Linux instructions
below to compile MineralApp from source.


### Linux; aka compiling from source

On Linux you will need to compile MineralApp from the source code. 

First you need to install wxWidgets
([https://wxwidgets.org/](https://wxwidgets.org/)). You may need to go to the
website and install it from source, but your Linux distribution may already
provide it. For example, on Arch Linux you can just use pacman to install the
package `wxgtk3`. When done, be sure that you can run `wx-config --cxxflags`
without errors.

Then get the MineralApp source code from GitHub:

```
git clone https://github.com/SimoneCnt/MineralApp.git mineralapp
```

The type

```
cd mineralapp && make && make install
```

You may need to run the last one with `sudo`.


### Windows

I do not have a Windows machine to test it, so I can not guarantee it will work
and I can not provide a pre-compiled package. You can follow the Linux
instructions to compile it from the source code.

If you *really* want a Windows precompiled executable, [let me
know](mailto:simonecnt@gmail.com) and I'll see if I can do something...


## How to Use

MineralApp is quite intuitive (I hope!) and should be quite easy to use without
much introduction. For a quick start, just click `Mineral->Add`. It will open a
form, fill in whatever you want and click `Save`. You can add more minerals and
modify the ones you added (`Mineral->Modify`). You can duplicate a mineral
(`Mineral->Duplicate`) and delete one (`Mineral->Delete`).  When you are done,
click `File->Save` to save your mineral database on disk. When you want to open
it again, click `File->Open`. With `File->Close` you will close the current
database. That’s it. Some more details about some particular fields are
described below. You may be interested in how to add figures or other data, see
the appropriate section below.


### Add your first mineral

When you first open the application the screen you will see is quite empty… 

<p align='center'><img src='/img/mineralapp/mineralapp0.png' width='70%'></p>

First, click on `Mineral->Add`. This will open a second window where you will be able to add your first mineral.

<p align='center'><img src='/img/mineralapp/mineralapp1.png' width='70%'></p>

You can add a lot of info here, but you do not need to add everything. The
overall idea is that you have some general information about the sample as a
whole, such as its (nick)name, where it was found (locality), the weight and
size, how/when you got it (acquisition), where it stored/exposed (collection),
and its value (if known or you care). As example, consider a sulphur crystal on
an aragonite matrix from the Agrigento Province, Sicily, Italy. The name could
be “Sulphur on Aragonite”, locality “Agrigento Province, Sicily, Italy”, weight
“10g”, size “1x2x2cm”, acquisition “January 2020; Bought in mineral museum in
Milan”, collection “Italian Minerals display” and value “$5”. Leave the ID
empty (it will be generated automatically), and fill “ID MINDAT” with the id of
the locality from the mindat database. In this example, we use the locality
[Agrigento Province, Sicily, Italy](https://www.mindat.org/loc-2132.html) whose
mindat id is 2132.

Then there is a second section where more specific information can be added
about each particular species present in the sample. In this example we have
two species (sulphur and aragonite), and each column in this second section is
dedicated to one species (or mineral) present in the sample. You can add up to
four species, no more.

The first four species-specific fields are easy: the name (e.g. sulphur), the
Nickel-Strunz class (for sulphur is 1.CC.05, you can find it on
[www.mindat.org](http://www.mindat.org)), the chemical formula (S<sub>8</sub>), and
the color (presumably yellow). The rest of the table is dedicated to
photoluminescent properties. Being myself a collector of fluorescent minerals,
this section is quite detailed, and you can specify the fluorescent and
phosphorescence of each species under different wavelengths (SW, MW, LW,
405nm), as well as tenebrescence.

Last you can record if the mineral is radioactive, and there is a last field
where you can write any general comment or note about the sample. See below for
a detailed description of how (I imagined) to use each field.

When finished just click “Save” and the mineral will be shown in the main
window. 

<p align='center'><img src='/img/mineralapp/mineralapp2.png' width='70%'></p>

By clicking "See on MINDAT" next to the locality will open the MINDAT webpage
for that locality, and similarly, the M and R links below each species will
show them on [MINDAT](http://www.mindat.org) and [RRUFF](http://www.rruff.info) databases.

As you may guess, if you add more minerals they will appear on the left column,
and by clicking on them you will see the details on the frame on the right. 


### Add images and data

MineralApp can show photos and figures about the minerals you inserted. To have
this, you need to save the images in a specific folder in order to have
MineralApp find them. When you save the collection, the default name is
`minerals.sqlite3`. Save this file inside a new empty folder called, e.g.,
mineral-collection. Inside this folder create a new one called `data` (name is
important!). Inside `data` create one folder for each mineral; the name of the
folder has to be the numerical id of the mineral (the `Unique ID`), or the
numerical ID followed by one space and then whatever you want; e.g. both `1`
and `1 quartz` are fine. You can put whatever you want in that directory.
MineralApp will show a preview of the images, and a link to open any other
file.

To summarize, the folder structure needs to be:


```
mineral-collection/
    minerals.sqlite3
    data/
        1 quartz/
            photo_of_mineral_id_1.jpg
            another_photo_of_mineral_id_1.jpg
            Video.mp4
            whatever.else
        2/
            ...
```



### Save (and retrive) the mineral database

Once you have finished inserting all your minerals you need to save the
database you have created.  To save the database, just click to `File->Save`
and pick where to save it and how to call it. The file extension is not
important, by default it is sqlite3. To retrieve a saved database, click to
`File->Open` and find the database file you want to open.

Warning! By default no automatic saving is done, so if you close the
application without saving everything is lost!


### Description of each field

Here a brief description of each field. These first ones are generic about the
whole sample:

 - **Name** \
A general name or nickname of the sample, like "Fluorite", "Smoky Quartz", or
"Quartz on Muscovite".

 - **ID** \
An increasing number for each sample; it is given automatically if left blank.
Two minerals cannot have the same number. It must be an integer, otherwise a
new number is generated for you.

 - **Locality** \
The locality of the sample, in which mine or state it was found. Usually
something like: "cave, state, country", e.g. "Jardinera #1 mine, Inca de Oro,
Chile". Try to be as accurate as possible.

 - **ID MINDAT** \
The ID of the locality on MINDAT. Go on [www.mindat.org](http://www.mindat.org) and
find the closest locality in their database. Open the page and look at the
address bar, it would read something like
[www.mindat.org/loc-2132.html](http://www.mindat.org/loc-2132.html) The ID, in this
case, is 2132.

 - **Weight** \
The weight of the sample whatever units you prefer; e.g. "10g". 

 - **Size** \
The dimension of the sample in whatever units you prefer (cm, inch,
millimeters...); e.g. "1x2x1.5cm".

 - **Acquisition** \
How and when you get possession of the sample, like "Bought at mineral show at
---", or "Found myself during field trip at ---".

 - **Collection** \
Your minerals could be divided in different collections, like fine crystals,
fluorescent samples, gemstone, cabochon, etc. Use this field to classify
minerals by collection. Can also be used for the storage of the sample, like in
which cabined, box of drawer the specimen is stored.

 - **Value/Price** \
How much you paid for the sample, or how much it is worth.

While the above fields are general for the whole sample, the following ones are
specific for each species present in the sample.

 - **Species** \
Species in the sample. These should be accurate and standard mineral names.

 - **Class** \
The Nickel-Strunz classification, e.g. 4.DA.05 for quartz, or 3.AB.25 for
fluorite. You can get it from mindat.

 - **Chemical formula** \
The chemical composition; e.g. for gypsum use "CaSO4 . 2H2O"

 - **Color** \
Self-explanatory...

 - **Fluorescence** \
If the mineral is fluorescent, add fluorescence color and strength (e.g. w:
weak, m: medium, s: strong) for each specimen. Four entries are dedicated to
fluorescence, each one for a different wavelength of the UV light: short-wave
(254nm), mid-wave (310nm), long-wave (364nm), and blue laser (405nm).

 - **Phosphorescence** \
Similar to fluorescence. You may specify the duration of the phosphorescence.

 - **Tenebrescence** \
Is your mineral tenebrescent?

Last, mention if the sample is radioactive, and any further comment.

 - **Radioactivity** \
Indicate if the mineral is radioactive, and its activity.

 - **Comments** \
Any other comments you have on the sample, like special notes, observations, stories, ...


