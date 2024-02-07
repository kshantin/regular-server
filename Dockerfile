FROM golang:1.21.4
WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download 

COPY *.go ./
RUN CGO_ENABLE=0 GOOS=linux go build -o /regular-server

EXPOSE 8080

CMD ["/regular-server"]