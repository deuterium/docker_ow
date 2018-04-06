FROM python:2

RUN git clone https://github.com/deuterium/ow-server.git /code
WORKDIR /code
RUN pip install -r requirements.txt


EXPOSE 5000
CMD ["python", "hello.py"]