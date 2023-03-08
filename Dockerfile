FROM golang:1.20

WORKDIR /go/src

RUN apt-get update && apt-get install -y librdkafka-dev

CMD ["tail", "-f", "/dev/null"]