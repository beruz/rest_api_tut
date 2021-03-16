FROM python:3.7-alpine
LABEL maintainer="Berke Eruz" 

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#user to run applications only -D
RUN adduser -D user 
USER user