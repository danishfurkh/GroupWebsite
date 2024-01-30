---
title: "News"
layout: textlay
excerpt: "Stay updated with the latest news from the Atomic group in Jena."
sitemap: false
permalink: /allnews.html
---

<style>
  .news-container {
    margin: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    background-color: #f9f9f9;
    border-radius: 5px;
  }

  .news-date {
    font-size: 16px;
    font-weight: bold;
    color: #333;
  }

  .news-headline {
    font-size: 18px;
    margin-top: 5px;
    color: #555;
  }
</style>
<BR>
# News

Stay up to date with the latest news from the Atomic group in Jena. Here are our recent updates:

{% for article in site.data.news %}
<div class="news-container">
  <p class="news-date">{{ article.date }}</p>
  <p class="news-headline">{{ article.headline}}</p>
</div>
{% endfor %}

