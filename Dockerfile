FROM golang:1.18-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod tidy

COPY *.go ./

RUN go build -o testwebhooks

EXPOSE 5000

CMD [ "./testwebhooks" ]