---
layout: default
---

# Puzzles

Find below a sampling of some of the puzzles we have constructed so far.

<uL>
{% for puzzle in site.puzzlepoems %}
<li>
    <a href="{{ site.baseurl }}{{ puzzle.url }}">{{ puzzle.title }} | {{puzzle.designer}}</a>
</li>
{% endfor %}
</ul>

