#Linux Bin / Bash
 #!/bin/bash

#Rename
 mv ~/NukkitX-Installer.git NukkitX-Installer

#Installing Java
 #On ArchLinux
  sudo pacman --sync jdk8-openjdk jre8-openjdk
  sudo archlinux-java set java-8-openjdk

 #On Ubuntu/Kali
  sudo apt-get install openjdk-11-jdk openjdk-11-jre

 #On Debian
  sudo apt-get install defualt-jdk default-jre

#Instaling Wget
 sudo pacman --sync wget
 sudo apt-get install wget

#Creating the Server Folder
 mkdir ~/NukkitX-Server

#Moving to the Server Folder
 cd ~/NukkitX-Server
 
#Removing the installation folder
 rm ~/NukkitX-Installer

#Getting .Jar
 wget -q -O NukkitX.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/2.0/lastSuccessfulBuild/artifact/target/Nukkit.jar
 
#Creating the Startup File
 echo '#Linux Bin / Bash' >> start.sh
 echo ' #!/bin/bash' >> start.sh
 echo '' >> start.sh
 echo '#Startup Message' >> start.sh
 echo ' echo 'Starting Server'' >> start.sh
 echo '' >> start.sh
 echo '#Starting Java' >> start.sh
 echo ' java -Xmx1024M -Xms1024M -jar NukkitX.jar' >> start.sh
 echo '' >> start.sh
 echo '#Stopping Server Message' >> start.sh
 echo ' echo 'Stopping Server''
 
#Creating Update File
 echo '#Linux Bin / Bash' >> update.sh
 echo ' #!/bin/bash' >> update.sh
echo ''
echo '#Update Started Message'
echo ' echo 'Update Started''
 echo '' >> update.sh
 echo '#Replacing .Jar' >> update.sh
 echo ' wget -q -O NukkitX.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/2.0/lastSuccessfulBuild/artifact/target/Nukkit.jar' >> update.sh
 echo '' >> update.sh
 echo '#Update Complete Message'
 echo ' echo 'Update Complete'
 
#Returning To / Home
 cd ~