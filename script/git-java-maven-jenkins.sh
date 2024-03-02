#!/bin/bash

sudo apt update

sudo apt -y upgrade

sudo apt -y install git

sudo apt -y install openjdk-11-jdk

sudo apt -y install maven

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update

sudo apt -y install jenkins

sudo sh -c 'echo jenkins  ALL=\(ALL\) NOPASSWD:ALL >> /etc/sudoers'

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
