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