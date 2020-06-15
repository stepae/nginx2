sudo fuser -k 8000/tcp
sudo fuser -k 8080/tcp
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo gunicorn hello:application -c etc/hello.py &
cd ask
sudo gunicorn ask.wsgi:application -c ../etc/ask.py &
