---
layout: default
---

# Posts

Every time we create a puzzle, we add critical commentary to it. Posts typically include relevant pieces of the design process and the interplay between a poem and its physical manifestation.

{% for post in site.posts %}
<a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}}</a>
{% endfor %}

