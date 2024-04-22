#!/bin/bash
echo "

    ___    _   ______  _   ____  ____  _______  __  _______
   /   |  / | / / __ \/ | / /\ \/ /  |/  / __ \/ / / / ___/
  / /| | /  |/ / / / /  |/ /  \  / /|_/ / / / / / / /\__ \ 
 / ___ |/ /|  / /_/ / /|  /   / / /  / / /_/ / /_/ /___/ / 
/_/  |_/_/ |_/\____/_/ |_/   /_/_/  /_/\____/\____//____/  
                                                           
" | lolcat

echo "loading" 

git clone https://github.com/pvanfas/socialphish.git

cd socialphish || echo "no file detected"
bash socialphish.sh
