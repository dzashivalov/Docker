FROM python:3.12.0a4-alpine3.17

RUN mkdir /src

ADD requirements.txt /src/

RUN pip install -r /src/requirements.txt

ADD . /app

EXPOSE 8080

ENTRYPOINT python /app/app.py