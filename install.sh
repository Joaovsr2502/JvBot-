#!bin/bash

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"[$RED!$YELLOW] JvBoots Irá instalar o bot OK? [Y/n]"
read inp
if [ "$inp" = "Y" ]; then
    pkg update
    pkg upgrade
    pkg install ruby
    gem install lolcat
    pkg install nodejs 
    pkg install libwebp 
    pkg install ffmpeg 
    pkg install wget 
    pkg install tesseract 
    pkg install graphicsmagick 
    pkg install imagemagick 
    npm install
    npm install pm2 -g
    echo $GREEN"JvBoots está pronto, se divirta criador :)"
fi
if [ "$inp" = "n" ]; then
    echo $RED"Jae então, se divirta tentando descobrir as dependências sozinho e manualmente :)"
    exit
fi

