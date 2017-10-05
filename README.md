Spark Streaming for World Domination (and other projects)
===================
PyGotham 2017   

Ask not what you can do for real time data streams but what they can do for you. This talk will give an overview of Apache Spark and pyspark (Spark’s Python API), with an emphasis on Spark’s Streaming API.
## Setup ##
This demo uses Jupyter docker-stacks (https://github.com/jupyter/docker-stacks).
```
// clone this repo
git clone git@github.com:wsuen/PyGotham_Spark_Streaming_demo.git
cd PyGotham_Spark_Streaming_demo

// build Docker image
docker build -t <img_name> .

// launch container
docker run --name <container_name> -p 4040:4040 -p 8888:8888 <img_name>

// explore!
```
*****
## Running notebooks
Sign up for developer credentials for Twitter's Streaming API on apps.twitter.com. Store your credentials in config file (`bin/config.example`). You can also edit `TweetRead.py` to filter by keywords of your choice, locations of tweets, and other parameters.
```
// with container running, start streaming data
docker exec <container_id> python3 bin/TweetRead.py
```
This starts the Twitte firehose, and sends the messages themselves to port 5555. At this point, you're reading to start building a streaming app using the included notebook.
*****
##Exploration

Spark UI: localhost:4040 by default
Jupyter notebook server: localhost:8888 by default