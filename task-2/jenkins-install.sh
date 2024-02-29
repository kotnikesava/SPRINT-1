#!/bin/bash
sudo apt update -y
sudo apt install openjdk-11-jdk -y
sudo java -version
sudo apt install git -y
sudo git --version
wget https://updates.jenkins.io/download/war/2.441/jenkins.war
java -jar jenkins.war