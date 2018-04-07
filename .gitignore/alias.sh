echo 'export PATH=$PATH:usr/local/bin' >> .bashrc #exports path 
#if this path doesn't work try finding the path by typing: echo -a python in the terminal
echo 'alias jn=jupyter\ notebook' >> .bashrc #aliasing jupyter notebook as jn
echo 'alias tfact=source\ ~/tensorflow/bin/activate' >> .bashrc #aliasing tensorflow activate command as tfact
echo 'alias tfdeact=deactivate\ tensorflow' >> .bashrc #aliasing tensorflow deactivate command as tfdeact
source .bashrc # to run this file once
tfact #check if tensorflow is activated
tfdeact  #check if tensorflow is deactivated
