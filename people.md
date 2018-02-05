{% include header.html %}

# People

A hearty band of Wahoos, who span the gamut of age, background and academic affiliation, make our poetic forays possible.

#### Core Participants 

<ul>
{% for people in site.people %}
<li>
    <a href="people/{{people.lastname}}-{{people.firstname}}.html">{{ people.firstname }} {{ people.lastname }}</a>, 
    	{% if people.lastname == 'Johnson' and people.firstname == 'Lauren' %}
    		![LJ_picture](/images/LJ_Lauren.png)
    	{% endif %}
    {% for dept in people.affiliations %}
        {{ people.affiliations.dept }}
    {% endfor %}</li>
{% endfor %}
</ul>

{% include footer.html %}
