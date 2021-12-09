---
layout: default
title: Mineral Collection
date: 2021-12-09
priority: 0.6
banner: fluominerals
---

{{ page.title }}
=====
---

<label for='FS_name'>Mineral name:</label>
<input type='text' class='FS_input' id='FS_name' onkeyup='FS_filter()' placeholder='Search for names..' title='Type in a name'>
<label for='FS_loco'>Locality:</label>
<input type='text' class='FS_input' id='FS_loco' onkeyup='FS_filter()' placeholder='Search for locality...' title='Type in a locality'>
<br>
<input type="checkbox" id="FS_fluo" name="FS_fluo" value="fluo" onclick='FS_filter()'>
<label for="FS_fluo">Fluorescent only!</label><br>
<input type="checkbox" id="FS_nonf" name="FS_nonf" value="nonf" onclick='FS_filter()'>
<label for="FS_nonf">Not-fluorescent only</label><br>

<table id="min_collection_table">
{% assign sminerals = site.minerals | sort: 'name' %}
{% for mineral in sminerals %}
{% if mineral.deaccessioned != true %}
<tr>
<td width="25%">
<img src="/img/minerals/{{ mineral.figure }}">
</td>
<td width="75%">
<h2><span class='min_collection_name'>{{ mineral.name }}</span></h2>
{% if mineral.locality %}<b>Locality:</b> <span class='min_collection_locality'>{{ mineral.locality }}</span> <a href="https://www.mindat.org/loc-{{ mineral.locid}}.html" target="_blank">(MINDAT)</a><br>{% endif %}
{% if mineral.size %}<b>Size:</b> {{ mineral.size }}<br>{% endif %}
{% if mineral.weight %}<b>Weight:</b> {{ mineral.weight }}<br>  {% endif %}
{% if mineral.minid %}<b>minID:</b> <a href="https://www.mindat.org/{{ mineral.minid }}" target="_blank">{{ mineral.minid }}</a><br>{% endif %}
<a href="{{ mineral.url }}">See more details</a>
{% if mineral.is_fluorescent %}<span class='min_collection_fluorescent' style='display:none'>fluorescent!</span>{% endif %}
</td>
</tr>
{% endif %}
{% endfor %}
</table>

<br>

<script>
function FS_filter() {
  var table, tr, i;
  var filter_name, td_name, txt_name;
  var filter_loco, td_loco, txt_loco;
  var filter_fluo, td_fluo;
  var filter_nonf;
  var test;
  filter_name = document.getElementById("FS_name").value.toUpperCase();
  filter_loco = document.getElementById("FS_loco").value.toUpperCase();
  filter_fluo = document.getElementById("FS_fluo").checked;
  filter_nonf = document.getElementById("FS_nonf").checked;
  table = document.getElementById("min_collection_table");
  tr = table.getElementsByTagName("tr");
  for (i=0; i<tr.length; i++) {
    td_name = tr[i].getElementsByClassName("min_collection_name")[0];
    txt_name = td_name.textContent || td_name.innerText;
    td_loco = tr[i].getElementsByClassName("min_collection_locality")[0];
    td_fluo = tr[i].getElementsByClassName("min_collection_fluorescent")[0];
    if (td_loco) {
      txt_loco = td_loco.textContent || td_loco.innerText;
    } else {
      txt_loco = "";
    }
    test = true;
    if (filter_name) test = test && txt_name.toUpperCase().indexOf(filter_name)>-1;
    if (filter_loco) test = test && txt_loco.toUpperCase().indexOf(filter_loco) > -1;
    if (filter_fluo) test = test && td_fluo;
    if (filter_nonf) test = test && !td_fluo;
    if (test) {
      tr[i].style.display = "";
    } else {
      tr[i].style.display = "none";
    }
  }
}

</script>


