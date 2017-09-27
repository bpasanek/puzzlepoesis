---
layout: default
title: Puzzles
---

{% for puzzle in site.puzzlepoems %}
  { puzzlepoem.title }}
    {{ puzzlepoem.content }}
{% endfor %}