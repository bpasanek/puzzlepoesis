---
layout: default
---

## Pieces

As we create new puzzles, we generate critical commentary, archiving it here. These writings highlight aspects of the design process, emphasizing the interplay between a poem and its physical manifestation. 

For a quick overview of Puzzle Poesis aims and methods, we recommend starting (as we did) with learning [How to Make a Poem into a Puzzle](https://bpasanek.github.io/puzzlepoesis/fabrication/2018/07/20/Recipe.html). 

Currently we are writing under four headings: Events, Computation, Fabrication, and Solving.

<h4> Events </h4>
{% for post in site.posts %} 
{% if post.categories contains "events" %}
<li> <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> | {{post.author}} </li>
{% endif %}
{% endfor %}
<br> 
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
