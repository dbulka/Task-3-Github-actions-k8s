# Use the Alpine Linux base image
FROM alpine:latest

# Install Python 3 and pip
RUN apk update && apk add --no-cache python3 py3-pip

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk add python3

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]