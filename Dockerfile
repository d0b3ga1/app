FROM ubuntu:latest
MAINTAINER huynd62 "huynd62@wru.vn"
RUN apt-get update -y
RUN apt-get install -y python3-pip build-essential
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["mesenger.py"]