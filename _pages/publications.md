---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% assign pbus = site.publications | sort: 'year' %}


{% for post in pbus reversed %}
  {% include archive-single-pub.html %}
{% endfor %}
