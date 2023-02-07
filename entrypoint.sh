RED="\e[31m"
CYAN="\e[94"
STOP="\e[0m"

printf "${CYAN}"
figlet -t -f bigmono9 "Beta VIP"
printf "${STOP}"
neofetch --stdout
printf "\n\n"
printf "${RED} SILAHKAN MASUKKAN COMMAND !!${STOP}"
echo ""
cd /home/container
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
${MODIFIED_STARTUP}
