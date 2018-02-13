<h1>{{ site.title | default: site.github.repository_name }}</h1>
<p>{{ site.description | default: site.github.project_tagline }}</p>

<br>
![Puzzle Poetry](/images/PP-logo.jpg){: .center-image }
<br>

<!-- 
Get a better white-on-white acrylic/cloth image

	![Puzzle Poetry](/images/tsien-puzzle.jpg){: .center-image }

noted! but for now i think this error is making the site have a weird state so i'm gonna throw the logo back in. 
-->
This is the home of UVa's Puzzle Poetry working group.


<!--
{% for post in site.posts %}
<a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }} | {{post.author}}</a>
{% endfor %}


Our puzzlings continue apace. Meanwhile, we have prototypes to share: 
{% for puzzle in site.puzzlepoems %}
<a href="{{ site.baseurl }}{{ puzzle.url }}">{{ puzzle.title }} | {{puzzle.designer}}</a>
{% endfor %}

-->

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
