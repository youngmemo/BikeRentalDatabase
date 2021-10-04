@echo off

:: Kill running instance of tomcat
docker kill tomcat

docker run --rm --env "TZ=Europe/Oslo" --name mariadb -p 3309:3306/tcp -v "%cd%\database":/var/lib/mysql -e MYSQL_ROOT_PASSWORD=12345 -d mariadb:10.5.11

:: Compiles and packages source code into .war file via maven volume in docker container
docker run --rm -it --name mavenbuild -v maven-repo:/root/.m2 -v "%cd%":/usr/src/mymaven -w /usr/src/mymaven maven mvn clean install

:: Copies and rebuilds tomcat image with latest .war file
docker image build -t trym/tomcat .

:: Starts tomcat container, making the webapp available.
docker container run --rm -it -d --name tomcat --publish 8081:8080 trym/tomcat

echo.
echo "Link: http://localhost:8081/amv-1.0/"
echo.

pause