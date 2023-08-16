FROM golang:latest as build
WORKDIR /app
COPY . .

RUN go mod tidy
COPY app.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -o main

FROM alpine:latest
ENV GIN_MODE=release
WORKDIR /app/
COPY --from=build /app/main .
COPY ./templates ./templates

EXPOSE 8080

CMD ["./main"]
