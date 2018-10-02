---
layout: default
title: Full list of Siteswaps
priority: 0.4
banner: research
date: 2018-10-01
---

{{ page.title }}
=====
---

## Vanilla Siteswaps

{% for nballs in (1..5) %}
### {{ nballs }} Balls

{% assign sws = site.data.siteswaps | where: "nballs", nballs %}
{% for sw in sws %}
**{{ sw.pattern }}{% if sw.name and sw.name != sw.pattern %} -- {{ sw.name }}{% endif %}**
{% if sw.prime %} (Prime!){% endif %}

{{ sw.notes }}

{% endfor %}
{% endfor %}

