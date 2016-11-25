FROM python:3.4
ENV PYTHONBUFFERED 1
RUN mkdir /exampleapp
WORKDIR /exampleapp
ADD requirements.txt /exampleapp/
RUN pip install -r requirements.txt
ADD . /exampleapp/
ENV FLASK_APP /exampleapp/example.py
EXPOSE 5000
