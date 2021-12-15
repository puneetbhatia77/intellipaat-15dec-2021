# Steps to install Jenkins at ubuntu 18.04

sudo apt-get update
sudo apt install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get -y install jenkins
sudo service jenkins status

sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow 8080


# http://ip_address_or_domain_name:8080
# /var/lib/jenkins/secrets/initialAdminPassword
# install suggested plugins

# installation for RPM based distributions

sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo amazon-linux-extras install epel # for daemonize if you are in aws
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo service jenkins status
sudo systemctl start jenkins
# go to NSG and add inbound port 8080 for Azure cloud
# go to security tab and then add inbound port 8080 in security group for AWS
# go to /var/lib/jenkins/secrets/initialAdminPassword and copy the password