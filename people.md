---
layout: default
---

# People

A hearty band of Wahoos, who span the gamut of age, background and academic affiliation, make our poetic forays possible.

#### Core Participants 



<!-- ![LJ_picture](/images/LJ_Lauren.png) -->

<ul>
	{% for member in site.data.members %}
	<li>
		<a href = "people/{{member.lastname}}-{{member.firstname}}.html">{{member.firstname}} {{member.lastname}}, {{member.affiliations.dept}}</a>		
    {% endfor %}
	</li>
</ul>