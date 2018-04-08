FROM tiangolo/uwsgi-nginx-flask:python3.6

RUN git clone https://github.com/deuterium/ow-server.git /code
RUN cp -r /code/* /app

WORKDIR /app
RUN pip install -r requirements.txt