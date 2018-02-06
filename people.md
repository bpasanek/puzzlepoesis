---
layout: default
---

# People

A hearty band of Wahoos, who span the gamut of age, background and academic affiliation, make our poetic forays possible.

#### Core Participants 

<ul>
{% for member in site.data.members %}
<li>
    {{ member.firstname }} {{ member.lastname }}, 
    	{% if member.lastname == "Johnson" and member.firstname == "Lauren" %}
    		![LJ_picture](/images/LJ_Lauren.png)
    	{% endif %}
    {% for dept in member.affiliations %}
        {{ member.affiliations.dept }}
    {% endfor %}</li>
{% endfor %}
</ul>
