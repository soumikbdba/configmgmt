This repository includes two files for setting up and configuring a server:

bootstrap.sh
config_management.py

#################
bootstrap.sh
#################

Purpose:

The bootstrap.sh script automates the initial setup of a server by updating package lists, 
installing required packages (Python 3, pip, Apache2, and PHP), and configuring the Apache web server to run a PHP application.

Instructions:

1. Make sure you have the necessary permissions to run the script:
2. The script will automatically update package lists, install the required packages, create the necessary directories, and configure Apache. 
   It will also restart the Apache web server to apply the changes.
3. This script can be run individually or even this is called from the config_management.py script also.


####################
config_management.py
####################

Purpose:

The config_management.py script is a Python script that uses the subprocess module to execute system commands. 
It provides a class, ConfigManagementTool, with methods for bootstrapping the server, configuring a PHP application, and managing Debian packages.

Instructions:

1. Ensure you have Python 3 installed on your system.
2. Run the script using the following command:
   python3 config_management.py
   
3. The script will perform the following actions:

# Bootstrap the server by executing the bootstrap.sh script.
# Configure the PHP application to display "Hello, world!" using Apache.
# Install the Nginx web server and then remove it.


1. Ensure that the bootstrap.sh script and the config_management.py script are in the same directory.
2. Before running the config_management.py script, make sure to check and adjust the permissions accordingly.


