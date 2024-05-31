FROM alpine:latest

RUN apk update && apk upgrade

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

FROM python:3.8

RUN apk add python3

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]