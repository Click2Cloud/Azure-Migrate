yum update -y
yum install git gedit wget unzip -y
sudo yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel -y

export JAVA_HOME="/usr"

wget http://www.eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar xzf apache-maven-3.3.9-bin.tar.gz
mkdir /usr/local/maven
mv apache-maven-3.3.9/ /usr/local/maven/
alternatives --install /usr/bin/mvn mvn /usr/local/maven/apache-maven-3.3.9/bin/mvn 1

wget http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip
unzip wildfly-10.1.0.Final.zip
cd /root/wildfly-10.1.0.Final/ 

cp -p /root/wildfly-10.1.0.Final/standalone/configuration/standalone.xml /root/wildfly-10.1.0.Final/standalone/configuration/standalone.xml.old
gedit /root/wildfly-10.1.0.Final/standalone/configuration/standalone.xml

firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --zone=public --add-port=9990/tcp --permanent
firewall-cmd --reload

# /root/wildfly-10.1.0.Final/bin/add-user.sh
# vi /root/wildfly-10.1.0.Final/standalone/configuration/standalone.xml
# chnage 127.0.0.1 ==> 0.0.0.0 for last two 127.0.0.1 occurence
# 6. Start the wildfly server
# /root/wildfly-10.1.0.Final/bin/standalone.sh

# 7. clone PetStore Application Repository from given URL and 
# cd /root/wildfly-10.1.0.Final/
# git clone https://github.com/click2cloud-shadab/agoncal-application-petstore-ee7
# cd /root/wildfly-10.1.0.Final/agoncal-application-petstore-ee7/

# 8. Configure .war file for Petstore Application using Maven.
# mvn clean test -Parquillian-wildfly-remote
# mvn install -Parquillian-wildfly-remote

# 9. Copy the petstore.war file to WildFly server deployments.
# cp /root/wildfly-10.1.0.Final/agoncal-application-petstore-ee7/target/applicationPetstore.war /root/wildfly-10.1.0.Final/standalone/deployments/

# 10. You can check your appliaction is in running state with default database of PetStore.
# http://<localhost or your IP>:8080/applicationPetstore

# wget https://raw.githubusercontent.com/Microsoft/OMS-Agent-for-Linux/master/installer/scripts/onboard_agent.sh && sh onboard_agent.sh -w dff95a03-389d-49cf-9349-b0c6db17a041 -s YUQPXrqgZraQIMV6PfusR6zHYD3DuF0OS7H6JyWIcdUTpD+xVflKjNUOtCQt2k9f8DUi5KDMktYXuZ74kwOU+g==
# sh filename.bin