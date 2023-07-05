FROM golang:alpine
WORKDIR /app/api
COPY ./api .
ENV YOUR.HOST=$HOSTNAME
RUN go build main.go
CMD ./main