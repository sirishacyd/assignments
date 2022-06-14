```
siri@siris-MacBook-Pro:~|⇒  docker run -dit centos
af0553fcfe98a1fb8ac2df3f5fcd6d07b3e2b1b147271757046e98142883e901
siri@siris-MacBook-Pro:~|⇒  docker exec -it af0553fcfe98a1fb8ac2df3f5fcd6d07b3e2b1b147271757046e98142883e901 /bin/bash
[root@af0553fcfe98 /]# vi ./checkhash.sh
[root@af0553fcfe98 /]# sh checkhash.sh
/root/.hushlogin File  Created
[root@af0553fcfe98 /]# sh checkhash.sh
/root/.hushlogin file exists, All Good.


siri@siris-MacBook-Pro:~|⇒  shellcheck checkhash.sh 

In checkhash.sh line 1:
FILE=~/.hushlogin
^-- SC2148 (error): Tips depend on target shell and yours is unknown. Add a shebang or a 'shell' directive.

For more information:
  https://www.shellcheck.net/wiki/SC2148 -- Tips depend on target shell and y...
siri@siris-MacBook-Pro:~|⇒  which shell
shell not found
siri@siris-MacBook-Pro:~|⇒  which sh   
/bin/sh
siri@siris-MacBook-Pro:~|⇒  vi checkhash.sh 
siri@siris-MacBook-Pro:~|⇒  shellcheck checkhash.sh
siri@siris-MacBook-Pro:~|⇒  shfmt checkhash.sh 
#!/bin/bash
FILE=~/.hushlogin
if [ -f "$FILE" ]; then
	echo "$FILE file exists, All Good."
else
	touch ~/.hushlogin
	echo "$FILE File  Created"
fi
siri@siris-MacBook-Pro:~|⇒ 
```