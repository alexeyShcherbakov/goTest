FROM golang:latest


# install psql
#  RUN apt-get update
# RUN apt-get -y install postgresql-client

# RUN go mod download
# RUN go mod tidy
# RUN go mod init goProject
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
WORKDIR /go/goProject
CMD  go run main.go
#  RUN ls -la 
# CMD ["/goProject/app"]
# WORKDIR /
# CMD migrate -database ${DB_URL} -path migration up