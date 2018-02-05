{% include header.html %}


<br>
![Puzzle Poetry](/images/PP-logo.jpg){: .center-image }
<br>
This is the home of UVa's Puzzle Poetry working group.

### The Increase Puzzle Project
Our group is currently working to convert a sequence of Shakespeare's sonnets into pentomino puzzles. These will be laser cut from wood, acrylic, and other materials, and then assembled as an art-object titled _Increase_. Preparing the puzzles requires finding ways to pack pentomino shapes into a sonnet-shaped frame. Working by hand, we've carved up several sonnets into a set of pentomino pieces, but we hope to do better, enlisting a walk-back algorithm to find all possible solutions to our sequence of sonnets -- that is, all the ways that any given sonnet can be cut up into pentomino shapes.



{% for post in site.posts %}
<a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}}</a>
{% endfor %}


Our puzzlings continue apace. Meanwhile, we have prototypes to share: 
{% for puzzle in site.puzzlepoems %}
<a href="{{ site.baseurl }}{{ puzzle.url }}">{{ puzzle.title }} | {{puzzle.designer}}</a>
{% endfor %}



<!--Our puzzlings continue apace. Meanwhile, we have prototypes to share:
1. [Sonnet 16](./puzzlepoems/sonnet16.html), Neal Curtis
2. ["Ah! Sun-Flower,"](./puzzlepoems/sunflower.html) Brad Pasanek -->

More puzzle projects forthcoming...

<!--

#### Core Participants
<ul>
{% for people in site.people %}
<li>
    <a href="people/{{people.lastname}}-{{people.firstname}}.html">{{ people.firstname }} {{ people.lastname }}</a>, 
    {% for dept in people.affiliations %}
        {{ people.affiliations.dept }}
    {% endfor %}</li>
{% endfor %}
</ul>
-->
{% include footer.html %}
