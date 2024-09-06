# build_files.sh
echo 'Building project packages...'
py -m pip install -r requirements.txt


echo 'Migrating database...'
py manage.py makemigrations --noinput
py manage.py migrate --noinput


echo 'Collecting static files...'
py manage.py collectstatic --noinput