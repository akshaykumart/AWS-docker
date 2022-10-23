# AWS-docker

Assignment 01 : AWS & Docker
Steps to be Followed:
GIT-Hub : https://github.com/akshaykumart/AWS-docker
FILES AND COMMANDS USED:
1.	main.tf
2.	script.sh
3.	jenkins.sh
STEPS :
1.	Create a IAM user .

•	Login to AWS Console.
•	Create IAM user and add it to group with access permissions.
•	Note the Access key ,Secret key of the User you created.

2.	Create a EC2 Instance .

•	Create a terraform script (main.tf).
•	Mention user credentials and script to create a Ec2 Instance.
•	Run the following commands to create .
$ terraform init
$ terraform fmt
$ terraform plan
$ terraform apply

3.	Install Jenkins and configure it.

•	Run the following commands .
$ sudo apt-get update
$ sudo apt install openjdk-11-jdk -y
$ sudo java -version
$ wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add  
$ sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 
$ sudo apt update
$ sudo apt install jenkins -y
$ sudo systemctl start jenkins 
$ sudo systemctl enable jenkins

4.	Create a Jenkins Job .
•	Login to Jenkins by <publicIp of instance>:8080
•	Install all the related plugins from manage jenkins of dashboard.
•	Go to new job -> create a new job
•	In SCM mention the URL of GIT-Hub repository.
•	In Build phase ,execute using shell scripting ( use shell.sh from git hub repo).
•	Apply and Save
•	Build the job and validate the console output to success

5.	Validate the Docker Images and Docker Container.

•	Login to the instance.
•	Create the script.sh file and paste the script
$ nano script.sh
•	Modify the access to execute for the file
$ chmod +x script.sh
•	Run the script 
$ ./script.sh
•	Validate Docker images 
$ sudo docker images
•	Validate Docker container
$ sudo docker ps 


FAQ / Troubleshooting :
I.	Mention the port in Inbound rules of Security Group of AWS if u face problem In launching Jenkins dashboard from Ec2-instance
Add ssh , HTTP, HTTPS , 8080

II.	If you get error in Jenkins job saying unable to get access to root user.
Add Jenkins user to Root access
 





