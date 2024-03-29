# **Setup of Dev Server**

Following are the softwares along with their versions running in the DEV 

  Software             |     Version
  ---------------------|------------------- 
  Docker               |     24.0.4
  minikube             |     v1.30.1
  kubectl              |     v1.27.3
  haproxy              |     2.0.31-0ubuntu0.3
  caddy                |     v2.6.4
  kestra               |     kestra/kestra:latest-full

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
	  
### **Setup of minikube**

      Minikube is an open source tool that allows you to set up a single-node Kubernetes cluster on our local machine. The cluster is run inside a virtual machine and includes Docker, allowing us to run containers inside the node.

      This is an excellent way to test in a Kubernetes environment locally, without using up too much resources
	  
	  **PREREQUISITES**
	  
	    - 2 CPUs or more
	    - 2GB of free memory
	    - 20GB of free disk space
	    - Internet connection
	    - Container or virtual machine manager, such as: Docker, QEMU, Hyperkit, Hyper-V, KVM, Parallels, Podman, VirtualBox, or VMware Fusion/Workstation
		
	  1. Installation
	  
	  To install the latest minikube stable release on x86-64 Linux using binary download:
	  
	  $ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
      $ sudo install minikube-linux-amd64 /usr/local/bin/minikube
	  
	  Next, give the file executive permission using the chmod command:
	  
	  $ sudo chmod 755 /usr/local/bin/minikube
	  
	  2. Start minikube cluster
	  
	  From a terminal with administrator access (but not logged in as root), run:
	  
	  $ minikube start

      3. Manage minikube cluster
	  
	  Pause Kubernetes without impacting deployed applications:
	  
	  $ minikube pause

      Unpause a paused instance:
	  
	  $ minikube unpause
   
      Halt the cluster:
	  
	  $ minikube stop
 
      Browse the catalog of easily installed Kubernetes services
	  
	  $ minikube addons list
	  
	  Delete all of the minikube clusters
	  
	  $ minikube delete --all


### **Setup of Kubectl**

     To deploy and manage clusters, we need to install kubectl, the official command line tool for Kubernetes.
	 
	 1. Download kubectl with the following command
	 
	 $ curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
	 
	 2. Make the binary executable by typing
	 
	 $ chmod +x ./kubectl
	 
	 3. Then, move the binary into your path with the command:
	 
	 $ sudo mv ./kubectl /usr/local/bin/kubectl
	 
	 4. Verify the installation by checking the version of your kubectl instance:
	 
	 $ kubectl version --short
	 

### **Setup of HAPROXY**

     HAProxy, which stands for High Availability Proxy, is a popular open source software TCP/HTTP Load Balancer and proxying solution which can be run on Linux, macOS, and FreeBSD.
	   
	 Its most common use is to improve the performance and reliability of a server environment by distributing the workload across multiple servers (e.g. web, application, database).

     1. Installation

     $ sudo apt install --no-install-recommends software-properties-common

     $ sudo add-apt-repository ppa:vbernat/haproxy-2.4 -y

     The first command installs the software-properties-common package which helps you manage any PPAs you install. It’s probably already installed, but running it again ensures that it’s available. 
	 
	 The second command puts the PPA into the list of software sources.
	 
	 We’re now ready to install the very latest HAProxy:
	 
	 $ sudo apt install haproxy=2.3.\*
	 
	 To check the haproxy version 
	 
	 haproxy -v
	 
### **Setup of Caddy**

     Caddy is a powerful, extensible platform to serve your sites, services, and apps
	 
	 Most people use Caddy as a web server or proxy, but at its core, Caddy is a server of servers. With the requisite modules, it can take on the role of any long-running process.
	 
	 Configuration is both dynamic and exportable with Caddy's API. Although no config files required, you can still use them; most people's favorite way of configuring Caddy is using the Caddyfile. The format of the config document takes many forms with config adapters, but Caddy's native config language is JSON.
	 
	 Caddy compiles for all major platforms and has no runtime dependencies.
	 
	 1. Installation
	  
	 Download Caddy from the following releases pages , choose the version and system compatible one.
	 https://github.com/caddyserver/caddy/releases
	 
	 2. The Caddyfile
	 
	 The Caddyfile is a convenient Caddy configuration format for humans. 
	 It is most people's favorite way to use Caddy because it is easy to write, easy to understand, and expressive enough for most use cases.
	 
	 We have Caddyfile available at below path in DEV environment
	 /home/laxma/software 
	 
	 3. Caddy has a standard unix-like command line interface. Basic usage is:
	 
     caddy start - Starts the Caddy process in the background
	 
	 caddy run - Starts the Caddy process in the foreground
	 
	 caddy stop - Stops the running Caddy process
	 
	 caddy upgrade - Upgrades Caddy to the latest release
	 
	 caddy file-server - A simple but production-ready file server
	 
	 caddy reload - Changes the config of the running Caddy process
	 
	 For more information, please check the below documentation
	 
	 https://caddyserver.com/docs/command-line