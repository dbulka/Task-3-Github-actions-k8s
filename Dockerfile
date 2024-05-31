# Use the Alpine Linux base image
FROM alpine:latest

FROM python:3.8

# Install Python 3 and pip
RUN apk update && apk add --no-cache python3 py3-pip

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk add python3

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000 

CMD ["python3","app.py"]