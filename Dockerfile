FROM golang:1.7.1-alpine

RUN apk update && apk add --no-cache git
ENV NAME=first
ENV DIR=/go/src/github.com/Sandeshvc/$NAME

ADD . $DIR
WORKDIR $DIR

#ENTRYPOINT $NAME
CMD first

RUN go get
RUN go build && go install
