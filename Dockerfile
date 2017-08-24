FROM golang:1.6
MAINTAINER ops@ifttt.com

WORKDIR /app
RUN mkdir -p /app

COPY . /app

RUN go get github.com/constabulary/gb/...

RUN make linux

CMD /bin/bash