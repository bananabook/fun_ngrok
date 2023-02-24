# fun_ngrok docker container
This is a docker container, that starts an ssh server connectible with ngrok together with two other ports, that can be used for other services. After you made some configurations you can just start the container and see all the important information in a new file called 'out' including a qrcode with a configuration, that you can just append to your .ssh/config.

# why
You can use the container to remotely develop a network service like a website, it will be instantly accesible to anyone online.
You can use the container as an ssh-bastion, meaning you can connect to your host through the container from anywhere.
If you need someone to connect to a linux environment, but you do not want to offer your own system directly or start an instance in the cloud or as a vm, this is a middle solution, that can be used for codevelopment, file sharing, demonstration etc.

# prerequisits
You need docker installed, an ngrok account to generate an ngrok api token and of course ssh to connect to the new container

# preparations
You need to add a copy of your public ssh-key in the files directory under the name 'files/id_rsa.pub'.
You need to place your ngrok api key in the 'files/ngrok.yaml' file, so you can use the three ports.
Start build and start the container by just calling 'make'. Next read the 'out' file for the necessary information.

# how to stop
The docker container is run in the background, do stop it you can just call 'make stop', it kills the running container
