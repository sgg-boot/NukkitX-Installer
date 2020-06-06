#Linux Bash
 #!/bin/bash

#Installing Java/Wget
 
#On Arch-Linux
 sudo pacman -S jdk11-openjdk jre11-openjdk wget
 sudo archlinux-java set java-11-openjdk
 
#On Debian
 sudo apt-get install default-jdk default-jre wget

#On Ubuntu
 sudo apt-get install openjdk-11-jdk openjdk-11-jre wget

#Commands
 cd ~
 mkdir NukkitServer
 cd NukkitServer
 
#Getting .jar File
 wget -q https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/pr%252Fnew-raknet/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar
 
#Remame
 mv nukkit-1.0-SNAPSHOT.jar NukkitX.jar 

#Commands
 cd ~
 rm -rf NukkitX-Installer
 cd NukkitServer

#Creating the Startup File
 echo '#Startup Message' >> start.sh
 echo ' echo 'Starting Server'' >> start.sh
 echo ' ' >> start.sh
 echo '#Java' >> start.sh
 echo ' java -jar NukkitX.jar' >> start.sh
 echo ' ' >> start.sh
 echo '#Closing Message' >> start.sh
 echo ' echo 'Closed Server'' >> start.sh
 
#Creating the update file
 echo '#Update Message' >> update.sh
 echo ' echo 'Update Started'' >> update.sh
 echo ' ' >> update.sh
 echo '#Removing The .jar File' >> update.sh
 echo ' rm -rf NukkitX.jar' >> update.sh
 echo ' ' >> update.sh
 echo '#Downloading The New .Jar' >> update.sh
 echo ' wget -o https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/pr%252Fnew-raknet/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar' >> update.sh
 echo '#Rename' >> update.sh
 echo ' mv nukkit-1.0-SNAPSHOT.jar NukkitX.jar' >> update.sh
 echo ' ' >> update.sh
 echo '#Complete Update' >> update.sh
 echo ' echo 'Complete Update'' >> update.sh
 
#Back To Home
 cd ~