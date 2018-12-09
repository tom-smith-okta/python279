# to build
# docker build -t tomsmithokta/python279 .

# to run
# docker run -it tomsmithokta/python279

# to test
# python hello.py

FROM ubuntu:18.04

ENV TZ=America/New_York

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
	wget \
	build-essential \
	vim \
	python-pip \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz

RUN tar -xvf Python-2.7.9.tgz

WORKDIR /Python-2.7.9

RUN ./configure

RUN make

RUN make install

WORKDIR /

RUN rm -rf Python-2.7.9.tgz

RUN echo "print('hello')" > hello.py