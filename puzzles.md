---
layout: default
---

# Puzzles

Find below a sampling of some of the puzzles we have constructed so far.


<ul>
  {% for puzzle in site.puzzlepoems %}
    <li>
      <a href="{{ site.baseurl }}{{ puzzle.url }}">{{ puzzle.title }}</a> | {{puzzle.designer}}
    </li>
  {% endfor %}
</ul>


