docker build -t mypostgres .
docker run -d -p 5432:5432 -v pgdata:/var/lib/postgresql/data -v $(pwd)/backup:/backup --name mypostgres mypostgres
