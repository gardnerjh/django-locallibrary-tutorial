#!/bin/bash

pip install -r requirements.txt
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic
python manage.py test # Run the standard tests. These should all pass.
python manage.py createsuperuser # Create a superuser. Fields from DJANGO_SUPERUSER_USERNAME, DJANGO_SUPERUSER_PASSWORD, and DJANGO_SUPERUSER_EMAIL environment variables
#python manage.py runserver