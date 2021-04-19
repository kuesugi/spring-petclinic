#!/bin/bash
# -qq and /dev/null 2>&1 for less verbose output
echo "Updating apt-get"
sudo apt-get -qq update

# -y for auto answering yes for prompts
echo "Installing default-java"
sudo apt-get -y install default-jre > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1

echo "Installing git"
sudo apt-get -y install git > /dev/null 2>&1

echo "Finish setting up server2"