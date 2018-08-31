#!/usr/bin/env bash
#CUrl HOst CHecker
#Coded by: @laztname <- find me on telegram :3
#Remove a credit doesn't make you look like coder --@ytyao xD

check() {
url=`curl -s $i --connect-timeout 3 -A "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"`
printf "\r[i] Checking host $i              "
 if [[ $url = *"404"* ]] || [[ $url = *"404"* ]] || [[ $url = *"301"* ]] || [[ $url == *"500"* ]] || [[ $url == *"html"* ]]; then
    printf "$i\n" >> hostup.txt
 elif [[ $url == "" ]]; then
 	printf "$i\n" >> hostdie.txt
 else
 	printf "$i\n" >> hostup.txt
 fi
}

if [[ -f $1 ]]; then
	clear
    echo "+-------------------------------+"
    echo "|       CUrl HOst CHecker       |"
    echo "|  created with <3 by laztname  |"
    echo "+-------------------------------+"

    echo "[!] Total List : `wc -l $1`"

    for i in `cat $1`;
      do check; sleep 0.1
    done
    printf "\n[i] Done, check it at hostup.txt\n"
else
	printf "[!] Filemu mana mas?\n"
    printf "[i] Usage $0 domain_list.txt\n"
fi
