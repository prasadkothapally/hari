### **Setup of Build Server**

Following are the softwares along with their versions running in Build environment

 
  Software             |     Version
  ---------------------|-------------------                    
  Gitlab-runner        |  16.2.0
  aws-cli              |  2.15.21
  docker               |  20.10.21
  reposolite           |  3.4.10
  Makedocs             |  1.5.3
  SonarQube            |  9-community
  helm                 |  v3.14.2
  
#### **Setup of Gitlab-Runner**
    
  **Install**
	  > sudo curl -L --output /usr/local/bin/gitlab-runner "https://s3.dualstack.us-east-1.amazonaws.com/gitlab-runner-downloads/latest/binaries/gitlab-runner-linux-amd64"
      
	  * Give it permissions to execute:
	    > sudo chmod +x /usr/local/bin/gitlab-runner
  
      * Create a GitLab CI user:
	    > sudo useradd --comment 'gitlab-runner' --create-home gitlab-runner --shell /bin/bash

      * Install and run as service:
	    > /usr/bin/gitlab-runner run --working-directory /home/gitlab-runner --config /etc/gitlab-runner/config.toml --service gitlab-runner --user gitlab-runner
	    > sudo gitlab-runner start
	  
	  * Advanced configuration
	  
	  * To change the behavior of GitLab Runner and individual registered runners, modify the config.toml file.

      * We can find the config.toml file in:
	  
	  * /etc/gitlab-runner/ on *nix systems when GitLab Runner is executed as root. This directory is also the path for service configuration.
      * ~/.gitlab-runner/ on *nix systems when GitLab Runner is executed as non-root.
      * ./ on other systems.
	  
	  * GitLab Runner does not require a restart when you change most options. This includes parameters in the [[runners]] section and most parameters in the global section, except for listen_address. If a runner was already registered, you don’t need to register it again.

      * GitLab Runner checks for configuration modifications every 3 seconds and reloads if necessary. GitLab Runner also reloads the configuration in response to the SIGHUP signal.
	  
	  
  **Register Runner**
	  
	  Prerequisites:

      * Obtain a runner authentication token. You can either:
        * Create a shared, group, or project runner.
        * Locate the runner authentication token in the config.toml file. Runner authentication tokens have the prefix, glrt-.
		
	  After you register the runner, the configuration is saved to the config.toml.

      To register the runner with a runner authentication token:
	  1. Run the register command:
	     > sudo gitlab-runner register

      2. Enter your GitLab URL
	  * For runners on GitLab self-managed, use the URL for your GitLab instance. For example, if your project is hosted on gitlab.example.com/yourname/yourproject, your GitLab instance URL is https://gitlab.example.com.
      * For runners on GitLab.com, the gitlab-ci coordinator URL is https://gitlab.com. 
	    Our gitlab-ci coordinator URL is https://gitlabnew.techwave.net
		
	  3. Enter the runner authentication token.
      4. Enter a name for the runner.
      5. Enter the type of executor.
	  
	  * To register multiple runners on the same host machine, each with a different configuration, repeat the register command.
	  * To register multiple runners on the same host machine, each with a different configuration, repeat the register command.
	  
	  
	  
  **Update the Gitlab-runner**
	  1.Stop the service (we need elevated command prompt as before):
	    > sudo gitlab-runner stop

      2. Download the binary to replace the GitLab Runner executable. For example:
	    > sudo curl -L --output /usr/local/bin/gitlab-runner "https://s3.dualstack.us-east-1.amazonaws.com/gitlab-runner-downloads/latest/binaries/gitlab-runner-linux-amd64"

      3. Give it permissions to execute:
	    > sudo chmod +x /usr/local/bin/gitlab-runner

      4. Start the service:
	    > sudo gitlab-runner start
