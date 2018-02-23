---
layout: default
---

## Pieces

As we create new puzzles, we generate critical commentary. These writings highlight relevant aspects of the design process, emphasizing the interplay between a poem and its physical manifestation.

Currently we are writing under three headings: "Computation," "Fabrication," and "Solving."

<h4> Computation </h4>
{% for post in site.posts %} 
{% if post.categories contains "computation" %}
<li> <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> | {{post.author}} </li>
{% endif %}
{% endfor %} 
<br>
<h4> Fabrication </h4>
{% for post in site.posts %} 
{% if post.categories contains "fabrication" %}
<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> | {{post.author}}</li>
{% endif %}
{% endfor %}
<br>
<h4> Solving </h4>
{% for post in site.posts %} 
{% if post.categories contains "solving" %}
<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> | {{post.author}}</li>
{% endif %}
{% endfor %}
<br>
