#!/bin/bash
$ sudo apt-get update
$ sudo apt install openjdk-11-jdk -y
$ sudo java -version
$ wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add  
$ sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 
$ sudo apt update
$ sudo apt install jenkins -y
$ sudo systemctl start jenkins 
$ sudo systemctl enable jenkins
