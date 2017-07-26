---
layout: page
title: Tag Index
excerpt: "An archive of posts sorted by tag."
search_omit: true
---

{% capture site_tags %}{% for page in site.pages %}  {% for tag in page.tags %}  {{ tag }} , {% endfor %} {% endfor %} {% endcapture %}
{% assign tags_list = site_tags | strip | rstrip | lstrip | split:',' | sort  | uniq %}



{% for tag in tags_list %}
  <h3>{{ tag }}</h3>
  <ul>
  {% for page in site.pages %}
	{%capture bfoo%}{{ page.tags | join: ' ' }}{%endcapture%}
	{%capture sfoo%}{{ tag | lstrip | rstrip }}{%endcapture%}
	{% unless  bfoo.size > 1 %}
		{% assign bfoo = "michelsardou" %}
	{% endunless%}
    {% if bfoo contains sfoo %}
		<li><a href="{{ site.baseurl }}{{ page.url }}">{{ page.title }}</a></li>
    {% endif %}
	{% endfor %}
  </ul>
{% endfor %}
