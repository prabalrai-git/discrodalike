#!/bin/bash

echo "Setting up a virtual environment"
python3 -m venv venv
source venv/bin/activate

echo "Upgrading pip"
python3 -m pip install --upgrade pip

echo "Installing dependencies..."
python3 -m pip install -r requirements.txt

echo "Running migrations..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collecting static files..."
python3 manage.py collectstatic --noinput
