#FROM tiangolo/uwsgi-nginx-flask:python3.6
FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7

RUN apk update && \
    apk upgrade && \
    apk add git

RUN git clone https://github.com/deuterium/ow-server.git /code
RUN cp -r /code/* /app
COPY *.pem /certs/
COPY prestart.sh /app/prestart.sh

WORKDIR /app
RUN pip install -r requirements.txt