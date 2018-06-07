FROM    farseer810/ubuntu:python3
MAINTAINER farseer810 "https://github.com/farseer810"

WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD gunicorn -b :8080 --chdir /app docker_test.wsgi
