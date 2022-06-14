```
siri@siris-MacBook-Pro:~/shfmt|main⚡ ⇒  brew install maven
maven 3.8.5 is already installed but outdated (so it will be upgraded).
==> Downloading https://ghcr.io/v2/homebrew/core/maven/manifests/3.8.6
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/maven/blobs/sha256:0468fde1ed91dda88ce1be54ca222c23f9436e579e5e45a2ca38c26dda304e7f
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:0468fde1ed91dda88ce1be54ca222c23f9436e579e5e45a2ca38c26dda304e7f?se=2022-06-12T22%3A05%3
######################################################################## 100.0%
==> Upgrading maven
  3.8.5 -> 3.8.6 

==> Pouring maven--3.8.6.arm64_monterey.bottle.tar.gz
🍺  /opt/homebrew/Cellar/maven/3.8.6: 78 files, 9.7MB
==> Running `brew cleanup maven`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /opt/homebrew/Cellar/maven/3.8.5... (78 files, 9.7MB)
Removing: /Users/siri/Library/Caches/Homebrew/maven--3.8.5... (8.3MB)


plugins=(git vscode mvn)



siri@siris-MacBook-Pro:~/shfmt|main⚡ ⇒  mvn --version
Apache Maven 3.8.6 (84538c9988a25aec085021c365c560670ad80f63)
Maven home: /opt/homebrew/Cellar/maven/3.8.6/libexec
Java version: 11.0.15, vendor: Homebrew, runtime: /opt/homebrew/Cellar/openjdk@11/11.0.15/libexec/openjdk.jdk/Contents/Home
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "12.4", arch: "aarch64", family: "mac"
```