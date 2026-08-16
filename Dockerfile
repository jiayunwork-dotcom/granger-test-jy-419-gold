FROM golang:1.21-alpine
ENV GOTOOLCHAIN=local
ENV CGO_ENABLED=0
WORKDIR /src
COPY . .
RUN go mod download && go build -o /app/bin .
CMD ["/bin/sh"]
