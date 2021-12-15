FROM mysql:8.0.2

#create a database name country
ENV MYSQL_DATABASE country

#copy the files from script directory and executed the moment your database container starts running
COPY ./scripts/ /docker-entrypoint-initdb.d/
