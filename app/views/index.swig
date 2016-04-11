{% extends 'layout.swig' %}

{% block content %}
  <h1>{{ title }}</h1>
  <p>Welcome to {{ title }}</p>
  <p>{{ requests | json_encode }}</p>

  <form action="/file-upload" method="POST" enctype="multipart/form-data">
  Select an image to upload:
  <input type="file" name="photo"> 
  <input type="submit" value="Upload Image">
</form>
{% endblock %}
