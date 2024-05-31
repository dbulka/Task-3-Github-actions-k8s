FROM python:3.8

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN python3 -m pip3 install --upgrade pip3

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]