#!/bin/bash

echo '

    __  ___                 __    _      __             
   /  |/  /___ __  ______  / /_  (_)____/ /_  ___  _____
  / /|_/ / __ `/ |/_/ __ \/ __ \/ / ___/ __ \/ _ \/ ___/
 / /  / / /_/ />  </ /_/ / / / / (__  ) / / /  __/ /    
/_/  /_/\__,_/_/|_/ .___/_/ /_/_/____/_/ /_/\___/_/     
                 /_/                                    
' | lolcat

echo "loading"

pip3 install maxphisher --break-system-packages

maxphisher
