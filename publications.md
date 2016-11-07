---
title: Publications
layout: default
banner: stampa
priority: 0.8
---

{{ page.title }}
================
---

<table style="margin: 0 auto; width: 95%;">
    <colgroup>
       <col span="1" style="width: 25%;">
       <col span="1" style="width: 25%;">
       <col span="1" style="width: 25%;">
       <col span="1" style="width: 25%;">
    </colgroup>
    <thead>
    <tr>
        <th style="width=25%; text-align:center">Number of papers</th>
        <th style="width=25%; text-align:center">h-index</th>
        <th style="width=25%; text-align:center">g-index</th>
        <th style="width=25%; text-align:center">i10-index</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td style="text-align: center">{% hindex number %}</td>
        <td style="text-align: center">{% hindex hindex %}</td>
        <td style="text-align: center">{% hindex gindex %}</td>
        <td style="text-align: center">{% hindex i10index %}</td>
    </tr>
    </tbody>
</table>


## 2016
 - {% assign ref = "conti2016predicting" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)
 - {% assign ref = "conti2016perchlorination" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)

## 2015
 - {% assign ref = "bonacchi2015surface" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)
 - {% assign ref = "conti2015accurate" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)
 - {% assign ref = "haar2015supramolecular" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)

## 2013
 - {% assign ref = "chaurasia2013molecular" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)
 - {% assign ref = "pieraccini2013modelling" %} {% reference ref %} {% assign cits = site.data.citations | where: "paper", ref %}{% if cits.size > 1 %} Cited by {{ cits.size | minus:1 }}.{%endif %} [See details.](bib/{{ref}}.html)

