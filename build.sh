#!/bin/bash
echo"Building the project..."
python3.9 -m pip install -r requirements.txt

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 maange.py migrate --noinput

echo "collect Static.."
python3.9 manage.py collectstatic --noinput --clear
