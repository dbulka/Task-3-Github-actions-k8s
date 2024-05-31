FROM python:3.8

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN python -m pip install --upgrade pip

RUN pip install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]