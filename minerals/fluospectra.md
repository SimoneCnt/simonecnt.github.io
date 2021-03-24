---
layout: default
title: Fluorescence Spectra DB
date: 2021-03-23
priority: 0.6
banner: fluominerals
---

{{ page.title }}
=====
---

This is the database of fluorescence spectra I measured for my fluorescent
minerals.  You can search it by name, by (proposed/assumed) activator, and by
excitation light.

On the table below, if you click on, you will see:
 - Name &rarr; Photo and possibly some details about the mineral and the spectra
 - Locality &rarr; Locality on MINDAT
 - Spectrum image &rarr; A bigger version of the spectrum
 - Disk-like icon &rarr; A text file of the spectrum (wavelenght, intensity)

I measure these spectra as a hobby, without professional equipment. So be sure
that this database contains errors and artifacts.  List of errors and
artifacts is, but not limited to:
 - Errors in identification of the minerals
 - Spurious light leaking from the excitation source
 - Random noise, in particular in weak fluorescent specimens.

Known artifacts are:
 - Sharp peaks at 436nm, and >690nm in spectra obtained with a shortwave
   mercury light (254nm Hg). These are mercury lines that can pass the filter.
 - Sharp peak at 508nm in spectra obtained with a shortwave mercury light
   (254nm Hg). This is a resonance line of the 254nm mercury line created by
   the spectrometer. In some spectra I avoid this line by using an acrylic filter
   to filter the 254nm line to enter the spectrometer.
 - Broad peak at ~540nm in spectra obtained with a 275nm LED light. As for the
   508nm peak before. Resonance of the 275nm peak.
 - Sharp peak at 536nm in spectra obtained with a 405nm blue laser. I think it
   is a leaking from my laser... not sure.
 - The region between 400nm and ~450nm in spectra obtained by a 365nm LED light
   could be affected by leaking of the filter, in particular when the fluorescence
   is not strong.

If you find errors, need more details, or are curious to have your mineral analysed, please [let me know](/contact/).

{% capture activators %}
{% for sp in site.data.flspectra %}
{{ sp.activators | strip_html }}
{% endfor %}
{% endcapture %}
{% assign activators_unique = activators | split:" " | sort | uniq  %}

{% capture excitations %}
{% for sp in site.data.flspectra %}
{{ sp.excitation | replace: " ", "-"}}
{% endfor %}
{% endcapture %}
{% assign excitations_unique = excitations | split:" " | sort | uniq  %}


<label for='FS_name'>Mineral name:</label>
<input type='text' class='FS_input' id='FS_name' onkeyup='FS_filter()' placeholder='Search for names..' title='Type in a name'>
<label for='FS_acti'>Activator:</label>
<select id='FS_acti' onchange='FS_filter()'><option value="">All</option>{% for activator in activators_unique %}<option value="{{ activator }}">{{ activator }}</option>{% endfor %}</select>
<label for='FS_exci'>Excitation:</label>
<select id='FS_exci' onchange='FS_filter()'><option value="">All</option>{% for exci in excitations_unique %}<option value="{{ exci | replace: "-", " " }}">{{ exci | replace: "-", " " }}</option>{% endfor %}</select>

<table id='FS_table'>
	<col style="width:20%">
	<col style="width:20%">
	<col style="width:20%">
	<col style="width:20%">
	<col style="width:20%">
  <tr class='header'>
    <th>Name</th>
    <th>Locality</th>
    <th>Excitation</th>
    <th>Activator</th>
    <th>Spectrum</th>
  </tr>
{% for sp in site.data.flspectra %}
  <tr>
    <td><a href="/minerals/collection/{{ sp.minid }}" title="See mineral info">{{ sp.mineral }} (#{{ sp.minid }})</a></td>
    {% if sp.locid %}
    <td><a href="https://www.mindat.org/loc-{{ sp.locid }}.html" target="_blank" title="Open locality on MINDAT">{{ sp.locality }}</a></td>
    {% else %}
    <td>{{ sp.locality }}</td>
    {% endif %}
    <td>{{ sp.excitation }}</td>
    <td>{{ sp.activators }}</td>
    <td><a href="/img/spectra/{{ sp.dataname }}.png" target="_blank" title="Open image in new page"><img width="80%" src="/img/spectra/{{ sp.dataname }}.png"></a>  <a href="/img/spectra/{{ sp.dataname }}.txt" title="Download spectrum data"><i class="fas fa-save"></i></a></td>
  </tr>
{% endfor %}
</table>

<script>
function FS_filter() {
  var table, tr, i, txtValue;
  var input_name, filter_name, td_name, txt_name;
  var input_acti, filter_acti, td_acti, txt_acti;
  var input_exci, filter_exci, td_exci, txt_exci;
  var test;
  input_name = document.getElementById("FS_name");
  input_acti = document.getElementById("FS_acti");
  input_exci = document.getElementById("FS_exci");
  filter_name = input_name.value.toUpperCase();
  filter_acti = input_acti.value.toUpperCase();
  filter_exci = input_exci.value.toUpperCase();
  table = document.getElementById("FS_table");
  tr = table.getElementsByTagName("tr");
  for (i=0; i<tr.length; i++) {
    td_name = tr[i].getElementsByTagName("td")[0];
    td_exci = tr[i].getElementsByTagName("td")[2];
    td_acti = tr[i].getElementsByTagName("td")[3];
    if (td_name && td_acti && td_exci) {
      txt_name = td_name.textContent || td_name.innerText;
      txt_exci = td_exci.textContent || td_exci.innerText;
      txt_acti = td_acti.textContent || td_acti.innerText;
      test = txt_name.toUpperCase().indexOf(filter_name) > -1;
      test = test && txt_acti.toUpperCase().indexOf(filter_acti) > -1;
      test = test && txt_exci.toUpperCase().indexOf(filter_exci) > -1;
      if (test) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}

</script>


<br>
