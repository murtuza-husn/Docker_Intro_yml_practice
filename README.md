Docker Assignment – 03

 
The above image showcases that the docker image with the latest tag is downloaded via client(docker cli) commanding docker daemon to download the busybox image from dockerhub.

 
 
Here we are pulling records to see how many images are present. 
The Hello-world test image that was downloaded earlier and the current image pushybox.
The docker info also shows that there are 2 images downloaded to dockerdesktop. Only 1 container that basically is the test container that runs Hello-World.

 
Here we ran a new container for busybox and created a file with text in it.
when the container runs it shows the text output as proof that the container ran successfully.

 
 
This command – docker ps -a basically lists all the docker containers that are currently running on the dockerdesktop.
The flags in the second screenshot -l -a -s - pulls the latest container that was run- busybox, and prints its size with -s and -a in the previous screenshot lists all the dockercontianers.

 
This basically is run with interactive and tty(terminal shell) the flag -I basically keeps the stdin open and the flag -t keeps the terminal open 

 
To remove the docker contianers. We list all and then copy the container ID’s that we wish to delete and then have them removed.





PART 2: 
 
 
Here we are creating project file where we create static html page and host it on docker and run on localhost.
Changed the First Name and Last Name.

 
Created a Dockerfile with instructions.
here we are using the tag : latest that pulls the latest image, other options include alpine(which has the bare minimum components -NO AddOns or No Bloatware- base version of NginxProxy server.

Here in this file we do Copy the current index.html file we created with Firstname and Lastname to the docker container containing Nginx Web Server /usr/share/nginx/html and it would replace any existing index.html file from there.
Notice it’s the path its /usr/share/nginx/html. If it were the a separate nginx server not running on docker the path would have been /var/www/html. As it is not running as a separate server but on docker.
You cannot do scp -secure copy protocol to copy the changes of a index.html from local to a container running nginx as it is not running over SSH.
You would have to do 
docker cp index.html <container_name>:/path/ and vice versa but make sure the docker container is active/running.
Also inside the docker we are exposing port 80 for webtraffic. Inside the docker on the other side you can have any other port running as it would act as port translation PAT/NAT for security.

 
Image created using the command docker build -t my-nginx-image .
It selects Dockerfile from the current directory ”.” to build the image 

 
Start/run the docker container with the created image on port 8080 inside docker and 80 on localhost and run in detach mode -d runs separately.

 
The website open on port 80 of the localhost.


 
Stopping docker container.

 
No container running.
# Docker_Intro_yml_practice
