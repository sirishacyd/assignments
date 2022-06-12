siri@siris-MacBook-Pro:~/shfmt|main⚡ ⇒  docker pull nginx
Using default tag: latest
latest: Pulling from library/nginx
dc1f00a5d701: Already exists 
cfeb1af30280: Pull complete 
8b393d1865ed: Pull complete 
0e1c4d45c50e: Pull complete 
3b5fbcc85c0d: Pull complete 
05bbe9de3bca: Pull complete 
Digest: sha256:2bcabc23b45489fb0885d69a06ba1d648aeda973fae7bb981bafbb884165e514
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest               
siri@siris-MacBook-Pro:~/shfmt|main⚡ ⇒  docker image tag nginx:latest sirisha7474/nginx:latest
siri@siris-MacBook-Pro:~/shfmt|main⚡ ⇒  docker login
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: sirisha7474
Password: 
Login Succeeded
siri@siris-MacBook-Pro:~/shfmt|main⚡ ⇒  docker push sirisha7474/nginx:latest                  
The push refers to repository [docker.io/sirisha7474/nginx]
f617c13b24b9: Mounted from library/nginx 
f2ad8f5c9e0d: Mounted from library/nginx 
bd7a2c2a8fcc: Mounted from library/nginx 
8b47b4b0c1c8: Mounted from library/nginx 
b4f221ab2cef: Mounted from library/nginx 
4d31756873fb: Mounted from sirisha7474/httpd-fs 
latest: digest: sha256:6749669a206c08db96e2da448df2cf46ec4cf09ee1fdd51ed22edc2506727827 size: 1570