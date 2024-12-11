sudo apt-get update
apt-get install python3-virtualenv
python3 -m venv env
source env/bin/activate

pip install -r requirements.txt


gunicorn --bind "0.0.0.0:5000" app:app
