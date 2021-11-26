---
layout: default
title: Mineral References
date: 2021-11-25
priority: 0.6
banner: fluominerals
---

{{ page.title }}
=====
---

This is an index of articles dedicated to minerals or minerals localities,
especially when fluorescent minerals are involved. I am trying to index
literature for my own reference, so the list below is very limited and biased
towards what I am interested in. 

Currently indexed (or working on...) 
 - [Fluorescent Forum by Manuel Robbins (1985-1997)](fluorescent_forum/); a series of articles published on *Rocks & Minerals*
 - [Journal of the Fluorescent Mineral Society](jfms/)
 - [UV Waves (1970-Today)](uvwaves/); the newsletter of the Fluorescent Mineral Society


{% assign articles = site.data.minref.robbins_fluorescent_forum %}
{% assign articles = articles | concat: site.data.minref.jfms %}
{% assign articles = articles | concat: site.data.minref.uvwaves01 %}
{% assign articles = articles | concat: site.data.minref.uvwaves02 %}
{% assign articles = articles | concat: site.data.minref.uvwaves03 %}
{% assign articles = articles | concat: site.data.minref.uvwaves04 %}
{% assign articles = articles | concat: site.data.minref.uvwaves05 %}
{% assign articles = articles | concat: site.data.minref.uvwaves50 %}
{% assign articles = articles | concat: site.data.minref.uvwaves51 %}
{% assign articles = articles | concat: site.data.minref.misc %}

Number of articles: {{ articles.size }}

{% capture authorslst %}{% for article in articles %}{% for author in article.authors %}{{ author.name }}{% if author.id > 0 %} (#{{ author.id }}){% endif %} xxx {% endfor %}{% endfor %}{% endcapture %}{% assign authorsunq = authorslst | split: " xxx " | sort | uniq  %}
{% capture localitieslst %}{% for article in articles %}{% for locality in article.localities %}{{ locality.name }} xxx {% endfor %}{% endfor %}{% endcapture %}{% assign localitiesunq = localitieslst | split: " xxx " | sort | uniq  %}
{% capture mineralslst %}{% for article in articles %}{% for mineral in article.minerals %}{{ mineral }} xxx {% endfor %}{% endfor %}{% endcapture %}{% assign mineralsunq = mineralslst | split: " xxx " | sort | uniq  %}
{% capture journalslst %}{% for article in articles %}{{ article.journal }} xxx {% endfor %}{% endcapture %}{% assign journalsunq = journalslst | split: " xxx " | sort | uniq  %}

<table>
<tr>
<td><label for='FA_title'>Search:</label></td>
<td><input type='text' id='FA_title' onkeyup='FA_filter()' placeholder='Search...' title='Search...'></td>
</tr>
<tr>
<td><label for='FA_author'>Author:</label></td>
<td><select id='FA_author' onchange='FA_filter()'><option value="">All</option>{% for author in authorsunq %}<option value="{{ author }}">{{ author }}</option>{% endfor %}</select></td>
</tr>
<tr>
<td><label for='FA_mineral'>Mineral:</label></td>
<td><select id='FA_mineral' onchange='FA_filter()'><option value="">All</option>{% for mineral in mineralsunq %}<option value="{{ mineral }}">{{ mineral }}</option>{% endfor %}</select></td>
</tr>
<tr>
<td><label for='FA_locality'>Locality:</label></td>
<td><select id='FA_locality' onchange='FA_filter()'><option value="">All</option>{% for locality in localitiesunq %}<option value="{{ locality }}">{{ locality }}</option>{% endfor %}</select></td>
</tr>
<tr>
<td><label for='FA_journal'>Journal:</label></td>
<td><select id='FA_journal' onchange='FA_filter()'><option value="">All</option>{% for journal in journalsunq %}<option value="{{ journal }}">{{ journal }}</option>{% endfor %}</select></td>
</tr>
</table>

<br>

{% assign articles_by_year = articles | sort: "year" %}

<table id='FA_table'>
{% for art in articles_by_year %}
  {% include minref.html article=art row=true %}
{% endfor %}
</table>

<script>
function FA_filter() {
  var table, tr, i;
  var content, test;
  var mineral = document.getElementById("FA_mineral").value.toUpperCase();
  var author = document.getElementById("FA_author").value.toUpperCase();
  var locality = document.getElementById("FA_locality").value.toUpperCase();
  var title = document.getElementById("FA_title").value.toUpperCase();
  var journal = document.getElementById("FA_journal").value.toUpperCase();
  table = document.getElementById("FA_table");
  tr = table.getElementsByTagName("tr");
  for (i=0; i<tr.length; i++) {
    content = tr[i].getElementsByTagName("td")[0].textContent.toUpperCase();
    test = content.indexOf(mineral) > -1;
    test = test && content.indexOf(author) > -1;
    test = test && content.indexOf(locality) > -1;
    test = test && content.indexOf(title) > -1;
    test = test && content.indexOf(journal) > -1;
      if (test) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
  }
}
</script>

<br>

