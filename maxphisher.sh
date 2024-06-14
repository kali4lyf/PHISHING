#!/bin/bash

# Function to check if running on Termux
is_termux() {
    if [ -f "/data/data/com.termux/files/usr/bin" ]; then
        return 0
    else
        return 1
    fi
}

# Function to print text in red color
print_red() {
    echo -e "\033[91m$1\033[0m"
}

# Check if the script is running as root or on Termux
if ! is_termux && [ "$EUID" -ne 0 ]; then
    print_red "Please run this script as root"
    exit 1
fi

# Update, upgrade, and install pip3 and lolcat based on the environment
if is_termux; then
    pkg update
    pkg upgrade -y
    pkg install python
    pkg install python3-pip
    pip install lolcat
    pkg install git
else
    sudo apt update
    sudo apt upgrade -y
    sudo apt install git
    sudo apt install lolcat -y
    sudo apt install python3-pip -y
fi

# ASCII art
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
