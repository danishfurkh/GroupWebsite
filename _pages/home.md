---
title: "Atomic group - Home"
layout: homelay
excerpt: "Theoretical atomic group Jena."
sitemap: false
permalink: /
---

Welcome to the atomic theory group at the Helmholtz Institute Jena and the Department of Theoretical Physics at the Friedrich-Schiller-Universität Jena. The focus of our research work is placed upon the relativistic quantum dynamics of ions and beams. Our goal is to investigate the structure, properties and the dynamical behaviour of few- and multi-electron ions with emphasis on strong Coulomb and radiation fields as well as relativistic collision energies. We aim to better understand relativistic, many-body and quantum electrodynamical (QED) effects under -- more or less -- extreme conditions.


<div markdown="0" id="carousel" class="carousel slide" data-ride="carousel" data-interval="4000" data-pause="hover">
  <!-- Menu -->
  <ol class="carousel-indicators">
    {% assign pictures_path = "/images/slider7001400/" %}
    {% assign picture_index = 0 %}
    {% for file in site.static_files %}
      {% if file.path contains pictures_path %}
        <li data-target="#carousel" data-slide-to="{{ picture_index }}" {% if picture_index == 0 %}class="active"{% endif %}></li>
        {% assign picture_index = picture_index | plus: 1 %}
      {% endif %}
    {% endfor %}
  </ol>

  <!-- Items -->
  <div class="carousel-inner" markdown="0">
    {% assign picture_index = 0 %}
    {% for file in site.static_files %}
      {% if file.path contains pictures_path %}
        <div class="item{% if picture_index == 0 %} active{% endif %}">
          <img src="{{ site.url }}{{ site.baseurl }}{{ file.path }}" alt="Slide {{ picture_index }}" />
        </div>
        {% assign picture_index = picture_index | plus: 1 %}
      {% endif %}
    {% endfor %}
  </div>

  <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>





Our theoretical studies have impact also on a large number of other research areas, from astro- and nuclear physics to warm dense matter, plasma diagnostics and laser spectroscopy, and up to "new physics" beyond the standard model of particles and interactions.

 **We are  looking for passionate new PhD students, Postdocs, and Master students to join the team** [(more info)]({{ site.url }}{{ site.baseurl }}/vacancies) **!**


We are grateful for funding from GSI, [HI Jena](https://www.hi-jena.de/de/) and the German research foundation

<figure class="fourth">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/gsi.png" style="width: 200px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/unijena.png" style="width: 210px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/HIjena.png" style="width: 200px">
</figure>
