#!/bin/bash
  apt install openjdk-8-jdk openjdk-8-jre wget
  apt install default-jdk default-jre wget
    
    pacman -S jdk8-openjdk jre-openjdk wget
      
      rm -rf *
        
        wget -O nukkit.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar
          
          echo '#!/bin/bash' >> run.sh
          echo 'echo 'Starting The Server'' >> run.sh
          echo 'java -Xmx1024M -Xms256M -jar nukkit.jar' >> run.sh
          
          echo '#!/bin/bash' >> update.sh
          echo 'echo 'Starting The Update'' >> update.sh
          echo 'rm -rf nukkit.jar' >> update.sh
          echo 'wget -O nukkit.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar' >> update.sh
          echo 'echo 'Update Complete'' >> update.sh
            
            cd
              
              mv Ansi NukkitX
          
          echo 'Use The cd ../NukkitX && ./run.sh'           