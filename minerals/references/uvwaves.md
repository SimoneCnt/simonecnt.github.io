---
layout: default
title: UV Waves
date: 2021-12-27
priority: 0.5
banner: fluominerals
---

{{ page.title }}
=====
---

UV Waves is the newsletter of the Fluorescent Mineral society. Published
bimonthly (6 issues per year) since 1970.

Only very few issues have been indexed...

{% assign articles = site.data.minref.uvwaves01 %}
{% assign articles = articles | concat: site.data.minref.uvwaves02 %}
{% assign articles = articles | concat: site.data.minref.uvwaves03 %}
{% assign articles = articles | concat: site.data.minref.uvwaves04 %}
{% assign articles = articles | concat: site.data.minref.uvwaves05 %}
{% assign articles = articles | concat: site.data.minref.uvwaves50 %}
{% assign articles = articles | concat: site.data.minref.uvwaves51 %}

<table>
{% assign year = 0 %}
{% for article in articles %}
{% if article.year != year %}
{% assign year = article.year %}
{% assign number = 0 %}
</table>
## {{ year }}
<table>
{% endif %}
{% if article.number != number %}
{% assign number = article.number %}
</table>
### Volume {{ article.volume }} Number {{ article.number }}
<table>
{% endif %}
  {% include minref.html article=article row=true %}
{% endfor %}
</table>
<br>

