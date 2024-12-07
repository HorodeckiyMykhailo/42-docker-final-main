FROM golang:1.22.0
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go *.db ./
RUN go build -o /42-docker-final-main
CMD ["/42-docker-final-main"]
