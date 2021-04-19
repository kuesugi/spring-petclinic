#!/bin/bash
echo "Adding apt-keys"
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'

# -qq and /dev/null 2>&1 for less verbose output
echo "Updating apt-get"
sudo apt-get -qq update

# -y for auto answering yes for prompts
echo "Installing default-java"
sudo apt-get -y install default-jre > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1

echo "Installing unzip"
sudo apt-get -y install unzip > /dev/null 2>&1

echo "Installing git"
sudo apt-get -y install git > /dev/null 2>&1

echo "Installing git-ftp"
sudo apt-get -y install git-ftp > /dev/null 2>&1

echo "Installing jenkins"
sudo apt-get -y install jenkins > /dev/null 2>&1
sudo service jenkins start

sleep 1m

echo "Installing Jenkins Plugins"
JENKINSPWD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "-> PASSWORD TO UNLOCK JENKINS: " $JENKINSPWD

echo "Installing ansible"
sudo apt-get install -y ansible > /dev/null 2>&1

echo "Finish setting up server1"