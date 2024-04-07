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
# Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg

# Add Jenkins Repo
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package lists again
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Update package lists again
sudo apt update

# Start Jenkins
sudo service jenkins start


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







