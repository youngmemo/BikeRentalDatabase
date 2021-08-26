#kills running instance of tomcat
docker kill $(docker ps -q)

docker run --rm --name mariadb -p 3309:3306/tcp -v "$(pwd)/database":/var/lib/mysql -e MYSQL_ROOT_PASSWORD=12345 -d mariadb
#compiles and packages source code into .war file via maven volume in docker container
docker run --rm -it --name mavenbuild -v maven-repo:/root/.m2 -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven mvn clean install
#copies and rebuilds tomcat image with latest .war file
docker image build -t trym/tomcat .
#starts tomcat container, making the webapp available.
docker container run --rm -it --publish 8081:8080 trym/tomcat

