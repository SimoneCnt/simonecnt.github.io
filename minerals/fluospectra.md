---
layout: default
title: Fluorescence Spectra DB
date: 2020-09-11
priority: 0.6
banner: fluominerals
---

{{ page.title }}
=====
---

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
    <td><a href="/minerals/collection/#SC{{ sp.minid }}" target="_blank" title="See mineral info">{{ sp.mineral }} (#{{ sp.minid }})</a></td>
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
