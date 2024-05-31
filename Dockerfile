# Use the Alpine Linux base image
FROM python:3.9-alpine

# Install build dependencies and Python packages
RUN apk update && \
    apk add --no-cache gcc musl-dev linux-headers && \
    pip install --no-cache-dir --upgrade pip

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

FROM python:3.8

RUN apk add python3

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]