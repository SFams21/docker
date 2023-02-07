RED="\e[31m"
CYAN="\e[94"
STOP="\e[0m"

printf "${CYAN}"
figlet -t "RIYAN SIPAYUNG"
printf "${STOP}"
neofetch --stdout
printf "\n\n"
printf "\n\n"
node -v
printf "\n\n"
printf "\n\n"
printf "${RED} VIP DOCKER EGG RIYAN SIPAYUNG !!${STOP}"
echo ""
cd /home/container
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
${MODIFIED_STARTUP}
