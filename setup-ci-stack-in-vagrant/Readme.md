# Setup CI Stack in Vagrant


a) As 3 Vagrant Boxes - Each having 1 CI tool, Bootstrapped via Shell Provisioner

Tools can start on the default ports 8080- Jenkins, 8081-Artifactory (Version 6). 9000 Sonarqube

- Jenkins (Vagrantfile)[jenkins/Vagrantfile] (Shell Provisioner)[jenkins/jenkins.sh] 
- SonarQube (Vagrantfile)[sonarqube/Vagrantfile] (Shell Provisioner)[artifactory/sonarqube.sh] 
- Artifactory (Vagrantfile)[artifactory/Vagrantfile] (Shell Provisioner)[artifactory/artifactory.sh] 
- (Screenshots)[screenshots/]

### Jenkins Vagrant Up
```
siri@siris-MacBook-Pro:setup-ci-stack-in-vagrant siri$ cd jenkins/
siri@siris-MacBook-Pro:jenkins siri$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'ubuntu/xenial64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'ubuntu/xenial64' version '20211001.0.0' is up to date...
==> default: Setting the name of the VM: jenkins_vagrant
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 8080 (guest) => 8080 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: Warning: Connection reset. Retrying...
    default: Warning: Remote connection disconnect. Retrying...
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default: 
    default: Guest Additions Version: 5.1.38
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => /Users/siri/assignments/setup-ci-stack-in-vagrant/jenkins
==> default: Running provisioner: shell...
    default: Running: /var/folders/qf/dc80cr212fnbn5wwxn2y9vph0000gn/T/vagrant-shell20220616-15912-iofuml.sh
    default: Adding apt-keys
    default: OK
    default: deb http://pkg.jenkins.io/debian-stable binary/
    default: Updating apt-get
    default: Installing default-java
    default: Installing git
    default: Installing git-ftp
    default: Installing jenkins

    default: Installing Jenkins Plugins
    default: JENKINS_ADMIN_PWD
```
### SonarQube Vagrant Up
```
siri@siris-MacBook-Pro:setup-ci-stack-in-vagrant siri$ cd sonarqube/
siri@siris-MacBook-Pro:sonarqube siri$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'centos/7'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'centos/7' version '2004.01' is up to date...
==> default: Setting the name of the VM: sonarqube_vagrant
==> default: Fixed port collision for 22 => 2222. Now on port 2200.
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 9000 (guest) => 9000 (host) (adapter 1)
    default: 22 (guest) => 2200 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2200
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: No guest additions were detected on the base box for this VM! Guest
    default: additions are required for forwarded ports, shared folders, host only
    default: networking, and more. If SSH fails on this machine, please install
    default: the guest additions and repackage the box to continue.
    default: 
    default: This is not an error message; everything may continue to work properly,
    default: in which case you may ignore this message.
==> default: Rsyncing folder: /Users/siri/assignments/setup-ci-stack-in-vagrant/sonarqube/ => /vagrant
==> default: Running provisioner: shell...
    default: Running: /var/folders/qf/dc80cr212fnbn5wwxn2y9vph0000gn/T/vagrant-shell20220616-16269-19s8iw9.sh
    default: Loaded plugins: fastestmirror
    default: Determining fastest mirrors
    default:  * base: mirrors.xtom.com
    default:  * extras: mirrors.oit.uci.edu
    default:  * updates: mirrors.ocf.berkeley.edu
    default: Resolving Dependencies
    default: --> Running transaction check
    default: ---> Package java-11-openjdk-devel.x86_64 1:11.0.15.0.9-2.el7_9 will be installed
    default: --> Processing Dependency: java-11-openjdk(x86-64) = 1:11.0.15.0.9-2.el7_9 for package: 1:java-11-openjdk-devel-11.0.15.0.9-2.el7_9.x86_64
    default: ---> Package unzip.x86_64 0:6.0-24.el7_9 will be installed
    default: ---> Package wget.x86_64 0:1.14-18.el7_6.1 will be installed
    default: --> Running transaction check
    default: ---> Package java-11-openjdk.x86_64 1:11.0.15.0.9-2.el7_9 will be installed
    default: --> Processing Dependency: java-11-openjdk-headless(x86-64) = 1:11.0.15.0.9-2.el7_9 for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: xorg-x11-fonts-Type1 for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libjpeg.so.62(LIBJPEG_6.2)(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: fontconfig(x86-64) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libjvm.so()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libjpeg.so.62()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libjava.so()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libgif.so.4()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libXtst.so.6()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libXrender.so.1()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libXi.so.6()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libXext.so.6()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libX11.so.6()(64bit) for package: 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64
    default: --> Running transaction check
    default: ---> Package fontconfig.x86_64 0:2.13.0-4.3.el7 will be installed
    default: --> Processing Dependency: fontpackages-filesystem for package: fontconfig-2.13.0-4.3.el7.x86_64
    default: --> Processing Dependency: dejavu-sans-fonts for package: fontconfig-2.13.0-4.3.el7.x86_64
    default: ---> Package giflib.x86_64 0:4.1.6-9.el7 will be installed
    default: --> Processing Dependency: libSM.so.6()(64bit) for package: giflib-4.1.6-9.el7.x86_64
    default: --> Processing Dependency: libICE.so.6()(64bit) for package: giflib-4.1.6-9.el7.x86_64
    default: ---> Package java-11-openjdk-headless.x86_64 1:11.0.15.0.9-2.el7_9 will be installed
    default: --> Processing Dependency: tzdata-java >= 2020f for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: copy-jdk-configs >= 3.3 for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: pcsc-lite-libs(x86-64) for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: lksctp-tools(x86-64) for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libasound.so.2(ALSA_0.9.0rc4)(64bit) for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libasound.so.2(ALSA_0.9)(64bit) for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: javapackages-tools for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: --> Processing Dependency: libasound.so.2()(64bit) for package: 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64
    default: ---> Package libX11.x86_64 0:1.6.7-4.el7_9 will be installed
    default: --> Processing Dependency: libX11-common >= 1.6.7-4.el7_9 for package: libX11-1.6.7-4.el7_9.x86_64
    default: --> Processing Dependency: libxcb.so.1()(64bit) for package: libX11-1.6.7-4.el7_9.x86_64
    default: ---> Package libXext.x86_64 0:1.3.3-3.el7 will be installed
    default: ---> Package libXi.x86_64 0:1.7.9-1.el7 will be installed
    default: ---> Package libXrender.x86_64 0:0.9.10-1.el7 will be installed
    default: ---> Package libXtst.x86_64 0:1.2.3-1.el7 will be installed
    default: ---> Package libjpeg-turbo.x86_64 0:1.2.90-8.el7 will be installed
    default: ---> Package xorg-x11-fonts-Type1.noarch 0:7.5-9.el7 will be installed
    default: --> Processing Dependency: ttmkfdir for package: xorg-x11-fonts-Type1-7.5-9.el7.noarch
    default: --> Processing Dependency: ttmkfdir for package: xorg-x11-fonts-Type1-7.5-9.el7.noarch
    default: --> Processing Dependency: mkfontdir for package: xorg-x11-fonts-Type1-7.5-9.el7.noarch
    default: --> Processing Dependency: mkfontdir for package: xorg-x11-fonts-Type1-7.5-9.el7.noarch
    default: --> Running transaction check
    default: ---> Package alsa-lib.x86_64 0:1.1.8-1.el7 will be installed
    default: ---> Package copy-jdk-configs.noarch 0:3.3-10.el7_5 will be installed
    default: ---> Package dejavu-sans-fonts.noarch 0:2.33-6.el7 will be installed
    default: --> Processing Dependency: dejavu-fonts-common = 2.33-6.el7 for package: dejavu-sans-fonts-2.33-6.el7.noarch
    default: ---> Package fontpackages-filesystem.noarch 0:1.44-8.el7 will be installed
    default: ---> Package javapackages-tools.noarch 0:3.4.1-11.el7 will be installed
    default: --> Processing Dependency: python-javapackages = 3.4.1-11.el7 for package: javapackages-tools-3.4.1-11.el7.noarch
    default: ---> Package libICE.x86_64 0:1.0.9-9.el7 will be installed
    default: ---> Package libSM.x86_64 0:1.2.2-2.el7 will be installed
    default: ---> Package libX11-common.noarch 0:1.6.7-4.el7_9 will be installed
    default: ---> Package libxcb.x86_64 0:1.13-1.el7 will be installed
    default: --> Processing Dependency: libXau.so.6()(64bit) for package: libxcb-1.13-1.el7.x86_64
    default: ---> Package lksctp-tools.x86_64 0:1.0.17-2.el7 will be installed
    default: ---> Package pcsc-lite-libs.x86_64 0:1.8.8-8.el7 will be installed
    default: ---> Package ttmkfdir.x86_64 0:3.0.9-42.el7 will be installed
    default: ---> Package tzdata-java.noarch 0:2022a-1.el7 will be installed
    default: ---> Package xorg-x11-font-utils.x86_64 1:7.5-21.el7 will be installed
    default: --> Processing Dependency: libfontenc.so.1()(64bit) for package: 1:xorg-x11-font-utils-7.5-21.el7.x86_64
    default: --> Running transaction check
    default: ---> Package dejavu-fonts-common.noarch 0:2.33-6.el7 will be installed
    default: ---> Package libXau.x86_64 0:1.0.8-2.1.el7 will be installed
    default: ---> Package libfontenc.x86_64 0:1.1.3-3.el7 will be installed
    default: ---> Package python-javapackages.noarch 0:3.4.1-11.el7 will be installed
    default: --> Processing Dependency: python-lxml for package: python-javapackages-3.4.1-11.el7.noarch
    default: --> Running transaction check
    default: ---> Package python-lxml.x86_64 0:3.2.1-4.el7 will be installed
    default: --> Finished Dependency Resolution
    default: 
    default: Dependencies Resolved
    default: 
    default: ================================================================================
    default:  Package                    Arch     Version                    Repository
    default:                                                                            Size
    default: ================================================================================
    default: Installing:
    default:  java-11-openjdk-devel      x86_64   1:11.0.15.0.9-2.el7_9      updates   3.4 M
    default:  unzip                      x86_64   6.0-24.el7_9               updates   172 k
    default:  wget                       x86_64   1.14-18.el7_6.1            base      547 k
    default: Installing for dependencies:
    default:  alsa-lib                   x86_64   1.1.8-1.el7                base      425 k
    default:  copy-jdk-configs           noarch   3.3-10.el7_5               base       21 k
    default:  dejavu-fonts-common        noarch   2.33-6.el7                 base       64 k
    default:  dejavu-sans-fonts          noarch   2.33-6.el7                 base      1.4 M
    default:  fontconfig                 x86_64   2.13.0-4.3.el7             base      254 k
    default:  fontpackages-filesystem    noarch   1.44-8.el7                 base      9.9 k
    default:  giflib                     x86_64   4.1.6-9.el7                base       40 k
    default:  java-11-openjdk            x86_64   1:11.0.15.0.9-2.el7_9      updates   235 k
    default:  java-11-openjdk-headless   x86_64   1:11.0.15.0.9-2.el7_9      updates    39 M
    default:  javapackages-tools         noarch   3.4.1-11.el7               base       73 k
    default:  libICE                     x86_64   1.0.9-9.el7                base       66 k
    default:  libSM                      x86_64   1.2.2-2.el7                base       39 k
    default:  libX11                     x86_64   1.6.7-4.el7_9              updates   607 k
    default:  libX11-common              noarch   1.6.7-4.el7_9              updates   164 k
    default:  libXau                     x86_64   1.0.8-2.1.el7              base       29 k
    default:  libXext                    x86_64   1.3.3-3.el7                base       39 k
    default:  libXi                      x86_64   1.7.9-1.el7                base       40 k
    default:  libXrender                 x86_64   0.9.10-1.el7               base       26 k
    default:  libXtst                    x86_64   1.2.3-1.el7                base       20 k
    default:  libfontenc                 x86_64   1.1.3-3.el7                base       31 k
    default:  libjpeg-turbo              x86_64   1.2.90-8.el7               base      135 k
    default:  libxcb                     x86_64   1.13-1.el7                 base      214 k
    default:  lksctp-tools               x86_64   1.0.17-2.el7               base       88 k
    default:  pcsc-lite-libs             x86_64   1.8.8-8.el7                base       34 k
    default:  python-javapackages        noarch   3.4.1-11.el7               base       31 k
    default:  python-lxml                x86_64   3.2.1-4.el7                base      758 k
    default:  ttmkfdir                   x86_64   3.0.9-42.el7               base       48 k
    default:  tzdata-java                noarch   2022a-1.el7                updates   190 k
    default:  xorg-x11-font-utils        x86_64   1:7.5-21.el7               base      104 k
    default:  xorg-x11-fonts-Type1       noarch   7.5-9.el7                  base      521 k
    default: 
    default: Transaction Summary
    default: ================================================================================
    default: Install  3 Packages (+30 Dependent packages)
    default: Total download size: 49 M
    default: Installed size: 190 M
    default: Downloading packages:
    default: Public key for copy-jdk-configs-3.3-10.el7_5.noarch.rpm is not installed
    default: warning: /var/cache/yum/x86_64/7/base/packages/copy-jdk-configs-3.3-10.el7_5.noarch.rpm: Header V3 RSA/SHA256 Signature, key ID f4a80eb5: NOKEY
    default: Public key for java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64.rpm is not installed
    default: --------------------------------------------------------------------------------
    default: Total                                               23 MB/s |  49 MB  00:02     
    default: Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
    default: Importing GPG key 0xF4A80EB5:
    default:  Userid     : "CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org>"
    default:  Fingerprint: 6341 ab27 53d7 8a78 a7c2 7bb1 24c6 a8a7 f4a8 0eb5
    default:  Package    : centos-release-7-8.2003.0.el7.centos.x86_64 (@anaconda)
    default:  From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
    default: Running transaction check
    default: Running transaction test
    default: Transaction test succeeded
    default: Running transaction
    default:   Installing : libjpeg-turbo-1.2.90-8.el7.x86_64                           1/33
    default:  
    default:   Installing : fontpackages-filesystem-1.44-8.el7.noarch                   2/33
    default:  
    default:   Installing : libICE-1.0.9-9.el7.x86_64                                   3/33
    default:  
    default:   Installing : libSM-1.2.2-2.el7.x86_64                                    4/33
    default:  
    default:   Installing : dejavu-fonts-common-2.33-6.el7.noarch                       5/33
    default:  
    default:   Installing : dejavu-sans-fonts-2.33-6.el7.noarch                         6/33
    default:  
    default:   Installing : fontconfig-2.13.0-4.3.el7.x86_64                            7/33
    default:  
    default:   Installing : libX11-common-1.6.7-4.el7_9.noarch                          8/33
    default:  
    default:   Installing : libfontenc-1.1.3-3.el7.x86_64                               9/33
    default:  
    default:   Installing : 1:xorg-x11-font-utils-7.5-21.el7.x86_64                    10/33
    default:  
    default:   Installing : libXau-1.0.8-2.1.el7.x86_64                                11/33
    default:  
    default:   Installing : libxcb-1.13-1.el7.x86_64                                   12/33
    default:  
    default:   Installing : libX11-1.6.7-4.el7_9.x86_64                                13/33
    default:  
    default:   Installing : libXext-1.3.3-3.el7.x86_64                                 14/33
    default:  
    default:   Installing : libXi-1.7.9-1.el7.x86_64                                   15/33
    default:  
    default:   Installing : libXtst-1.2.3-1.el7.x86_64                                 16/33
    default:  
    default:   Installing : giflib-4.1.6-9.el7.x86_64                                  17/33
    default:  
    default:   Installing : libXrender-0.9.10-1.el7.x86_64                             18/33
    default:  
    default:   Installing : tzdata-java-2022a-1.el7.noarch                             19/33
    default:  
    default:   Installing : pcsc-lite-libs-1.8.8-8.el7.x86_64                          20/33
    default:  
    default:   Installing : lksctp-tools-1.0.17-2.el7.x86_64                           21/33
    default:  
    default:   Installing : copy-jdk-configs-3.3-10.el7_5.noarch                       22/33
    default:  
    default:   Installing : alsa-lib-1.1.8-1.el7.x86_64                                23/33
    default:  
    default:   Installing : ttmkfdir-3.0.9-42.el7.x86_64                               24/33
    default:  
    default:   Installing : xorg-x11-fonts-Type1-7.5-9.el7.noarch                      25/33
    default:  
    default:   Installing : python-lxml-3.2.1-4.el7.x86_64                             26/33
    default:  
    default:   Installing : python-javapackages-3.4.1-11.el7.noarch                    27/33
    default:  
    default:   Installing : javapackages-tools-3.4.1-11.el7.noarch                     28/33
    default:  
    default:   Installing : 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64      29/33
    default:  
    default:   Installing : 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64               30/33
    default:  
    default:   Installing : 1:java-11-openjdk-devel-11.0.15.0.9-2.el7_9.x86_64         31/33
    default:  
    default:   Installing : wget-1.14-18.el7_6.1.x86_64                                32/33
    default:  
    default:   Installing : unzip-6.0-24.el7_9.x86_64                                  33/33
    default:  
    default:   Verifying  : libXext-1.3.3-3.el7.x86_64                                  1/33
    default:  
    default:   Verifying  : libXi-1.7.9-1.el7.x86_64                                    2/33
    default:  
    default:   Verifying  : fontconfig-2.13.0-4.3.el7.x86_64                            3/33
    default:  
    default:   Verifying  : giflib-4.1.6-9.el7.x86_64                                   4/33
    default:  
    default:   Verifying  : libXrender-0.9.10-1.el7.x86_64                              5/33
    default:  
    default:   Verifying  : 1:xorg-x11-font-utils-7.5-21.el7.x86_64                     6/33
    default:  
    default:   Verifying  : python-lxml-3.2.1-4.el7.x86_64                              7/33
    default:  
    default:   Verifying  : unzip-6.0-24.el7_9.x86_64                                   8/33
    default:  
    default:   Verifying  : libICE-1.0.9-9.el7.x86_64                                   9/33
    default:  
    default:   Verifying  : fontpackages-filesystem-1.44-8.el7.noarch                  10/33
    default:  
    default:   Verifying  : ttmkfdir-3.0.9-42.el7.x86_64                               11/33
    default:  
    default:   Verifying  : alsa-lib-1.1.8-1.el7.x86_64                                12/33
    default:  
    default:   Verifying  : copy-jdk-configs-3.3-10.el7_5.noarch                       13/33
    default:  
    default:   Verifying  : python-javapackages-3.4.1-11.el7.noarch                    14/33
    default:  
    default:   Verifying  : dejavu-fonts-common-2.33-6.el7.noarch                      15/33
    default:  
    default:   Verifying  : 1:java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64               16/33
    default:  
    default:   Verifying  : libXtst-1.2.3-1.el7.x86_64                                 17/33
    default:  
    default:   Verifying  : libxcb-1.13-1.el7.x86_64                                   18/33
    default:  
    default:   Verifying  : lksctp-tools-1.0.17-2.el7.x86_64                           19/33
    default:  
    default:   Verifying  : libjpeg-turbo-1.2.90-8.el7.x86_64                          20/33
    default:  
    default:   Verifying  : xorg-x11-fonts-Type1-7.5-9.el7.noarch                      21/33
    default:  
    default:   Verifying  : dejavu-sans-fonts-2.33-6.el7.noarch                        22/33
    default:  
    default:   Verifying  : pcsc-lite-libs-1.8.8-8.el7.x86_64                          23/33
    default:  
    default:   Verifying  : javapackages-tools-3.4.1-11.el7.noarch                     24/33
    default:  
    default:   Verifying  : 1:java-11-openjdk-headless-11.0.15.0.9-2.el7_9.x86_64      25/33
    default:  
    default:   Verifying  : tzdata-java-2022a-1.el7.noarch                             26/33
    default:  
    default:   Verifying  : libXau-1.0.8-2.1.el7.x86_64                                27/33
    default:  
    default:   Verifying  : libSM-1.2.2-2.el7.x86_64                                   28/33
    default:  
    default:   Verifying  : libX11-1.6.7-4.el7_9.x86_64                                29/33
    default:  
    default:   Verifying  : 1:java-11-openjdk-devel-11.0.15.0.9-2.el7_9.x86_64         30/33
    default:  
    default:   Verifying  : wget-1.14-18.el7_6.1.x86_64                                31/33
    default:  
    default:   Verifying  : libfontenc-1.1.3-3.el7.x86_64                              32/33
    default:  
    default:   Verifying  : libX11-common-1.6.7-4.el7_9.noarch                         33/33
    default:  
    default: 
    default: Installed:
    default:   java-11-openjdk-devel.x86_64 1:11.0.15.0.9-2.el7_9                            
    default:   unzip.x86_64 0:6.0-24.el7_9                                                   
    default:   wget.x86_64 0:1.14-18.el7_6.1                                                 
    default: 
    default: Dependency Installed:
    default:   alsa-lib.x86_64 0:1.1.8-1.el7                                                 
    default:   copy-jdk-configs.noarch 0:3.3-10.el7_5                                        
    default:   dejavu-fonts-common.noarch 0:2.33-6.el7                                       
    default:   dejavu-sans-fonts.noarch 0:2.33-6.el7                                         
    default:   fontconfig.x86_64 0:2.13.0-4.3.el7                                            
    default:   fontpackages-filesystem.noarch 0:1.44-8.el7                                   
    default:   giflib.x86_64 0:4.1.6-9.el7                                                   
    default:   java-11-openjdk.x86_64 1:11.0.15.0.9-2.el7_9                                  
    default:   java-11-openjdk-headless.x86_64 1:11.0.15.0.9-2.el7_9                         
    default:   javapackages-tools.noarch 0:3.4.1-11.el7                                      
    default:   libICE.x86_64 0:1.0.9-9.el7                                                   
    default:   libSM.x86_64 0:1.2.2-2.el7                                                    
    default:   libX11.x86_64 0:1.6.7-4.el7_9                                                 
    default:   libX11-common.noarch 0:1.6.7-4.el7_9                                          
    default:   libXau.x86_64 0:1.0.8-2.1.el7                                                 
    default:   libXext.x86_64 0:1.3.3-3.el7                                                  
    default:   libXi.x86_64 0:1.7.9-1.el7                                                    
    default:   libXrender.x86_64 0:0.9.10-1.el7                                              
    default:   libXtst.x86_64 0:1.2.3-1.el7                                                  
    default:   libfontenc.x86_64 0:1.1.3-3.el7                                               
    default:   libjpeg-turbo.x86_64 0:1.2.90-8.el7                                           
    default:   libxcb.x86_64 0:1.13-1.el7                                                    
    default:   lksctp-tools.x86_64 0:1.0.17-2.el7                                            
    default:   pcsc-lite-libs.x86_64 0:1.8.8-8.el7                                           
    default:   python-javapackages.noarch 0:3.4.1-11.el7                                     
    default:   python-lxml.x86_64 0:3.2.1-4.el7                                              
    default:   ttmkfdir.x86_64 0:3.0.9-42.el7                                                
    default:   tzdata-java.noarch 0:2022a-1.el7                                              
    default:   xorg-x11-font-utils.x86_64 1:7.5-21.el7                                       
    default:   xorg-x11-fonts-Type1.noarch 0:7.5-9.el7                                       
    default: Complete!
    default: --2022-06-16 07:10:02--  https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
    default: Resolving binaries.sonarsource.com (binaries.sonarsource.com)... 
    default: 13.224.2.2, 13.224.2.43, 13.224.2.22, ...
    default: Connecting to binaries.sonarsource.com (binaries.sonarsource.com)|13.224.2.2|:443... 
    default: connected.
    default: HTTP request sent, awaiting response... 
    default: 200 OK
    default: Length: 276912542 (264M) [application/zip]
    default: Saving to: ‘sonarqube-9.3.0.51899.zip’
    default: 245750K .......... .......... .......... .......... .......... 90%  146M 1s
    default: 245800K .......... 
    default: ...
    default: Archive:  sonarqube-9.3.0.51899.zip
    default:    creating: /opt/sonarqube-9.3.0.51899/
    default:   inflating: /opt/sonarqube-9.3.0.51899/dependency-license.json  
    default:    creating: /opt/sonarqube-9.3.0.51899/temp/
    default:   inflating: /opt/sonarqube-9.3.0.51899/temp/README.txt  
    default:   inflating: /opt/sonarqube-9.3.0.51899/COPYING  
    default:    creating: /opt/sonarqube-9.3.0.51899/data/
    default:   inflating: /opt/sonarqube-9.3.0.51899/data/README.txt  
    default:    creating: /opt/sonarqube-9.3.0.51899/logs/
    default:   inflating: /opt/sonarqube-9.3.0.51899/logs/README.txt  
    default:    creating: /opt/sonarqube-9.3.0.51899/extensions/
    default:    creating: /opt/sonarqube-9.3.0.51899/extensions/plugins/
    default:   inflating: /opt/sonarqube-9.3.0.51899/extensions/plugins/README.txt  
    default:    creating: /opt/sonarqube-9.3.0.51899/extensions/jdbc-driver/
    default:    creating: /opt/sonarqube-9.3.0.51899/extensions/jdbc-driver/oracle/
    default:   inflating: /opt/sonarqube-9.3.0.51899/extensions/jdbc-driver/oracle/README.txt  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/StopNTService.bat  
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/StartNTService.bat  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/lib/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/lib/wrapper.dll  
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/StartSonar.bat  
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/windows-x86-64/wrapper.exe  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/macosx-universal-64/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/macosx-universal-64/wrapper  
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/macosx-universal-64/sonar.sh  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/macosx-universal-64/lib/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/macosx-universal-64/lib/libwrapper.jnilib  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/wrapper  
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/sonar.sh  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/lib/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/lib/libwrapper.so  
    default:    creating: /opt/sonarqube-9.3.0.51899/bin/jsw-license/
    default:   inflating: /opt/sonarqube-9.3.0.51899/bin/jsw-license/LICENSE.txt  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/java-version-checker-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-launchers-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-x-content-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-lz4-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-cli-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-core-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-secure-sm-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-geo-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-core-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-analyzers-common-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-backward-codecs-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-grouping-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-highlighter-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-join-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-memory-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-misc-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-queries-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-queryparser-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-sandbox-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-spatial3d-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lucene-suggest-8.10.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/hppc-0.8.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/joda-time-2.10.10.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/t-digest-3.2.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/HdrHistogram-2.1.9.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/log4j-api-2.17.1.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-log4j-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/jna-5.10.0.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/elasticsearch-plugin-classloader-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/snakeyaml-1.26.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/jackson-core-2.10.4.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/jackson-dataformat-smile-2.10.4.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/jackson-dataformat-yaml-2.10.4.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/jackson-dataformat-cbor-2.10.4.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/lz4-java-1.8.0.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/lib/jopt-simple-5.0.2.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/log4j2.properties  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/roles.yml  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/role_mapping.yml  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/users_roles  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/users  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/elasticsearch-plugins.example.yml  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/jvm.options  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/config/elasticsearch.yml  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/bin/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/bin/elasticsearch-env-from-file  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/bin/elasticsearch-env  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/README.asciidoc  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/LICENSE.txt  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/NOTICE.txt  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/transport-netty4-client-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-codec-4.1.66.Final.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/plugin-security.policy  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-common-4.1.66.Final.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-codec-http-4.1.66.Final.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-buffer-4.1.66.Final.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/plugin-descriptor.properties  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-resolver-4.1.66.Final.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-transport-4.1.66.Final.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/transport-netty4/netty-handler-4.1.66.Final.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/asm-analysis-7.2.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/plugin-security.policy  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/asm-7.2.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/plugin-descriptor.properties  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/asm-tree-7.2.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/spi/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/spi/elasticsearch-scripting-painless-spi-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/lang-painless-7.16.3.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/asm-util-7.2.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/asm-commons-7.2.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/lang-painless/antlr4-runtime-4.5.3.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/parent-join/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/parent-join/plugin-descriptor.properties  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/parent-join/parent-join-client-7.16.3.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/analysis-common/
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/analysis-common/plugin-descriptor.properties  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/modules/analysis-common/analysis-common-7.16.3.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/conf/
    default:   inflating: /opt/sonarqube-9.3.0.51899/conf/sonar.properties  
    default:   inflating: /opt/sonarqube-9.3.0.51899/conf/wrapper.conf  
    default:   inflating: /opt/sonarqube-9.3.0.51899/elasticsearch/bin/elasticsearch  
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/extensions/
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-csharp-plugin-8.34.0.42011.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-vbnet-plugin-8.34.0.42011.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-flex-plugin-2.7.0.2865.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-html-plugin-3.6.0.3106.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-java-plugin-7.7.0.28547.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-jacoco-plugin-1.1.1.1157.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-javascript-plugin-8.8.0.17228.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-php-plugin-3.22.1.8626.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-python-plugin-3.9.0.9230.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-go-plugin-1.9.0.3429.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-kotlin-plugin-2.9.0.1147.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-ruby-plugin-1.9.0.3429.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-scala-plugin-1.9.0.3429.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-xml-plugin-2.5.0.3376.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-config-plugin-1.2.0.267.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-iac-plugin-1.5.0.1600.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/extensions/sonar-text-plugin-1.0.0.120.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/jsw/
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/jsw/wrapper-3.2.3.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/scanner/
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/scanner/sonar-scanner-engine-shaded-9.3.0.51899-all.jar 
    default: 
    default: 2022-06-16 07:10:09 (46.4 MB/s) - ‘sonarqube-9.3.0.51899.zip’ saved [276912542/276912542]
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/sonar-application-9.3.0.51899.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/logo.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/WEB-INF/
    default:    creating: /opt/sonarqube-9.3.0.51899/web/WEB-INF/classes/
    default:    creating: /opt/sonarqube-9.3.0.51899/web/WEB-INF/classes/com/
    default:    creating: /opt/sonarqube-9.3.0.51899/web/WEB-INF/classes/com/sonarsource/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/WEB-INF/classes/com/sonarsource/branding  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon.png  
    default: 
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-precomposed.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/.htaccess  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/js/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/js/out4M6KGJKN.css  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/js/out4M6KGJKN.css.map  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/js/outEQTYL4IQ.js  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/js/outEQTYL4IQ.js.map  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-152x152.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-180x180.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/github.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/sonarcloud-logo.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/select2.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/sonarcloud-logo-white.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/twitter-icon.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/sq-icon.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/http-header-authentication.png  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alerts/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alerts/info.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alerts/danger.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alerts/wrong.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/creatingportfoliosandapps.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/add-github-project.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/version.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/inclusions.jpg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/sources.jpg  
    default: 
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/exclamation.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/executable-lines-python-exception.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/rule-template-details.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/AzurePipelinesAnalysis.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/SQ-instance-components.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/webapi.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/open.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/exclusions.jpg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/activate_rule_compare1.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/encrypt-value.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/rule-templates.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/info.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alm/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alm/github.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alm/azure.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alm/bitbucket.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/alm/gitlab.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/commit-info-in-code-viewer.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/github-branch-decoration.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/sonarqube-icon.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/add-bitbucket-project.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/create_application.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/backgroundTaskProcessingFailedIcon.jpeg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/support-information-file.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/check.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/add-gitlab-project.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/sonarsource-icon.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/newspaper.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/cluster-dce.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/dev-cycle.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/youtube.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/close.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/long-lived-branch-concept.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/successfulproject.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/astSample.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/jenkins-maven-setup.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/community.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/missing-table-warning.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/truncate-tables.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/missing-table-not-copied.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/search-tables.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/copy-errors-shown.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/summary-of-differences.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/copy-data.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/missing-table-not-purged.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/verify-versions.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/version0-ok.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/db-copy/verify-urls.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/gear.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/cross.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/architecture-integrate.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/quality-gate-status.jpeg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/add-ADO-project.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/SonarQubeIcon.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/visualizations.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/pranalysis.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/short-lived-branch-concept.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/backgroundTaskProcessingInProgress.jpeg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/rules-custom.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/architecture-scanning.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/embed-doc/images/twitter.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/project_badges/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/project_badges/sonarcloud-orange.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/project_badges/sonarcloud-white.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/project_badges/sonarcloud-black.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/sonarcloud-logo-black.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/select2x2.png  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/refresh.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/jenkins.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/github-actions.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/manual.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/commit.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/tutorials/azure-pipelines.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/gitlab-icon-rgb.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/source-code.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/languages/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/php.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/cobol.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/java.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/plsql.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/t-sql.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/ts.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/html5.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/pl-sql.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/apex.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/tsql.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/ruby.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/abap.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/obj-c.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/csharp.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/swift.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/flex.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/kotlin.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/flex.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/c-c-plus-plus.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/flex@2x.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/xml.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/c-plus.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/go.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/js.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/vb.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/python.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/css.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/scala.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/languages/c-sharp.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/hotspot-large.svg  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/alm/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/alm/github.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/alm/azure.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/alm/bitbucket.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/alm/gitlab.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/alm/bitbucket-white.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/sq-sl.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/filter-large.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/saml.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/sonarcloud-square-logo.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/loading.gif  
    default:    creating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/msbuild.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/maven.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/ant.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/jenkins.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/sonarqube.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/scanner-logos/gradle.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/images/activity-chart.svg  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/favicon.ico  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-120x120.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-76x76.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/index.html  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-72x72.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-57x57.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/mstile-512x512.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/robots.txt  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-144x144.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-114x114.png  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/WEB-INF/web.xml  
    default:   inflating: /opt/sonarqube-9.3.0.51899/web/apple-touch-icon-60x60.png  
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/jdbc/
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/jdbc/mssql/
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/jdbc/mssql/mssql-jdbc-9.4.1.jre11.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/jdbc/postgresql/
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/jdbc/postgresql/postgresql-42.3.1.jar  
    default: 
    default:    creating: /opt/sonarqube-9.3.0.51899/lib/jdbc/h2/
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/jdbc/h2/h2-1.4.199.jar  
    default:   inflating: /opt/sonarqube-9.3.0.51899/lib/sonar-shutdowner-9.3.0.51899.jar  
    default:    creating: /opt/sonarqube-9.3.0.51899/elasticsearch/plugins/
    default: Redirecting to /bin/systemctl start sonar.service
    default: --2022-06-16 07:10:12--  https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.7.0.2747-linux.zip
    default: Resolving binaries.sonarsource.com (binaries.sonarsource.com)... 
    default: 13.224.2.43, 13.224.2.7, 13.224.2.22, ...
    default: Connecting to binaries.sonarsource.com (binaries.sonarsource.com)|13.224.2.43|:443... 
    default: connected.
    default: HTTP request sent, awaiting response... 
    default: 200 OK
    default: Length: 43162003 (41M) [application/zip]
    default: Saving to: ‘sonar-scanner-cli-4.7.0.2747-linux.zip’
    default: 
    default:      0K .....
    default: ..... ........
    default: .. ......
    default: .... .......
    default: ... ..........  0% 1.29M 32s
    default:  42150K                                                       100%  751G=1.4s
    default: 2022-06-16 07:10:14 (30.4 MB/s) - ‘sonar-scanner-cli-4.7.0.2747-linux.zip’ saved [43162003/43162003]
    default: Archive:  sonar-scanner-cli-4.7.0.2747-linux.zip
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/limited/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/unlimited/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/management/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jfr/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/security/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/server/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jli/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/jre/bin/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/lib/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/conf/
    default:    creating: /opt/sonar-scanner-4.7.0.2747-linux/bin/
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/NOTICE  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/release  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/jline.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/santuario.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/ecc.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/LICENSE  
    default: -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/pkcs11wrapper.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/pkcs11cryptotoken.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/harfbuzz.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/libpng.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/colorimaging.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/mesa3d.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/jpeg.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/xwd.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/lcms.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/giflib.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/double-conversion.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/joni.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/pcsclite.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/xalan.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/dom.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/jcup.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/bcel.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/xerces.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/ASSEMBLY_EXCEPTION  
    default: -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/dynalink.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/cldr.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/c-libutl.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/aes.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/LICENSE  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/public_suffix.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/ADDITIONAL_LICENSE_INFO  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/unicode.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/icu.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/asm.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.base/ASSEMBLY_EXCEPTION  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/cldr.md  -> ../java.base/cldr.md 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/thaidict.md  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/LICENSE  -> ../java.base/LICENSE 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/ADDITIONAL_LICENSE_INFO  -> ../java.base/ADDITIONAL_LICENSE_INFO 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/ASSEMBLY_EXCEPTION  -> ../java.base/ASSEMBLY_EXCEPTION 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/sound.properties  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/java.security  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/java.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/limited/default_local.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/limited/default_US_export.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/limited/exempt_local.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/README.txt  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/unlimited/default_local.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/security/policy/unlimited/default_US_export.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/logging.properties  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/net.properties  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/management/management.properties  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/management/jmxremote.access  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/conf/management/jmxremote.password.template  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjdwp.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jspawnhelper  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libawt_xawt.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jexec  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libmanagement.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libj2pcsc.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jfr/default.jfc  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jfr/profile.jfc  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/security/cacerts  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/security/blocked.certs  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/security/public_suffix_list.dat  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/security/default.policy  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libextnet.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libsplashscreen.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libprefs.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libsctp.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjavajpeg.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libj2pkcs11.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/librmi.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libsunec.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libverify.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/server/libjsig.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/server/libjvm.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/server/Xusage.txt  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjsig.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libinstrument.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjawt.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libnio.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libawt.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libmlib_image.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libj2gss.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjava.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libunpack.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jvm.cfg  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/liblcms.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libdt_socket.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libawt_headless.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/classlist  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libmanagement_ext.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/modules  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libmanagement_agent.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libzip.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/tzdb.dat  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/psfontj2d.properties  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/psfont.properties.ja  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jrt-fs.jar  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libfontmanager.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjaas.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjsound.so  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/jli/libjli.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libnet.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/lib/libjimage.so  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/jre/bin/java  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/lib/sonar-scanner-cli-4.7.0.2747.jar  
    default: 
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/conf/sonar-scanner.properties  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner-debug  
    default:   inflating: /opt/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner  
    default: finishing deferred symbolic links:
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.compiler/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.datatransfer/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.jfr/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.xml.dom/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.logging/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.ed/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.auth/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.le/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.se/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.scripting/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jdwp.agent/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml.crypto/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.ec/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.accessibility/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn.shell/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.naming/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management.agent/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.sasl/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.crypto.cryptoki/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.transaction.xa/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.desktop/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.scripting.nashorn/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.smartcardio/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.instrument/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.sctp/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.aot/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.security.jgss/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.xml/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.rmi/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.zipfs/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.management/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.prefs/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.security.jgss/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.pack/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.dns/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jfr/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.rmi/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.unsupported/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.httpserver/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.management.rmi/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.dynalink/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.net.http/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.naming.ldap/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.charsets/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.net/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.jsobject/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/java.sql.rowset/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.ci/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/cldr.md -> ../java.base/cldr.md
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.localedata/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/LICENSE -> ../java.base/LICENSE
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/ADDITIONAL_LICENSE_INFO -> ../java.base/ADDITIONAL_LICENSE_INFO
    default:   /opt/sonar-scanner-4.7.0.2747-linux/jre/legal/jdk.internal.vm.compiler.management/ASSEMBLY_EXCEPTION -> ../java.base/ASSEMBLY_EXCEPTION
    default: export PATH=$PATH:/opt/sonar-scanner-4.7.0.2747-linux/bin
    default: 
    default: ================================================================================
    default: ================================================================================
    default: 
    default:                               DEPRECATION WARNING                            
    default: 
    default:   Node.js 10.x is no longer actively supported!
    default: 
    default:   You will not receive security or critical stability updates for this version.
    default: 
    default:   You should migrate to a supported version of Node.js as soon as possible.
    default:   Use the installation script that corresponds to the version of Node.js you
    default:   wish to install. e.g.
    default: 
    default:    * https://rpm.nodesource.com/setup_12.x - Node.js v12 LTS "Erbium"
    default:    * https://rpm.nodesource.com/setup_14.x - Node.js v14 LTS "Fermium" (recommended)
    default:    * https://rpm.nodesource.com/setup_16.x - Node.js v16 "Gallium"
    default: 
    default:   Please see https://github.com/nodejs/Release for details about which
    default:   version may be appropriate for you.
    default: 
    default:   The NodeSource Node.js distributions repository contains
    default:   information both about supported versions of Node.js and supported Linux
    default:   distributions. To learn more about usage, see the repository:
    default:     https://github.com/nodesource/distributions
    default: 
    default: ================================================================================
    default: ================================================================================
    default: 
    default: Continuing in 20 seconds ...
    default: 
    default: ## Installing the NodeSource Node.js 10.x repo...
    default: 
    default: ## Inspecting system...
    default: 
    default: + rpm -q --whatprovides redhat-release || rpm -q --whatprovides centos-release || rpm -q --whatprovides cloudlinux-release || rpm -q --whatprovides sl-release || rpm -q --whatprovides fedora-release
    default: + uname -m
    default: 
    default: ## Confirming "el7-x86_64" is supported...
    default: 
    default: + curl -sLf -o /dev/null 'https://rpm.nodesource.com/pub_10.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm'
    default: 
    default: ## Downloading release setup RPM...
    default: 
    default: + mktemp
    default: + curl -sL -o '/tmp/tmp.slsEAIyUdg' 'https://rpm.nodesource.com/pub_10.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm'
    default: 
    default: ## Installing release setup RPM...
    default: 
    default: + rpm -i --nosignature --force '/tmp/tmp.slsEAIyUdg'
    default: 
    default: ## Cleaning up...
    default: 
    default: + rm -f '/tmp/tmp.slsEAIyUdg'
    default: 
    default: ## Checking for existing installations...
    default: 
    default: + rpm -qa 'node|npm' | grep -v nodesource
    default: 
    default: ## Run `sudo yum install -y nodejs` to install Node.js 10.x and npm.
    default: ## You may run dnf if yum is not available:
    default:      sudo dnf install -y nodejs
    default: ## You may also need development tools to build native addons:
    default:      sudo yum install gcc-c++ make
    default: ## To install the Yarn package manager, run:
    default:      curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
    default:      sudo yum install yarn
    default: Loaded plugins: fastestmirror
    default: Loading mirror speeds from cached hostfile
    default:  * base: mirrors.xtom.com
    default:  * extras: mirrors.oit.uci.edu
    default:  * updates: mirrors.ocf.berkeley.edu
    default: Resolving Dependencies
    default: --> Running transaction check
    default: ---> Package nodejs.x86_64 2:10.24.1-1nodesource will be installed
    default: --> Finished Dependency Resolution
    default: 
    default: Dependencies Resolved
    default: 
    default: ================================================================================
    default:  Package      Arch         Version                       Repository        Size
    default: ================================================================================
    default: Installing:
    default:  nodejs       x86_64       2:10.24.1-1nodesource         nodesource        20 M
    default: 
    default: Transaction Summary
    default: ================================================================================
    default: Install  1 Package
    default: 
    default: Total download size: 20 M
    default: Installed size: 60 M
    default: Downloading packages:
    default: Public key for nodejs-10.24.1-1nodesource.x86_64.rpm is not installed
    default: warning: /var/cache/yum/x86_64/7/nodesource/packages/nodejs-10.24.1-1nodesource.x86_64.rpm: Header V4 RSA/SHA512 Signature, key ID 34fa74dd: NOKEY
    default: Retrieving key from file:///etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL
    default: Importing GPG key 0x34FA74DD:
    default:  Userid     : "NodeSource <gpg-rpm@nodesource.com>"
    default:  Fingerprint: 2e55 207a 95d9 944b 0cc9 3261 5ddb e8d4 34fa 74dd
    default:  Package    : nodesource-release-el7-1.noarch (installed)
    default:  From       : /etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL
    default: Running transaction check
    default: Running transaction test
    default: Transaction test succeeded
    default: Running transaction
    default: Warning: RPMDB altered outside of yum.
    default:   Installing : 2:nodejs-10.24.1-1nodesource.x86_64                          1/1
    default:  
    default:   Verifying  : 2:nodejs-10.24.1-1nodesource.x86_64                          1/1
    default:  
    default: 
    default: Installed:
    default:   nodejs.x86_64 2:10.24.1-1nodesource                                           
    default: 
    default: Complete!

```

### Artifactory Vagrant Up

```
siri@siris-MacBook-Pro:setup-ci-stack-in-vagrant siri$ ls
Readme.md	artifactory	console-log.md	jenkins		sonarqube
siri@siris-MacBook-Pro:setup-ci-stack-in-vagrant siri$ cd artifactory/
siri@siris-MacBook-Pro:artifactory siri$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'hashicorp/bionic64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'hashicorp/bionic64' version '1.0.282' is up to date...
==> default: Setting the name of the VM: artifactory_vagrant
==> default: Fixed port collision for 22 => 2222. Now on port 2201.
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 8081 (guest) => 8081 (host) (adapter 1)
    default: 8082 (guest) => 8082 (host) (adapter 1)
    default: 22 (guest) => 2201 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2201
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default: 
    default: Guest Additions Version: 6.0.10
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => /Users/siri/assignments/setup-ci-stack-in-vagrant/artifactory
==> default: Running provisioner: docker...
    default: Installing Docker onto machine...
==> default: Pulling Docker images...
==> default: -- Image: ubuntu
==> default: Using default tag: latest
==> default: latest: Pulling from library/ubuntu
==> default: 405f018f9d1d: Pulling fs layer
==> default: 405f018f9d1d: Verifying Checksum
==> default: 405f018f9d1d: Download complete
==> default: 405f018f9d1d: Pull complete
==> default: Digest: sha256:b6b83d3c331794420340093eb706a6f152d9c1fa51b262d9bf34594887c2c7ac
==> default: Status: Downloaded newer image for ubuntu:latest
==> default: docker.io/library/ubuntu:latest
==> default: Running provisioner: shell...
    default: Running: /var/folders/qf/dc80cr212fnbn5wwxn2y9vph0000gn/T/vagrant-shell20220616-16560-ih5ptl.sh
    default: Unable to find image 'docker.bintray.io/jfrog/artifactory-oss:latest' locally
    default: latest: 
    default: Pulling from jfrog/artifactory-oss
    default: 4f4fb700ef54: 
    default: Pulling fs layer
    default: f311cd70d478: 
    default: Pulling fs layer
    default: d11f13c0b022: 
    default: Pulling fs layer
    default: 3e2c74427565: 
    default: Pulling fs layer
    default: b2af113c7df0: 
    default: Pulling fs layer
    default: 6b863e752a21: 
    default: Pulling fs layer
    default: 18ae9dcf585a: 
    default: Pulling fs layer
    default: 270cd5ceac68: 
    default: Pulling fs layer
    default: 93448b5361ee: 
    default: Pulling fs layer
    default: 2ff136aeb4ee: 
    default: Pulling fs layer
    default: 6b863e752a21: 
    default: Waiting
    default: 3e2c74427565: 
    default: Waiting
    default: b2af113c7df0: 
    default: Waiting
    default: 18ae9dcf585a: 
    default: Waiting
    default: 270cd5ceac68: 
    default: Waiting
    default: 93448b5361ee: 
    default: Waiting
    default: 2ff136aeb4ee: 
    default: Waiting
    default: 4f4fb700ef54: Verifying Checksum
    default: 4f4fb700ef54: Pull complete
    default: 3e2c74427565: 
    default: Verifying Checksum
    default: 3e2c74427565: Download complete
    default: f311cd70d478: 
    default: Verifying Checksum
    default: f311cd70d478: 
    default: Download complete
    default: b2af113c7df0: 
    default: Verifying Checksum
    default: b2af113c7df0: Download complete
    default: 6b863e752a21: 
    default: Verifying Checksum
    default: 6b863e752a21: 
    default: Download complete
    default: d11f13c0b022: 
    default: Verifying Checksum
    default: d11f13c0b022: 
    default: Download complete
    default: 93448b5361ee: 
    default: Verifying Checksum
    default: 93448b5361ee: 
    default: Download complete
    default: f311cd70d478: Pull complete
    default: 2ff136aeb4ee: Verifying Checksum
    default: 2ff136aeb4ee: Download complete
    default: 18ae9dcf585a: 
    default: Verifying Checksum
    default: 18ae9dcf585a: 
    default: Download complete
    default: d11f13c0b022: 
    default: Pull complete
    default: 3e2c74427565: 
    default: Pull complete
    default: b2af113c7df0: 
    default: Pull complete
    default: 6b863e752a21: 
    default: Pull complete
    default: 270cd5ceac68: 
    default: Verifying Checksum
    default: 270cd5ceac68: 
    default: Download complete
    default: 18ae9dcf585a: Pull complete
    default: 270cd5ceac68: Pull complete
    default: 93448b5361ee: 
    default: Pull complete
    default: 2ff136aeb4ee: 
    default: Pull complete
    default: Digest: sha256:524eb936fa5a42462eda597af8fb43d36e0fa125481e07705f960ba09a0f3418
    default: Status: Downloaded newer image for docker.bintray.io/jfrog/artifactory-oss:latest
    default: cd8209f493eeb50e1a757273d99819ad5701365291e7a78e2aff12429abe1f56

```

### Vagrant List after all instances are up

```
siri@siris-MacBook-Pro:artifactory siri$ vagrant global-status
id       name    provider   state   directory                                                      
---------------------------------------------------------------------------------------------------                                   
1f81423  default virtualbox running /Users/siri/assignments/setup-ci-stack-in-vagrant/jenkins     
d6d61fd  default virtualbox running /Users/siri/assignments/setup-ci-stack-in-vagrant/sonarqube   
691f775  default virtualbox running /Users/siri/assignments/setup-ci-stack-in-vagrant/artifactory 
 
The above shows information about all known Vagrant environments
on this machine. This data is cached and may not be completely
up-to-date (use "vagrant global-status --prune" to prune invalid
entries). To interact with any of the machines, you can go to that
directory and run Vagrant, or you can use the ID directly with
Vagrant commands from any directory. For example:
"vagrant destroy 1a2b3c4d"
```




### Assigning More Resources to one of the node.

b) on a Single Vagrant Box ( Provide More Resources - CPU and Memory). 

- Jenkins Vagrant VM memory is being updated to 5000 for this.

```
  config.vm.provider "virtualbox" do |vb|
    vb.name= "jenkins_vagrant"
    vb.gui = false
    vb.cpus = 2
    vb.memory = "5000"
  end
```

Log After Vagrant Memory Update
```
siri@siris-MacBook-Pro:jenkins siri$ vagrant reload
==> default: Attempting graceful shutdown of VM...
==> default: Checking if box 'ubuntu/xenial64' version '20211001.0.0' is up to date...
==> default: Clearing any previously set forwarded ports...
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 8080 (guest) => 8080 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default: 
    default: Guest Additions Version: 5.1.38
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => /Users/siri/assignments/setup-ci-stack-in-vagrant/jenkins
==> default: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> default: flag to force provisioning. Provisioners marked to run always will still run.
```
