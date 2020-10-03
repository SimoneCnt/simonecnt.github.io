---
layout: default
title: List of Siteswaps
priority: 0.4
banner: research
date: 2020-10-03
---

{{ page.title }}
=====
---

{% for nballs in (1..5) %}
## {{ nballs | pluralize: 'ball' }}
{% assign sws = site.data.siteswaps %}
{% for sw in sws %}
{% assign nb = sw.nballs | plus: 0 %}
{% if nb == nballs %}

**{{ sw.pattern }}** {{ sw.notes }}

{% endif %}
{% endfor %}
{% endfor %}

