Leverage Docker and start Jenkins, Artifactory, Sonarqube as containers using Docker Compose

https://docs.docker.com/compose/ (Links to an external site.)

with 1 command - docker-compose up -  3 containers should be started on their default ports


Created Docker compose with images

jenkins 

mattgruter/artifactory but mapped 8080 to 8081 of local

sonarqube but added platform flag to support my Mac M1 machine