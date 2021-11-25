---
layout: default
title: Fluorescent Forum by Manuel Robbins
date: 2021-11-25
priority: 0.5
banner: fluominerals
---

{{ page.title }}
=====
---

*Fluorescent Forum* is a series of articles written by Manuel Robbins and
published in *Rocks & Minerals* between 1985 and 1997.

Manuel Robbins is well known in the Fluorescent Minerals hobby. He was elected
to the Fluorescent Mineral Society (FMS) Hall of Fame in 2018. The FMS
introduces him as:

Manual “Manny” has been a fluorescent mineral collector for over 40 years, ever
since his daughter asked for a ride to Franklin, New Jersey, to see the
fluorescent minerals. He was drawn to the beauty of fluorescent minerals and
became particularly interested in the science of fluorescence in minerals.  He
has written two books on fluorescent minerals that are now regarded as
classics: *Collectors Book of Fluorescent Minerals* and *Fluorescence - Gems
and Minerals Under Ultraviolet Light*. He also wrote a column on fluorescent
minerals for *Rocks & Minerals* magazine.

Below is a list of all the articles I could find published in that column, with
mention of the most important minerals and localities cited. The DOI links to
the article online, but you need a subscription to *Rocks & Minerals* to access
the pdf.

{% assign articles = site.data.minref.robbins_fluorescent_forum %}

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

