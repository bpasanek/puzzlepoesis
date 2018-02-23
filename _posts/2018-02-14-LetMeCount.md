---
layout: default
author: Brad Pasanek
authorFirst: Brad
authorLast: Pasanek
title: Let Me Count the Ways
categories: computation
---
### Let Me Count the Ways

{% assign author = site.data.members[page.author] %}

<h4>
Author: <a href="./../../../../people/{{page.authorLast | downcase}}-{{page.authorFirst | downcase}}.html">{{page.authorFirst}} {{page.authorLast}}</a>
</h4>

For Valentine’s Day, I had hoped to convert the most famous of Elizabeth Barrett Browning’s Sonnets from Portugese into a puzzle. I had Raymond Queneau’s Oulipean <em>Hundred Thousand Billion Poems</em> [<em>Cent mille milliards de poèmes</em>] in mind. The complete solution space for a sonnet puzzle that packs the 12 unique pentominos into the sestet and 12 more pentominos and the 5 unique tetrominos into the octave (“let me count the ways”) is 2,339 sestet solutions x 3,386,001,688 octave solutions. That’s nearly 8 trillion (7,919,857,948,232) possible puzzle configurations. 

Matching Browning’s sestet to solutions was easy enough. Containing 45 single syllable words, it picks out 325 solutions. But the octave may be another matter. In fact, I’m still generating solutions to the 8x10 puzzle. It’s taking a long time: four days on the super computing cluster so far. I’ve generated 12 million solutions, a fraction of the whole solution space. I’ve tested 4 million of these solutions without success. That is, I got 4 million solutions &mdash; but Elizabeth Barrett Browning ain’t one.