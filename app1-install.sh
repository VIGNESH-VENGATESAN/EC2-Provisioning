#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo yum update -y
sudo yum install java-1.8.0-openjdk -y
sudo mkdir -p /soft/apache/
sudo cd /soft/apache/
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68-deployer.tar.gz -P /soft/apache/
sudo tar -zvxf apache-tomcat-9.0.68-deployer.tar.gz
sudo cd /soft/apache/apache-tomcat-9.0.68-deployer/bin/
sudo sh startup.sh
#sudo yum update -y
#sudo yum install -y httpd
#sudo systemctl enable httpd
#sudo service httpd start  
#sudo echo '<h1>Welcome to StackSimplify - APP-1</h1>' | sudo tee /var/www/html/index.html
#sudo mkdir /var/www/html/app1
#sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Welcome to Stack Simplify - APP-1</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
#sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html