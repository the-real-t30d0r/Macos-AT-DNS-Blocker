#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo -e "${RED}*********************************************************************************${NOCOLOR}"
echo -e "${GREEN}# --------------- DNS-Tracker-Add Blocker for host file MacOS ----------------- #${NOCOLOR}"
echo -e "${RED}----------------------------- by Teodor Cucu ----------------------------------${NOCOLOR}"
echo -e "${GREEN}#----- thx to the commmunity for maintaining the hosts files up-to-date <3 ---- #${NOCOLOR}"
echo -e "${RED}********************************************************************************${NOCOLOR}"

echo -e "${RED}Create a tmp dir${NOCOLOR}"
mkdir tmp
cd tmp
echo -e "${GREEN}DONE.${NOCOLOR}"

declare -a StringArray=(
"https://winhelp2002.mvps.org/hosts.txt" 
"https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" 
"http://hostsfile.org/Downloads/hosts.txt" 
 "http://hostsfile.mine.nu/Hosts.txt" 
 "https://adaway.org/hosts.txt" 
 )
 
counter=1

echo -e "${RED}Copy the content of the original hosts file to the new hosts file${NOCOLOR}"

printf '%b\n' "$(cat /etc/hosts)" >> hosts
echo -e "${GREEN}DONE.${NOCOLOR}"

for val in ${StringArray[@]}; do
   echo -e "${RED}Downloading the hosts file from ${NOCOLOR}"$val
   wget -nv -O hosts.$counter.txt $val
   echo -e "${GREEN}DONE.${NOCOLOR}"
   sed -i '' '/127.0.0.1.localhost/d' hosts.$counter.txt
   sed -i '' '/::1  localhost/d' hosts.$counter.txt
   sed -i '' '/255.255.255.255 broadcasthost/d' hosts.$counter.txt
   sed -i '' '/::1 localhost/d' hosts.$counter.txt
   sed -i '' '/::1 ip6-localhost/d' hosts.$counter.txt
   sed -i '' '/::1 ip6-loopback/d' hosts.$counter.txt
   sed -i '' '/::1 ip6-loopback/d' hosts.$counter.txt
   sed -i '' '/fe80::1%lo0 localhost/d' hosts.$counter.txt
   sed -i '' '/ff00::0 ip6-localnet/d' hosts.$counter.txt
   sed -i '' '/ff00::0 ip6-mcastprefix/d' hosts.$counter.txt
   sed -i '' '/ff02::1 ip6-allnodes/d' hosts.$counter.txt
   sed -i '' '/ff02::2 ip6-allrouters/d' hosts.$counter.txt
   sed -i '' '/ff02::3 ip6-allhosts/d' hosts.$counter.txt
   printf '%b\n' "$(cat hosts.$counter.txt)" >> hosts
   rm -r hosts.$counter.txt
   counter=$((counter+1))
   
done

echo -e "${RED}Backup the old hosts file (hosts.bak)${NOCOLOR}"
cp /etc/hosts /etc/hosts.bak
echo -e "${GREEN}DONE.${NOCOLOR}"

echo -e "${RED}Copy the new hosts file${NOCOLOR}"
cp hosts /etc/hosts
echo -e "${GREEN}DONE.${NOCOLOR}"

echo -e "${RED}Flush DNS${NOCOLOR}"
killall -HUP mDNSResponder
echo -e "${GREEN}DONE.${NOCOLOR}"

echo -e "${RED}Remove the created tmp dir${NOCOLOR}"
cd ..
rm -r tmp