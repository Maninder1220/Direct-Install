#!/bin/bash
#
# - - - - - - - - - - - - - - 
# About :
# this script is created for installation of software which is needed
# for smooth working of our CICD pipeline.
#
# Software :
# Java-17 | Maven | Jenkins | Ansible | Docker | .. 
#
# How to use Script :
# chmod +x FstScript.sh  <-- Make the script executable to run it as a program 
#
# Workes On :
# Not tested yet
#
#- - - - - - - - - - - - - - 
#
sudo apt update

# Install JavA
sudo apt install -y openjdk-17-jdk

# Install Maven
sudo apt install -y maven

# Install Jenkins Steps

# # Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository to sources list
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package lists again
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Update package lists again
sudo apt update

# Install Ansible
sudo apt install -y ansible

# Update package lists again
sudo apt update

# Install Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Add your user to the docker group (to run docker commands without sudo)
sudo usermod -aG docker MonE

# Apply the new group membership
sudo su - MonE







