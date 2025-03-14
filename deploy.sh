# Deployment Process 
#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node. js with a built-in load balancer.
sudo pm install -g pm2
# stop any instance of our application running currently
pm2 stop devops_app
# change directory into folder where application is downloaded
cd nci-project/
# Install application dependencies
npm install
# Start the application with the process name example_app using pm2
pm2 start ./bin/www --name devops_app --env=production