# Docker CI Stack in Docker


Leverage Docker and start Jenkins, Artifactory, Sonarqube as containers using Docker Compose

https://docs.docker.com/compose/ (Links to an external site.)

with 1 command - docker-compose up -  3 containers should be started on their default ports


Created [docker-compose.yml](docker-compose.yml) with following images

jenkins 

mattgruter/artifactory but mapped 8080 to 8081 of local

sonarqube but added platform flag to support my Mac M1 machine

Logs of Docker compose up can be found at [docker-compose-up.log](docker-compose-up.log)
