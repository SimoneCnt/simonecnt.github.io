---
layout: default
priority: 0.4
---

<h1>SC{{ page.scid }} - {{ page.title }}</h1>
<hr>

<b>Locality:</b> {{ page.locality }} {% if page.locid %}<a href="https://www.mindat.org/loc-{{ page.locid}}.html" target="_blank">(MINDAT)</a>{% endif %}<br>
<b>Size:</b> {{ page.size }}<br>
<b>Weight:</b> {{ page.weight }}<br>
<b>minID:</b> <a href="https://www.mindat.org/{{ page.minid }}" target="_blank">{{ page.minid }}</a><br>

{{ page.content }}

