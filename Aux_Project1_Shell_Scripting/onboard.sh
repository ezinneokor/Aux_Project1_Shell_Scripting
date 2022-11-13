#! /usr/bin/bash
users=$(cat names.csv) #Display the csv file or create one if non exists
PASSWORD=password

#To ensure that the user running the script has sudo priviledge ie the root user with id of 0
if [ $(id -u) -eq 0 ]; 
then

#Loop through the list of the users in the csv file
for user in $users
do
echo $user
if id "$user" &>/dev/null  #store ur output in the null file. do not echo it
then
echo "User Exists"
else
#Create a new user
useradd -m -d /home/$user -s /usr/bin/bash -g developers $user
echo "New User Created"
echo

#This will create an ssh folder in the user home folder
su - -c "mkdir ~/.ssh" $user
echo ".ssh directory created for new user"
echo

#Set user permission for the ssh directory created
su - -c "chmod 700 ~/.ssh" $user
echo "User permission for .ssh directory set"
echo

#This will create an authorised key file
su - -c "touch ~/.ssh/authorized_keys" $user
echo "Authrized key file created"
echo

#Create permission for the key file
su - -c "chmod 600 ~/.ssh/authorized_keys" $user
echo "User permission for the authorised key file set"
echo

#Set and create public keys for users in the server
cp -R "root/onboard/id_rsa.pub" "/home/$user/.ssh/authorized_keys"
echo "Coppied the public key to new user account on server"
echo
echo

echo "User Created"


#Generate a password
sudo echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "$user"
sudo passwd -x 5 $user
fi
done
else
echo " Only Admin can onboard a new user"
fi