FROM jupyter/all-spark-notebook:latest

WORKDIR /demo
ADD . /demo

RUN pip install tweepy

EXPOSE 4040
EXPOSE 8888

