# Assignment 1

a) Bash Script

Please run these exercises in a Docker Container - docker pull centos

docker run -dit centos - This will provide the <containerid> as the output

docker exec -it <containerid> /bin/bash - Login to the container

Create a shell script (checkhash.sh) to check for a file by name ~/.hushlogin if the file is not there create a file
Provide execute privileges on the file

- Run the script - ./checkhash.sh

Script is created for this refer the script at [checkhash.sh](checkhash.sh)

If the file is there the Print
File exists, All Good

If file does not exist Print 
File created

Run shellcheck and shfmt against the file and fix recommendations if any.

- Added Logs at [Assignment1_a.md](Assignment1_a.md)

b) MacOS

Create a script that will print the version of the MacOS Darvin Kernel Version

- Script is created for this refer the script at [check_macos_version.sh](check_macos_version.sh)
- Added Logs at [Assignment1_b.md](Assignment1_b.md)

c) Docker

Pull the nginx official docker image, tag it to your namespace, push the image the docker hub.

Provide image name to pull and verify

- Added Logs at [Assignment1_c.md](Assignment1_c.md)

d) Oh-My-ZSH

Install brew formula “maven”.  
Add the ‘mvn’ plugin to ZSH Profile
Open a new terminal and find the number of aliases that comes with enabling the plugin for maven.

- Added Logs at [Assignment1_d.md](Assignment1_d.md)

e)  Create a Repo in Your Personal Github.com profile

Commit the scripts created in the exercises above with the instructions on how to execute them in README.md file

- Added File at [Readme.md](Readme.md)
