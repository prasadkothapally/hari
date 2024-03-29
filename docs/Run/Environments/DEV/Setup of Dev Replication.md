# **Setup of Dev Replication Server**

Following are the softwares along with their versions running in Build environment

  Software             |     Version
  ---------------------|-------------------
  Docker               |   24.0.7
  docker-compose       |   1.29.2
  
### **Setup of Docker**

  The Docker installation package available in the official Ubuntu repository may not be the latest version. To ensure we get the latest version, we’ll install Docker from the official Docker repository. To do that, we’ll add a new package source, add the GPG key from Docker to ensure the downloads are valid, and then install the package.

      First, update your existing list of packages:
	  
	  $ sudo apt update
	  
	  Next, install a few prerequisite packages which let apt use packages over HTTPS:
	  
	  $ sudo apt install apt-transport-https ca-certificates curl software-properties-common
	  
	  Then add the GPG key for the official Docker repository to your system:
	  
	  $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	  
	  Add the Docker repository to APT sources:
	  
	  $ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	  
	  This will also update our package database with the Docker packages from the newly added repo.

      Make sure to install from the Docker repo instead of the default Ubuntu repo:
	  
	  $ apt-cache policy docker-ce
	  
	  Finally, install Docker:
	  
	  $ sudo apt install docker-ce
	  
	  Docker should now be installed, the daemon started, and the process enabled to start on boot. Check that it’s running:
	  
	  $ sudo systemctl status docker
	  
### **Setup of docker-compose**

      **Prerequisites**

      Make sure Docker installed on server
	   
	  Download the executable
	   
	  $ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	   
	  Next, set the correct permissions so that the docker-compose command is executable:
	   
	  $ sudo chmod +x /usr/local/bin/docker-compose
	   
	  To verify that the installation was successful, run:
	   
	  $ docker-compose --version
	  
We are running 3 docker containers along with data volumes in this machine. Check them using below command.
   
      $ docker ps
	  
We are running PostgresDB, MongoDB and RabbitMQ.

Respective docker-compose files for these DBs and message brokers are available at:
 
      /home/devreplica/Fintrust/Postgress
	  /home/devreplica/Fintrust/Mongo
	  /home/devreplica/Fintrust/RabbitMQ