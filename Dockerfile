FROM ubuntu:20.04

# MAINTANER Your Name "youremail@domain.tld"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install flask

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]

