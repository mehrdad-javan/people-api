# use an existing docker image
FROM openjdk:8-jdk-alpine
WORKDIR /usr/app
COPY target/people-api-0.0.1-SNAPSHOT.jar /usr/app
ENTRYPOINT ["sh", "-c", "java -jar /usr/app/people-api-0.0.1-SNAPSHOT.jar"]


#docker build -t javanmehrdad/people-api:latest .
#docker build -t javanmehrdad/people-api .

#docker run -p 8282:8080 javanmehrdad/people-api:latest
#docker run -d -p 8282:8080 javanmehrdad/people-api
#docker run -d --name people-api -p 8282:8080 javanmehrdad/people-api



#docker run -d --name mysql_container_45 -e MYSQL_ROOT_PASSWORD=root -v mysql_data:/var/lib/mysql -p 3307:3306  mysql:latest
#docker run -d --name mysql_container_45 -e MYSQL_ROOT_PASSWORD=root -v mysql_data:/var/lib/mysql -v D:/mydata.sql:/docker-entrypoint-initdb.d/mydata.sql -p 3307:3306  mysql:latest --init-file=/docker-entrypoint-initdb.d/mydata.sql