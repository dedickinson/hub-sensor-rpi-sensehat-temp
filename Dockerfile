FROM balenalib/raspberrypi3-alpine-python:3-3.6-run

WORKDIR /usr/src/app
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY app.py ./

CMD ["app.py"]
