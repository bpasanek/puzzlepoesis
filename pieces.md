---
layout: default
---

# Pieces

Every time we create a puzzle, we add critical commentary to it. Writings typically flesh out relevant aspects of the design process and the interplay between a poem and its physical manifestation. We split them into different slots, such as "Computation" and "Fabrication."


<!--
{% for post in site.posts[categories] %}

<h2>site.posts[categories]</h2>

<a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}} | {{ post.categories }}</a>
{% endfor %} -->

<!--
<ul>
{% for post in site.faqs %} 
{% if post.categories contains "mycategory" %}
 <li>{{ post.title }}</li> 
{% endif %}
{% endfor %}
-->
<h4> Computation </h4>
{% for post in site.posts %} 
{% if post.categories contains "computation" %}
<li> <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}}</a> </li>
{% endif %}
{% endfor %}

<h4> Fabrication </h4>
{% for post in site.posts %} 
{% if post.categories contains "fabrication" %}
<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}}</a></li>
{% endif %}
{% endfor %}



<!--

{% for post in site.posts %}
<a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}} | {{ post.categories }}</a>
{% endfor %}

-->