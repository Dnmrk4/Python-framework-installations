# Install virtual env
$~ python3.6 -m venv --without-pip virtual
$~ source virtual/bin/activate

# Install pip
$~ curl https://bootstrap.pypa.io/get-pip.py | python

# Install django
(v)$~ pip install Django==2.2.6

# Confirm Django is installed
(v)$~ python3.6
    >>> import django
    >>> django.get_version()
    '2.2.6'

# Create a Django project
(v)$~ django-admin startproject prjname
            prjname/
                manage.py
                prjname/
                    __init__.py
                    settings.py
                    urls.py
                    wsgi.py
#  or
(v)$~ django-admin startproject prjname
# best for deployment
            manage.py
            prjname/
                __init__.py
                settings.py
                urls.py
                wsgi.py

# Start Django Server
(v)$~ python3.6 manage.py runserver

# django apps
(v)$~ django-admin startapp appname
            manage.py
            prjname/
                # Contains project files
            appname/
                __init__.py
                admin.py
                migrations/
                    __init__.py
                models.py
                tests.py
                views.py

# django bootstrap
(v)$~ pip install django-bootstrap3

# Connecting To Postgres
    # Install database dependency
    (v)$~ pip install psycopg2
    # Create a Postgres database for our project
    (v)$~ psql
    user=`#` CREATE DATABASE prjname;
    # Change project database settings to use Postgres
        # prjname/settings.py
            DATABASES = {
                'default': {
                    'ENGINE': 'django.db.backends.postgresql',
                    'NAME': 'prjname',
                    'USER': '<Your Database Username >',
                    'PASSWORD':'<Your Database Password>',
                }
            }

# Setting the Timezone
    # prjname/settings.py
        TIME_ZONE = 'Africa/Nairobi'

# Initial Migration
(v)$~ python3.6 manage.py migrate

# Run Checks
(v)$~ python3.6 manage.py check
    ~System check identified no issues (0 silenced)
# Make Migrations
(v)$~ python manage.py makemigrations appname
# View Migration
(v)$~ python3.6 manage.py sqlmigrate news 0001
# Run Migration
(v)$~ python3.6 manage.py migrate

# Basic Database Queries
(v)$~ python manage.py shell (
    >>> from appname.models import Editor
    >>> ed1 = Editor(first_name = 'Fname',last_name = 'Lname',email ='example@example.com')
    >>> ed1.save()
    >>> ed2 = Editor.objects.create(first_name = 'Fname2',last_name = 'Lname2',email ='example2@example2.com')
    >>> Editor.objects.all()
    >>> Editor.objects.get(pk = 1)
    >>> Editor.objects.filter(first_name = 'Fname')
    >>> Editor.objects.filter(first_name = 'Fname',last_name = 'Lname')
    >>> Editor.objects.order_by('first_name')
    >>> Editor.objects.all()[:]
    >>> Editor.objects.filter(id = 2).update(first_name ='Fname')
    >>> Editor.objects.filter(id = 2)
    >>> Editor.objects.filter(id = 2).delete()
    >>> Editor.objects.filter(id = 6)
    ))
# Testing methods
(v)$~ python manage.py test news

# django app admin
(v)$~ python manage.py createsuperuser

# Uploading images
(v)$~ pip install pillow

# Sending email
(v)$~ pip install python-decouple
        .env {
            EMAIL_USE_TLS = True
            EMAIL_HOST = 'smtp.gmail.com'
            EMAIL_PORT = 587
            EMAIL_HOST_USER = 'EMAIL'
            EMAIL_HOST_PASSWORD = 'EMAIL-PASSWORD'
        }
        # tribune/settings.py 
        {
            EMAIL_USE_TLS = config('EMAIL_USE_TLS')
            EMAIL_HOST = config('EMAIL_HOST')
            EMAIL_PORT = config('EMAIL_PORT')
            EMAIL_HOST_USER = config('EMAIL_HOST_USER')
            EMAIL_HOST_PASSWORD = config('EMAIL_HOST_PASSWORD')
        }

# Django Authentication
(v)$~ pip install django-registration==2.4.1

# Creating an Editor for users
(v)$~ pip install django-tinymce


* For django project deployment checkout https://github.com/Dnmrk4/django-heroku-deployments.git




















