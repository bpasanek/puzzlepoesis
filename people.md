---
layout: default
---

# People

The Puzzle Poetry group is an emphatically cross-disciplinary one, convening poets, literary critics, Scholars’ Lab and A-School technicians, and artists. Our unifying interest is composition, design, and constraint. Faculty participants and consultants are drawn from English, Computer Science, Art, Art History, and Architecture; graduate students and MFAs, from the English department. Among the undergraduates in the group we number an Mechanical Engineering and Poetry double major as well as several English/CS majors and minors. We believe our experiments will make poetic structure more accessible to literary theorists and students alike. Our goal is to promote the study of poetry by bringing it into campus maker spaces. 

#### Core Participants 
<!-- ![LJ_picture](/images/LJ_Lauren.png) -->

<ul>
	{% for member in site.data.members %}
	<li>
		{{site.baseurl}}
		<a href = "{{site.baseurl}}/people/{{member.lastname}}-{{member.firstname}}.html">{{member.firstname}} {{member.lastname}}</a> | {{member.affiliations.dept}}
        </li>		
    {% endfor %}
	
</ul>