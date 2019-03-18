{% extends 'basic.tpl' %}


{% block codecell %}
	{% if cell.outputs | length > 0 %}
		{{super()}}
	{% endif %}
{% endblock %}