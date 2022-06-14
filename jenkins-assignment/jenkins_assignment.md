# Jenkins Assignment

1. Installed Jenkins in my macOs using brew 

```
brew install jenkins
```
- Started Jenkins Service Locally 
```
brew services start jenkins
```

2. Grabbed the admin password from the file 
```
sudo cat /Users/$(whoami)/.jenkins/secrets/initialAdminPassword
```
3. Logged In to UI using admin and password grabbed from step 2 and continued with the regular setup.

4. Downloaded Jenkins Cli from the the jenkins UI at 
```
 http://localhost:8080/jnlpJars/jenkins-cli.jar
```
5. Installed the Plugin using the below After Enabling the authentication access for anyone at configure global security screen 
```
siri@siris-MacBook-Pro:~/Desktop|⇒  java -jar jenkins-cli.jar -s http://localhost:8080/  install-plugin  naginator:1.18 -deploy 
Installing naginator:1.18 from update center
```
I have tried creating an API token  as well as using user authentication, but got stuck with the following error. 
```
java.io.IOException: Server returned HTTP response code: 401 for URL: http://localhost:8080/cli?remoting=false
	at java.base/sun.net.www.protocol.http.HttpURLConnection.getInputStream0(HttpURLConnection.java:1924)
	at java.base/sun.net.www.protocol.http.HttpURLConnection.getInputStream(HttpURLConnection.java:1520)
	at hudson.cli.FullDuplexHttpStream.<init>(FullDuplexHttpStream.java:73)
	at hudson.cli.CLI.plainHttpConnection(CLI.java:383)
	at hudson.cli.CLI._main(CLI.java:318)
	at hudson.cli.CLI.main(CLI.java:100)
```