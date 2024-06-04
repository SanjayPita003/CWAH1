Steps to Use the Script:

Install SSH Agent Plugin:
Ensure you have the SSH Agent plugin installed in Jenkins. You can install it from the Manage Jenkins -> Manage Plugins section.

Add SSH Credentials:
Go to Manage Jenkins -> Manage Credentials -> (select domain) -> Add Credentials. Add the SSH username with private key. Note the ID you provide to the credentials, as you will use it in the SSH_CREDENTIALS_ID environment variable in the script.

Create a Pipeline Job:

Go to Jenkins and create a new pipeline job.
In the job configuration, select "Pipeline script" and paste the above script.
Adjust the Credential ID:
Make sure the SSH_CREDENTIALS_ID in the environment section matches the ID of the SSH credentials you added to Jenkins.

This combined script will perform all the tasks you specified, logging into various servers and executing the necessary commands. Adjust the server names, paths, and commands if needed to match your actual environment.


#########################################
Config Script Steps.

Creating a script that prompts for these values each time it runs and integrates with Jenkins can be achieved through a combination of shell scripting (or Python) and Jenkins' parameterized builds feature. Below, I provide a shell script example that collects these values and stores them for use in your Jenkins job.

Jenkins Integration
To integrate this with Jenkins, you can use Jenkins' parameterized builds feature to collect these values through the Jenkins UI. Here's a step-by-step guide:

Create a New Jenkins Job:

Open Jenkins.
Click on "New Item".
Enter a name for your job and select "Freestyle project", then click "OK".
Add Parameters:

In the job configuration, check the box for "This project is parameterized".
Add the following String Parameters for each input:

env_tla_names
true_cfg
db_version
ws_version
tma_version
prefix_letters
initial_ports
ip1_subnet
ip2_subnet
ip_node
hpns_host
env_disks


Add a Build Step:
Add a "Execute shell" build step.
Copy the contents of the collect_config.sh script into the shell command box, replacing the read commands with Jenkins environment variables.


