FROM alpine:3.8

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk update

RUN apk add python3

RUN python3 -m pip install --upgrade pip

RUN pip install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]