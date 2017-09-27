---
layout: default
title: Puzzles
---

{% for puzzle in site.puzzlepoems %}
  {{ puzzle.title }}
    {{ puzzle.content }}
{% endfor %}
