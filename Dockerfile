FROM python:3.9.0

WORKDIR /home/

RUN echo "sdfsdafsdfsdf"

RUN git clone https://github.com/HeewonKwak/Python_Django.git

WORKDIR /home/Python_Django/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 9000

CMD ["bash", "-c", "python manage.py migrate --settings=gys_project1.settings.deploy && python manage.py collectstatic --noinput --settings=gys_project1.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=gys_project1.settings.deploy gys_project1.wsgi --bind 0.0.0.0:9000"]
