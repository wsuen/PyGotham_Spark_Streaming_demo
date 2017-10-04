FROM jupyter/all-spark-notebook:latest

#add contents of repo to docker container
WORKDIR /demo
ADD . /demo

#needed to stream messages from Twitter API
RUN pip install tweepy

#ports for notebook server and Spark UI
EXPOSE 4040
EXPOSE 8888

