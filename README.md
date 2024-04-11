docker build -t training-db .

docker run --name db-container -p 5432:5432 -d training-db
