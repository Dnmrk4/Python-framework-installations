# Install virtual env
$~ python3.6 -m venv --without-pip virtual
$~ source virtual/bin/activate

# Install pip
$~ curl https://bootstrap.pypa.io/get-pip.py | python

# Install flask
(v)$~ pip install flask
# Install flask bootstrap
(v)$~ pip install flask-bootstrap
# Install flask wtf
(v)$~ pip install flask-wtf
# Running app
(v)$~ pip install flask-script
# Run start.sh
(v)$~ chmod a+x start.sh
# Install gunicorn
(v)$~ python3.6 -m pip install gunicorn
# Get requirements file
(v)$~ pip freeze > requirements.txt
# flask sqlAlchemy
(v)$~ pip install flask-SQLAlchemy
(v)$~ pip install psycopg2
# flask db migrations
(v)$~ pip install flask-migrate
# Create flask migration folder(init)
(v)$~ python3.6 manage.py db init
(v)$~ python3.6 manage.py db migrate -m
(v)$~ python3.6 manage.py db upgrade
# flask login
(v)$~ pip install flask-login
# flask uploads
(v)$~ pip install flask-uploads
# flask emails
(v)$~ pip install flask-mail







