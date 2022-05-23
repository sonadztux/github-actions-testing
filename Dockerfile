FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /github-actions-testing

EXPOSE 3000

CMD ["/github-actions-testing"]