## After writing the script, craeate an instance in your aws console
**Open your terminal to where u downloaded your pem key, there open the onboard.sh file there using**
`vi onboard.sh`
**When the file opens, copy the whole script you have writing in the onboard.sh file in the VScode and paste all inside the .sh file you opened above**
**Using the scp command copy over the script you have coppied in your .sh of your local machine to your aws instance using**
`scp -i MY_KEY_PBL.pem onboard.sh ubuntu@44.201.189.176:~/;`
**Where My_PBL_Key.pem, is my instance key pair then add .pem to it so that the machine will recorgnize it,onboard.sh is where u r copying from while ubuntu is where u r copying to then @44.20.... is the public IP address of the instance created then ~/ means u are copying it to your home directory default folder**
![added](./images/added.PNG)
**Connect to your server on your terminal**
**Using ls -l show the total no of files in your ubuntu**
`ls -l`
![ls](./images/ls.PNG)

### Create a directory called shell using
`mkdir shell`
### Move all the content of onboard.sh into this shell folder you just created using
` mv onboard.sh /home/ubuntu/shell/`
**change directory into the shell folder**
`cd shell`
**ls to view the onboard.sh file you have moved into the shell**
![shell](./images/shell.PNG)

### Create some files needed using
`touch id_rsa id_rsa.pub names.csv`

### Populate the files u created above  using
`vi id_rsa.pub`
**When it opens , copy the public key address in the docuentation and paste and save in the editor**
`ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzKZyicHxIkklSrNlxsJyyTrcIdBIt84Z0cQb3R4k0jH53kxkaT5hP8tfWTe62LXi7vV86fY+SX7TBNM76XGCbw/6vrMGegm6J1x2i1AiLNwq5nqTjOGn0AIwku4IlCCLAB7tdfRyVuCarmBlwny3lzRyybIUAWXR/D6vpN09MsDILbKdhay+Q/p9OUBMSLPqXdY/QIh/Oe3rVv1lwY3AohNfq7V3tO88zKswfA5iiexNiSYX1myT0OrX8cBE771j9quoNZhQgaLI1mIMtAvnHQChrn9k2nUaO/BMBCQGol5XzGv1ado7hgoVPoluIUD+FGNo/pH4zcmDLICH6drXY/C9MESnkMUPLFxBXKO/OitApY71vRao9nAhAwpVMsy6FqiOb5uawhvhoHYIHTV/f4EtagVagRMP2PxYMYR6jykIV4MPJTkCm+lGhTyMlRu+qRQjdLn8AAtHf4aEV8dIkoGh088DI7eA/4o0wz4OV4upH5ewSFS+5IHmRECEW5Nc=`

`vi id_rsa`
**When it opens , copy the private key address in the docuentation and paste and save in the editor**
`-----BEGIN OPENSSH PRIVATE KEY-----
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
kmaSGj362OnCCNAAAACWRhcmVARGFyZQE=
-----END OPENSSH PRIVATE KEY-----`

### Populate the .csv file
`vi names.csv`
**Enter 20 names and save in this file**

### Use pwd to know the current directory and copy out that path, then update the onboard.sh file using
`vi onboard.sh`
**Then down inside the code, where u have /root/onboard/... remove that path and replace it with the path /home/ubuntu/shell you coppied above and save**

### Create the developers group
`sudo groupadd developers`
**Make it executable using**
`sudo chmod +x onboard.sh`

### If you try to run the sh file without root user, it will tell you only admin can onboard user
`./onboard.sh`

**so to run it, change to a root user usig**
`sudo su`
**Then u can run the sh file again using and it will open at this point as a root user**
`./onboard.sh`
**root@ip-172-31-91-54:/home/ubuntu/shell#   will be shown to tell u u r the root user**
**run the code**
`ls -l /home/`
        ![users](./images/users.PNG)
**Check that the group has been created**
`getent group developers`
![group](./images/group.PNG)

`cat /etc/passwd`
**To check the group members and the Id**
![groupId](./images/groupId.PNG)

**To  filter the output better use the awk command**
`cat /etc/passwd | awk -F':' '{print $1}' | xargs -n1 groups`
![awk](./images/awk_filter.PNG)

### Testing the users randomly to ensure u can connect to server
**Open  a new window in your terminal and cd to your download folder**
**As a developer before you can connect to any server you will be given a private key, having the public key coppied in the script we have written, it will allow us to connect. So create a new file and paste the private key there using :**
`vi aux-proj.pem`
**using the name of one of the users eg Harry, go to the new window u opened and try to connect to the server using the pem key u just coppied as well as the Ip address of ur instance**
`ssh -i aux-proj.pem Harry@54.209.249.178`
![user-conn](./images/user-connected.PNG)

**If it shows permission denied then check usinng  to see the permission**
`ls -l | grep aux-proj.pem`
`sudo chmod 600 aux-proj.pem`

**Check the priviledge of the user**
`sudo apt update`
**It will request for ur password and we set the password to be 'password'**
![sudoer](./images/sudoer.PNG)
**Check that ssh is there**
`ls -la`
![ssh](./images/ssh.PNG)
**Check what is in the ssh folder using**
`ls la .ssh/`
**This will display that the authorized key created was there**
![key](./images/authorized.PNG)
**You can view the content of the authorized key using**
`cat .ssh/authorized_keys`
![keys](./images/key.PNG)
**Exit user using**
`exit`

**You can try log in another developer using the process above ie**
`ssh -i aux_proj.pem Harry@IPADRESS`
![user2](./images/user2.PNG)
![userHarry](./images/userHarry.PNG)