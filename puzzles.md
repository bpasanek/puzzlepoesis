---
layout: default
---
{% include header.html %}

# Puzzles

Here is a running list of the puzzles we have constructed so far.


{% for puzzle in site.puzzlepoems %}
<a href="{{ site.baseurl }}{{ puzzle.url }}">{{ puzzle.title }} | {{puzzle.designer}}</a>
{% endfor %}

{% include footer.html %}
